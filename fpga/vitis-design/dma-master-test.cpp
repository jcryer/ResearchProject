#include <stdio.h>
#include <string.h>
#include <math.h>

#define MAX_QUAD 50

float calcInvSqRoot( float n ) {

   const float threehalfs = 1.5F;
   float y = n;

   long i = * ( long * ) &y;

   i = 0x5f3759df - ( i >> 1 );
   y = * ( float * ) &i;

   y = y * ( threehalfs - ( (n * 0.5F) * y * y ) );

   return y;
}


void dma_master_test(volatile float *arr, int num_quads){
	#pragma HLS INTERFACE m_axi port=arr depth=514 offset=slave
	#pragma HLS INTERFACE s_axilite port=num_quads
	#pragma HLS INTERFACE s_axilite port=return

	float buff[(MAX_QUAD * 10) + 14];
	float t_finals[MAX_QUAD] = { 0.0 };

	memcpy(buff, (const float*)arr, ((MAX_QUAD * 10) + 14)*sizeof(float));

	float px = buff[8];
	float py = buff[9];
	float pz = buff[10];
	float dx = buff[11];
	float dy = buff[12];
	float dz = buff[13];

	int x;


	for (x = 0; x < num_quads; x++) {
		#pragma HLS PIPELINE II=1
		#pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_QUAD
		int mult = x * 10;
		float a = buff[14 + mult];
		float b = buff[15 + mult];
		float c = buff[16 + mult];
		float d = buff[17 + mult];
		float e = buff[18 + mult];
		float f = buff[19 + mult];
		float g = buff[20 + mult];
		float h = buff[21 + mult];
		float i = buff[22 + mult];
		float j = buff[23 + mult];

		float A = (a * dx * dx) +
					(2 * b * dx * dy) +
					(2 * c * dx * dz) +
					(e * dy * dy) +
					(2 * f * dy * dz) +
					(h * dz * dz);

		float B = 2 * (
				(a * px * dx) +
				(b * (px * dy + dx * py)) +
				(c * (px * dz + dx * pz)) +
				(d * dx) +
				(e * py * dy) +
				(f * (py * dz + dy * pz)) +
				(g * dy) +
				(h * pz * dz) +
				(i * dz)
			);

		float C = (a * px * px) +
				(2 * b * px * py) +
				(2 * c * px * pz) +
				(2 * d * px) +
				(e * py * py) +
				(2 * f * py * pz) +
				(2 * g * py) +
				(h * pz * pz) +
				(2 * i * pz) +
				(j);

		if (A == 0) {
			continue;
		}

		float disc = (B * B) - (4 * A * C);

		if (disc < 0) {
			continue;
		}

		float ds = sqrt(disc);

		float t0 = (-B - ds) / (2 * A);
		float t1 = (-B + ds) / (2 * A);

		if (t1 < 0.0008) {
			continue;
		}

		if (t0 > 0.0008) {
			t_finals[x] = t0;
			continue;
		}
		else {
			t_finals[x] = t1;
			continue;
		}
	}

	int success_index = -1;
	float t_final = 1000000.1;

	for (x = 0; x < num_quads; x++) {
		#pragma HLS LOOP_TRIPCOUNT min=0 max=MAX_QUAD
		if (t_finals[x] < t_final && t_finals[x] != 0) {
			t_final = t_finals[x];
			success_index = x;
		}
	}


	if (success_index >= 0) {
		int mult = success_index * 10;
		float pox = (px + t_final * dx);
		float poy = (py + t_final * dy);
		float poz = (pz + t_final * dz);

		float n_x = (buff[14 + mult] * pox + buff[15 + mult] * poy + buff[16 + mult] * poz + buff[17 + mult]);
		float n_y = (buff[15 + mult] * pox + buff[18 + mult] * poy + buff[19 + mult] * poz + buff[20 + mult]);
		float n_z = (buff[16 + mult] * pox + buff[19 + mult] * poy + buff[21 + mult] * poz + buff[22 + mult]);

		float mod = calcInvSqRoot((n_x * n_x) + (n_y * n_y) + (n_z * n_z));
//		float mod = sqrt((n_x * n_x) + (n_y * n_y) + (n_z * n_z));
		buff[0] = t_final;

		buff[1] = pox;
		buff[2] = poy;
		buff[3] = poz;
//		buff[4] = n_x / mod;
//		buff[5] = n_y / mod;
//		buff[6] = n_z / mod;
		buff[4] = n_x * mod;
		buff[5] = n_y * mod;
		buff[6] = n_z * mod;
		buff[7] = success_index;


	}
	else {
		buff[0] = -1;
	}

	memcpy((float *)arr, buff, 8*sizeof(float)); // copies the answers into "out_buff" *only*
	return;
}


//
//#include <stdio.h>
//#include <string.h>
//#include <hls_math.h>
//#include <ap_fixed.h>
//
//void dma_master_test(volatile float *arr, volatile float *out, int num_quads){
//	#pragma HLS INTERFACE m_axi port=arr depth=50 offset=slave
//	#pragma HLS INTERFACE m_axi port=out depth=50 offset=slave
//	#pragma HLS INTERFACE s_axilite port=num_quads
//	#pragma HLS INTERFACE s_axilite port=return
//
//	int ray_offset = 6;
//	int x;
//	float buff[500 + ray_offset];
//	float out_buff[9];
//
//	memcpy(buff, (const float*)arr, (6 + (num_quads * 10))*sizeof(float));
//
//	ap_fixed<48, 32> px = buff[0];
//	ap_fixed<48, 32> py = buff[1];
//	ap_fixed<48, 32> pz = buff[2];
//	ap_fixed<48, 32> dx = buff[3];
//	ap_fixed<48, 32> dy = buff[4];
//	ap_fixed<48, 32> dz = buff[5];
//
//	//memcpy creates a burst access to memory
//	//multiple calls of memcpy cannot be pipelined and will be scheduled sequentially
//	//memcpy requires a local buffer to store the results of the memory transaction
//
//	bool hit = false;
//	ap_fixed<48, 32> t_final = 1000000.987654321;
//	int what = -1;
//
//	for(x = 0; x < num_quads; x++) {
//		ap_fixed<48, 32> a = buff[ray_offset + x * 10];
//		ap_fixed<48, 32> b = buff[ray_offset + x * 10 + 1];
//		ap_fixed<48, 32> c = buff[ray_offset + x * 10 + 2];
//		ap_fixed<48, 32> d = buff[ray_offset + x * 10 + 3];
//		ap_fixed<48, 32> e = buff[ray_offset + x * 10 + 4];
//		ap_fixed<48, 32> f = buff[ray_offset + x * 10 + 5];
//		ap_fixed<48, 32> g = buff[ray_offset + x * 10 + 6];
//		ap_fixed<48, 32> h = buff[ray_offset + x * 10 + 7];
//		ap_fixed<48, 32> i = buff[ray_offset + x * 10 + 8];
//		ap_fixed<48, 32> j = buff[ray_offset + x * 10 + 9];
//
//		ap_fixed<48, 32> A = (a * hls::pow(dx, 2)) +
//		    		(2 * b * dx * dy) +
//					(2 * c * dx * dz) +
//					(e * hls::pow(dy, 2)) +
//					(2 * f * dy * dz) +
//					(h * hls::pow(dz, 2));
//
//		ap_fixed<48, 32> B = 2 * (
//				(a * px * dx) +
//				(b * (px * dy + dx * py)) +
//				(c * (px * dz + dx * pz)) +
//				(d * dx) +
//				(e * py * dy) +
//				(f * (py * dz + dy * pz)) +
//				(g * dy) +
//				(h * pz * dz) +
//				(i * dz)
//			);
//
//		ap_fixed<48, 32> C = (a * hls::pow(px, 2)) +
//				(2 * b * px * py) +
//				(2 * c * px * pz) +
//				(2 * d * px) +
//				(e * hls::pow(py, 2)) +
//				(2 * f * py * pz) +
//				(2 * g * py) +
//				(h * hls::pow(pz, 2)) +
//				(2 * i * pz) +
//				(j);
//
//		if (A == 0) {
//			continue;
//		}
//
//		ap_fixed<48, 32> disc = hls::pow(B, 2) - (4 * A * C);
//
//		if (disc < 0) {
//			continue;
//		}
//
//		ap_fixed<48, 32> ds = hls::sqrt(disc);
//
//		ap_fixed<48, 32> t0 = (-B - ds) / (2 * A);
//		ap_fixed<48, 32> t1 = (-B + ds) / (2 * A);
//
//		if (t1 < 0.0008) {
//			continue;
//		}
//
//
//		// hit: 0
//		// what: 1
//		// t: 2
//		// position: 3, 4, 5
//		// normal: 6, 7, 8
//
//		if (t0 > 0.0008) {
//			if (t_final < t0) {
//				continue;
//			}
//			ap_fixed<48, 32> pox = (px + t0 * dx);
//			ap_fixed<48, 32> poy = (py + t0 * dy);
//			ap_fixed<48, 32> poz = (pz + t0 * dz);
//
//			ap_fixed<48, 32> n_x = (a * pox + b * poy + c * poz + d);
//			ap_fixed<48, 32> n_y = (b * pox + e * poy + f * poz + g);
//			ap_fixed<48, 32> n_z = (c * pox + f * poy + h * poz + i);
//
//			ap_fixed<48, 32> mod = hls::sqrt(hls::pow(n_x, 2) + hls::pow(n_y, 2) + hls::pow(n_z, 2));
//
//			hit = true;
//			t_final = t0;
//			what = x;
//
//
//			out_buff[3] = pox;
//			out_buff[4] = poy;
//			out_buff[5] = poz;
//
//			out_buff[6] = n_x / mod;
//			out_buff[7] = n_y / mod;
//			out_buff[8] = n_z / mod;
//
//			continue;
//
//		}
//
//		if (t_final < t1) {
//			continue;
//		}
//		ap_fixed<48, 32> pox = (px + t1 * dx);
//		ap_fixed<48, 32> poy = (py + t1 * dy);
//		ap_fixed<48, 32> poz = (pz + t1 * dz);
//
//		ap_fixed<48, 32> n_x = (a * pox + b * poy + c * poz + d);
//		ap_fixed<48, 32> n_y = (b * pox + e * poy + f * poz + g);
//		ap_fixed<48, 32> n_z = (c * pox + f * poy + h * poz + i);
//
//		ap_fixed<48, 32> mod = hls::sqrt(hls::pow(n_x, 2) + hls::pow(n_y, 2) + hls::pow(n_z, 2));
//
//		hit = true;
//
//		t_final = t1;
//		what = x;
//
//		out_buff[3] = pox;
//		out_buff[4] = poy;
//		out_buff[5] = poz;
//
//		out_buff[6] = n_x / mod;
//		out_buff[7] = n_y / mod;
//		out_buff[8] = n_z / mod;
//
//	}
//
//
//	if (hit) {
//		out_buff[0] = 1;
//	}
//	else {
//		out_buff[0] = 0;
//	}
//	out_buff[1] = what;
//	out_buff[2] = t_final;
//
//	memcpy((float *)out, out_buff, 9*sizeof(float)); // copies the answers into "out_buff" *only*
//}
