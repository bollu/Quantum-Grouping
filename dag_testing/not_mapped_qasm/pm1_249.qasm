OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
creg c[13];
u1(1) q[1];
u1(1) q[0];
u1(1) q[10];
u1(1) q[7];
u1(1) q[12];
u1(1) q[11];
u1(1) q[13];
u1(1) q[9];
u1(1) q[8];
u1(1) q[5];
u1(7) q[3];
u1(7) q[6];
cx q[0],q[1];
u1(4) q[10];
u1(7) q[5];
u1(4) q[7];
u1(4) q[13];
u1(4) q[12];
u1(4) q[11];
u1(4) q[8];
u1(4) q[9];
cx q[2],q[3];
u1(1) q[0];
u1(7) q[1];
u1(7) q[10];
cx q[4],q[5];
u1(7) q[7];
u1(7) q[13];
u1(7) q[12];
u1(7) q[11];
u1(7) q[8];
u1(7) q[9];
u1(7) q[0];
u1(4) q[1];
u1(7) q[0];
u1(7) q[1];
swap q[0],q[1];
swap q[1],q[2];
swap q[2],q[3];
swap q[3],q[4];
swap q[4],q[5];
cx q[6],q[5];
cx q[7],q[6];
swap q[5],q[6];
cx q[6],q[7];
u1(8) q[5];
cx q[6],q[5];
u1(7) q[7];
u1(8) q[6];
u1(8) q[5];
swap q[6],q[7];
cx q[6],q[5];
cx q[7],q[6];
swap q[6],q[7];
cx q[5],q[6];
u1(4) q[7];
u1(4) q[5];
u1(4) q[7];
u1(7) q[6];
u1(7) q[5];
u1(7) q[7];
swap q[4],q[5];
swap q[3],q[4];
swap q[2],q[3];
cx q[2],q[1];
cx q[3],q[2];
u1(8) q[1];
swap q[1],q[2];
cx q[3],q[2];
u1(7) q[1];
u1(8) q[3];
u1(8) q[2];
cx q[1],q[2];
swap q[2],q[3];
cx q[2],q[1];
cx q[3],q[2];
u1(4) q[1];
u1(4) q[3];
u1(4) q[1];
u1(7) q[2];
u1(7) q[3];
u1(7) q[1];
cx q[3],q[4];
swap q[4],q[5];
cx q[4],q[3];
u1(8) q[5];
cx q[4],q[5];
u1(7) q[3];
u1(8) q[4];
u1(8) q[5];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
swap q[3],q[4];
cx q[5],q[4];
u1(4) q[3];
u1(7) q[3];
u1(7) q[4];
u1(7) q[5];
cx q[3],q[2];
cx q[5],q[4];
swap q[1],q[2];
swap q[5],q[6];
cx q[2],q[3];
swap q[6],q[7];
cx q[1],q[2];
u1(8) q[3];
swap q[2],q[3];
cx q[1],q[2];
u1(7) q[3];
u1(8) q[1];
u1(8) q[2];
cx q[3],q[2];
swap q[1],q[2];
cx q[2],q[3];
cx q[1],q[2];
u1(4) q[3];
u1(7) q[3];
u1(7) q[2];
u1(7) q[1];
swap q[3],q[4];
cx q[1],q[2];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(8) q[4];
swap q[4],q[5];
cx q[6],q[5];
u1(7) q[4];
u1(8) q[6];
u1(8) q[5];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(4) q[4];
u1(4) q[6];
u1(7) q[5];
u1(4) q[4];
u1(7) q[6];
u1(7) q[4];
swap q[5],q[6];
swap q[4],q[5];
swap q[6],q[7];
swap q[3],q[4];
swap q[5],q[6];
swap q[2],q[3];
swap q[6],q[7];
cx q[2],q[1];
swap q[7],q[8];
cx q[3],q[2];
u1(8) q[1];
swap q[8],q[9];
swap q[1],q[2];
cx q[3],q[2];
u1(7) q[1];
u1(8) q[3];
u1(8) q[2];
cx q[1],q[2];
swap q[2],q[3];
cx q[2],q[1];
cx q[3],q[2];
u1(4) q[1];
u1(4) q[3];
u1(4) q[1];
u1(7) q[2];
u1(7) q[3];
u1(7) q[1];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
u1(8) q[5];
swap q[4],q[5];
cx q[3],q[4];
u1(7) q[5];
u1(8) q[3];
u1(8) q[4];
cx q[5],q[4];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
u1(4) q[5];
u1(7) q[5];
u1(7) q[4];
u1(7) q[3];
swap q[4],q[5];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[5];
swap q[1],q[2];
cx q[2],q[3];
cx q[1],q[2];
u1(8) q[3];
swap q[2],q[3];
cx q[1],q[2];
u1(7) q[3];
u1(8) q[1];
u1(8) q[2];
cx q[3],q[2];
swap q[1],q[2];
cx q[2],q[3];
cx q[1],q[2];
u1(4) q[3];
u1(7) q[3];
u1(7) q[2];
u1(7) q[1];
swap q[3],q[4];
cx q[1],q[2];
swap q[4],q[5];
cx q[5],q[6];
swap q[6],q[7];
cx q[6],q[5];
cx q[7],q[6];
u1(8) q[5];
swap q[5],q[6];
cx q[7],q[6];
u1(7) q[5];
u1(8) q[7];
u1(8) q[6];
cx q[5],q[6];
swap q[6],q[7];
cx q[6],q[5];
cx q[7],q[6];
u1(4) q[5];
u1(4) q[7];
u1(4) q[5];
u1(7) q[6];
u1(7) q[7];
u1(7) q[5];
swap q[6],q[7];
swap q[5],q[6];
swap q[4],q[5];
swap q[3],q[4];
swap q[2],q[3];
cx q[2],q[1];
cx q[3],q[2];
u1(8) q[1];
swap q[1],q[2];
cx q[3],q[2];
u1(7) q[1];
u1(8) q[3];
u1(8) q[2];
cx q[1],q[2];
swap q[2],q[3];
cx q[2],q[1];
cx q[3],q[2];
u1(4) q[1];
u1(4) q[3];
u1(4) q[1];
u1(7) q[2];
u1(7) q[3];
u1(7) q[1];
cx q[3],q[4];
swap q[4],q[5];
cx q[4],q[3];
u1(8) q[5];
cx q[4],q[5];
u1(7) q[3];
u1(8) q[4];
u1(8) q[5];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
swap q[3],q[4];
cx q[5],q[4];
u1(4) q[3];
u1(7) q[3];
u1(7) q[4];
u1(7) q[5];
cx q[3],q[2];
cx q[5],q[4];
swap q[1],q[2];
cx q[2],q[3];
cx q[1],q[2];
u1(8) q[3];
swap q[2],q[3];
cx q[1],q[2];
u1(7) q[3];
u1(8) q[1];
u1(8) q[2];
cx q[3],q[2];
swap q[1],q[2];
cx q[2],q[3];
cx q[1],q[2];
u1(4) q[3];
u1(7) q[3];
u1(7) q[2];
u1(7) q[1];
swap q[3],q[4];
cx q[1],q[2];
swap q[4],q[5];
swap q[5],q[6];
cx q[6],q[7];
cx q[5],q[6];
swap q[6],q[7];
cx q[6],q[5];
u1(8) q[7];
cx q[6],q[7];
u1(7) q[5];
u1(8) q[6];
u1(8) q[7];
swap q[5],q[6];
cx q[6],q[7];
cx q[5],q[6];
swap q[6],q[7];
cx q[6],q[5];
u1(4) q[7];
u1(4) q[6];
u1(7) q[5];
u1(4) q[7];
u1(7) q[6];
u1(7) q[7];
swap q[5],q[6];
swap q[7],q[8];
swap q[4],q[5];
swap q[8],q[9];
swap q[3],q[4];
swap q[2],q[3];
cx q[2],q[1];
cx q[3],q[2];
u1(8) q[1];
swap q[1],q[2];
cx q[3],q[2];
u1(7) q[1];
u1(8) q[3];
u1(8) q[2];
cx q[1],q[2];
swap q[2],q[3];
cx q[2],q[1];
cx q[3],q[2];
u1(4) q[1];
u1(4) q[3];
u1(4) q[1];
u1(7) q[2];
u1(7) q[3];
u1(7) q[1];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
u1(8) q[5];
swap q[4],q[5];
cx q[3],q[4];
u1(7) q[5];
u1(8) q[3];
u1(8) q[4];
cx q[5],q[4];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
u1(4) q[5];
u1(7) q[5];
u1(7) q[4];
u1(7) q[3];
swap q[4],q[5];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[5];
swap q[1],q[2];
swap q[5],q[6];
cx q[2],q[3];
swap q[6],q[7];
cx q[1],q[2];
u1(8) q[3];
swap q[2],q[3];
cx q[1],q[2];
u1(7) q[3];
u1(8) q[1];
u1(8) q[2];
cx q[3],q[2];
swap q[1],q[2];
cx q[2],q[3];
cx q[1],q[2];
u1(4) q[3];
u1(7) q[3];
u1(7) q[2];
u1(7) q[1];
swap q[3],q[4];
cx q[1],q[2];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(8) q[4];
swap q[4],q[5];
cx q[6],q[5];
u1(7) q[4];
u1(8) q[6];
u1(8) q[5];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(4) q[4];
u1(4) q[6];
u1(4) q[4];
u1(7) q[5];
u1(7) q[6];
u1(7) q[4];
swap q[5],q[6];
swap q[4],q[5];
swap q[6],q[7];
swap q[3],q[4];
swap q[5],q[6];
swap q[2],q[3];
cx q[2],q[1];
cx q[3],q[2];
u1(8) q[1];
swap q[1],q[2];
cx q[3],q[2];
u1(7) q[1];
u1(8) q[3];
u1(8) q[2];
cx q[1],q[2];
swap q[2],q[3];
cx q[2],q[1];
cx q[3],q[2];
u1(4) q[1];
u1(4) q[3];
u1(4) q[1];
u1(7) q[2];
u1(7) q[3];
u1(7) q[1];
cx q[3],q[4];
swap q[4],q[5];
cx q[4],q[3];
u1(8) q[5];
cx q[4],q[5];
u1(7) q[3];
u1(8) q[4];
u1(8) q[5];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
swap q[3],q[4];
cx q[5],q[4];
u1(4) q[3];
u1(7) q[3];
u1(7) q[4];
u1(7) q[5];
cx q[3],q[2];
cx q[5],q[4];
swap q[1],q[2];
cx q[2],q[3];
cx q[1],q[2];
u1(8) q[3];
swap q[2],q[3];
cx q[1],q[2];
u1(7) q[3];
u1(8) q[1];
u1(8) q[2];
cx q[3],q[2];
swap q[1],q[2];
cx q[2],q[3];
cx q[1],q[2];
u1(4) q[3];
u1(7) q[3];
u1(7) q[2];
u1(7) q[1];
swap q[3],q[4];
cx q[1],q[2];
swap q[4],q[5];
swap q[5],q[6];
cx q[6],q[7];
cx q[5],q[6];
swap q[6],q[7];
cx q[6],q[5];
u1(8) q[7];
cx q[6],q[7];
u1(7) q[5];
u1(8) q[6];
u1(8) q[7];
swap q[5],q[6];
cx q[6],q[7];
cx q[5],q[6];
swap q[6],q[7];
cx q[6],q[5];
u1(4) q[7];
u1(4) q[6];
u1(7) q[5];
swap q[7],q[8];
u1(7) q[6];
swap q[8],q[9];
swap q[5],q[6];
swap q[9],q[10];
swap q[4],q[5];
swap q[10],q[11];
swap q[3],q[4];
swap q[11],q[12];
swap q[2],q[3];
swap q[12],q[13];
cx q[2],q[1];
cx q[3],q[2];
u1(8) q[1];
swap q[1],q[2];
cx q[3],q[2];
u1(7) q[1];
u1(8) q[3];
u1(8) q[2];
cx q[1],q[2];
swap q[2],q[3];
cx q[2],q[1];
cx q[3],q[2];
u1(4) q[1];
u1(4) q[3];
u1(4) q[1];
u1(7) q[2];
u1(7) q[3];
u1(7) q[1];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
u1(8) q[5];
swap q[4],q[5];
cx q[3],q[4];
u1(7) q[5];
u1(8) q[3];
u1(8) q[4];
cx q[5],q[4];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
u1(4) q[5];
u1(7) q[5];
u1(7) q[4];
u1(7) q[3];
swap q[4],q[5];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[5];
swap q[1],q[2];
swap q[5],q[6];
cx q[2],q[3];
swap q[4],q[5];
cx q[1],q[2];
u1(8) q[3];
swap q[2],q[3];
cx q[1],q[2];
u1(7) q[3];
u1(8) q[1];
u1(8) q[2];
cx q[3],q[2];
swap q[1],q[2];
cx q[2],q[3];
cx q[1],q[2];
u1(4) q[3];
u1(7) q[3];
u1(7) q[2];
u1(7) q[1];
cx q[3],q[4];
cx q[1],q[2];
swap q[0],q[1];
swap q[2],q[3];
cx q[1],q[2];
swap q[3],q[4];
swap q[2],q[3];
cx q[2],q[1];
u1(8) q[3];
cx q[2],q[3];
u1(7) q[1];
u1(8) q[2];
u1(8) q[3];
swap q[1],q[2];
cx q[2],q[3];
cx q[1],q[2];
swap q[2],q[3];
cx q[2],q[1];
u1(4) q[3];
u1(4) q[2];
u1(4) q[3];
u1(7) q[1];
u1(7) q[2];
u1(7) q[3];
swap q[0],q[1];
cx q[2],q[1];
swap q[3],q[4];
cx q[3],q[2];
u1(8) q[1];
swap q[1],q[2];
cx q[3],q[2];
u1(7) q[1];
u1(8) q[3];
u1(8) q[2];
cx q[1],q[2];
swap q[2],q[3];
cx q[2],q[1];
cx q[3],q[2];
u1(4) q[1];
u1(4) q[3];
u1(4) q[1];
u1(7) q[2];
u1(7) q[3];
u1(7) q[1];
swap q[3],q[4];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
u1(8) q[6];
cx q[5],q[6];
u1(7) q[4];
u1(8) q[5];
u1(8) q[6];
swap q[4],q[5];
cx q[5],q[6];
cx q[4],q[5];
swap q[4],q[5];
cx q[6],q[5];
u1(4) q[4];
u1(7) q[4];
u1(7) q[5];
u1(7) q[6];
swap q[3],q[4];
cx q[6],q[5];
cx q[3],q[2];
swap q[1],q[2];
cx q[2],q[3];
cx q[1],q[2];
u1(8) q[3];
swap q[2],q[3];
cx q[1],q[2];
u1(7) q[3];
u1(8) q[1];
u1(8) q[2];
cx q[3],q[2];
swap q[1],q[2];
cx q[2],q[3];
cx q[1],q[2];
u1(4) q[3];
u1(7) q[3];
u1(7) q[2];
u1(7) q[1];
swap q[0],q[1];
swap q[1],q[2];
cx q[3],q[2];
cx q[0],q[1];
cx q[4],q[3];
swap q[2],q[3];
cx q[3],q[4];
u1(8) q[2];
cx q[3],q[2];
u1(7) q[4];
u1(8) q[3];
u1(8) q[2];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[3];
swap q[3],q[4];
cx q[2],q[3];
u1(4) q[4];
u1(4) q[2];
u1(7) q[3];
u1(4) q[4];
u1(7) q[2];
u1(7) q[4];
swap q[1],q[2];
cx q[1],q[0];
cx q[2],q[1];
u1(8) q[0];
swap q[0],q[1];
cx q[2],q[1];
u1(7) q[0];
u1(8) q[2];
u1(8) q[1];
cx q[0],q[1];
swap q[1],q[2];
cx q[1],q[0];
cx q[2],q[1];
u1(4) q[0];
u1(4) q[2];
u1(4) q[0];
u1(7) q[1];
u1(7) q[2];
u1(7) q[0];
swap q[2],q[3];
swap q[3],q[4];
swap q[1],q[2];
swap q[4],q[5];
swap q[2],q[3];
swap q[0],q[1];
cx q[5],q[6];
swap q[1],q[2];
cx q[4],q[5];
u1(8) q[6];
swap q[0],q[1];
swap q[5],q[6];
cx q[4],q[5];
u1(7) q[6];
u1(8) q[4];
u1(8) q[5];
cx q[6],q[5];
swap q[4],q[5];
cx q[5],q[6];
cx q[4],q[5];
u1(4) q[6];
u1(7) q[6];
u1(7) q[5];
u1(7) q[4];
swap q[5],q[6];
swap q[4],q[5];
cx q[4],q[3];
cx q[5],q[6];
swap q[2],q[3];
swap q[6],q[7];
cx q[3],q[4];
cx q[2],q[3];
u1(8) q[4];
swap q[3],q[4];
cx q[2],q[3];
u1(7) q[4];
u1(8) q[2];
u1(8) q[3];
cx q[4],q[3];
swap q[2],q[3];
cx q[3],q[4];
cx q[2],q[3];
u1(4) q[4];
u1(7) q[3];
u1(7) q[4];
u1(7) q[2];
swap q[1],q[2];
cx q[3],q[2];
swap q[3],q[4];
swap q[4],q[5];
swap q[2],q[3];
cx q[6],q[5];
swap q[3],q[4];
swap q[4],q[5];
cx q[5],q[6];
u1(8) q[4];
cx q[5],q[4];
u1(7) q[6];
u1(8) q[5];
u1(8) q[4];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
swap q[5],q[6];
cx q[4],q[5];
u1(4) q[6];
u1(4) q[4];
u1(4) q[6];
u1(7) q[5];
u1(7) q[4];
u1(7) q[6];
cx q[4],q[3];
swap q[6],q[7];
swap q[4],q[5];
u1(8) q[3];
cx q[6],q[5];
swap q[3],q[4];
swap q[4],q[5];
cx q[6],q[5];
u1(7) q[4];
u1(8) q[6];
u1(8) q[5];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(4) q[4];
u1(7) q[4];
u1(7) q[5];
u1(7) q[6];
cx q[4],q[3];
cx q[6],q[5];
swap q[6],q[7];
swap q[4],q[5];
cx q[6],q[5];
swap q[3],q[4];
swap q[4],q[5];
cx q[5],q[6];
u1(8) q[4];
cx q[5],q[4];
u1(7) q[6];
u1(8) q[5];
u1(8) q[4];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
swap q[4],q[5];
cx q[5],q[6];
u1(4) q[4];
u1(4) q[5];
u1(7) q[6];
u1(7) q[4];
u1(7) q[5];
swap q[6],q[7];
swap q[3],q[4];
cx q[5],q[6];
swap q[2],q[3];
cx q[4],q[5];
u1(8) q[6];
swap q[1],q[2];
swap q[5],q[6];
swap q[0],q[1];
cx q[4],q[5];
u1(7) q[6];
u1(8) q[4];
u1(8) q[5];
cx q[6],q[5];
swap q[4],q[5];
cx q[5],q[6];
cx q[4],q[5];
u1(4) q[6];
u1(7) q[6];
u1(7) q[5];
u1(7) q[4];
cx q[6],q[7];
cx q[4],q[5];
swap q[7],q[8];
cx q[7],q[6];
cx q[8],q[7];
u1(8) q[6];
swap q[6],q[7];
cx q[8],q[7];
u1(7) q[6];
u1(8) q[8];
u1(8) q[7];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
cx q[8],q[7];
u1(4) q[6];
u1(4) q[8];
u1(4) q[6];
u1(7) q[7];
u1(7) q[8];
u1(7) q[6];
swap q[7],q[8];
swap q[6],q[7];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(8) q[4];
swap q[4],q[5];
cx q[6],q[5];
u1(7) q[4];
u1(8) q[6];
u1(8) q[5];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(4) q[4];
u1(7) q[4];
u1(7) q[5];
u1(7) q[6];
swap q[4],q[5];
swap q[5],q[6];
swap q[6],q[7];
cx q[5],q[4];
cx q[7],q[8];
swap q[3],q[4];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
u1(8) q[8];
cx q[7],q[8];
u1(7) q[6];
u1(8) q[7];
u1(8) q[8];
swap q[6],q[7];
cx q[7],q[8];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
u1(4) q[8];
u1(4) q[7];
u1(7) q[6];
u1(4) q[8];
swap q[5],q[6];
u1(7) q[7];
u1(7) q[8];
cx q[4],q[5];
swap q[6],q[7];
swap q[8],q[9];
swap q[5],q[6];
swap q[9],q[10];
swap q[6],q[7];
swap q[4],q[5];
swap q[7],q[8];
swap q[5],q[6];
cx q[4],q[5];
cx q[7],q[6];
cx q[3],q[4];
u1(8) q[5];
cx q[8],q[7];
u1(8) q[6];
swap q[4],q[5];
swap q[6],q[7];
cx q[3],q[4];
u1(7) q[5];
cx q[8],q[7];
u1(7) q[6];
u1(8) q[3];
u1(8) q[4];
u1(8) q[8];
u1(8) q[7];
cx q[5],q[4];
cx q[6],q[7];
swap q[3],q[4];
swap q[7],q[8];
cx q[4],q[5];
cx q[7],q[6];
cx q[3],q[4];
u1(4) q[5];
cx q[8],q[7];
u1(4) q[6];
u1(1) q[3];
u1(4) q[8];
u1(7) q[5];
u1(7) q[4];
u1(4) q[6];
u1(7) q[7];
swap q[2],q[3];
u1(7) q[8];
u1(7) q[6];
swap q[3],q[4];
u1(7) q[2];
swap q[7],q[8];
cx q[4],q[5];
swap q[6],q[7];
cx q[2],q[3];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(8) q[4];
swap q[4],q[5];
cx q[6],q[5];
u1(7) q[4];
u1(8) q[6];
u1(8) q[5];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(4) q[4];
u1(4) q[6];
u1(4) q[4];
u1(7) q[5];
u1(7) q[6];
u1(7) q[4];
swap q[5],q[6];
swap q[4],q[5];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[3];
u1(8) q[2];
swap q[2],q[3];
cx q[4],q[3];
u1(7) q[2];
u1(8) q[4];
u1(8) q[3];
cx q[2],q[3];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[3];
u1(4) q[2];
u1(7) q[2];
u1(7) q[3];
u1(7) q[4];
swap q[2],q[3];
swap q[3],q[4];
swap q[4],q[5];
cx q[3],q[2];
cx q[5],q[6];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
u1(8) q[6];
cx q[5],q[6];
u1(7) q[4];
u1(8) q[5];
u1(8) q[6];
swap q[4],q[5];
cx q[5],q[6];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
u1(4) q[6];
u1(7) q[6];
u1(7) q[4];
u1(7) q[5];
swap q[6],q[7];
cx q[5],q[4];
cx q[7],q[8];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
u1(8) q[8];
cx q[7],q[8];
u1(7) q[6];
u1(8) q[7];
u1(8) q[8];
swap q[6],q[7];
cx q[7],q[8];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
u1(4) q[8];
u1(4) q[7];
u1(7) q[6];
swap q[8],q[9];
u1(7) q[7];
swap q[9],q[10];
swap q[6],q[7];
swap q[10],q[11];
cx q[6],q[5];
swap q[11],q[12];
swap q[4],q[5];
cx q[5],q[6];
u1(8) q[4];
cx q[5],q[4];
u1(7) q[6];
u1(8) q[5];
u1(8) q[4];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
swap q[5],q[6];
cx q[4],q[5];
u1(4) q[6];
u1(4) q[4];
u1(4) q[6];
u1(7) q[5];
u1(7) q[4];
u1(7) q[6];
cx q[4],q[3];
swap q[2],q[3];
cx q[3],q[4];
u1(8) q[2];
cx q[3],q[2];
u1(7) q[4];
u1(8) q[3];
u1(8) q[2];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[3];
swap q[3],q[4];
cx q[2],q[3];
u1(4) q[4];
u1(7) q[4];
u1(7) q[3];
u1(7) q[2];
cx q[4],q[5];
cx q[2],q[3];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(8) q[4];
swap q[4],q[5];
cx q[6],q[5];
u1(7) q[4];
u1(8) q[6];
u1(8) q[5];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(4) q[4];
u1(7) q[4];
u1(7) q[5];
u1(7) q[6];
swap q[4],q[5];
swap q[5],q[6];
cx q[6],q[7];
cx q[5],q[4];
swap q[7],q[8];
cx q[7],q[6];
cx q[8],q[7];
u1(8) q[6];
swap q[6],q[7];
cx q[8],q[7];
u1(7) q[6];
u1(8) q[8];
u1(8) q[7];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
cx q[8],q[7];
u1(4) q[6];
u1(4) q[8];
u1(4) q[6];
u1(7) q[7];
u1(7) q[8];
u1(7) q[6];
swap q[7],q[8];
swap q[5],q[6];
cx q[7],q[6];
swap q[4],q[5];
swap q[5],q[6];
cx q[6],q[7];
u1(8) q[5];
cx q[6],q[5];
u1(7) q[7];
u1(8) q[6];
u1(8) q[5];
swap q[6],q[7];
cx q[6],q[5];
cx q[7],q[6];
swap q[6],q[7];
cx q[5],q[6];
u1(4) q[7];
u1(4) q[5];
u1(4) q[7];
u1(7) q[6];
u1(7) q[5];
u1(7) q[7];
swap q[4],q[5];
swap q[3],q[4];
swap q[5],q[6];
cx q[3],q[2];
swap q[6],q[7];
cx q[4],q[3];
u1(8) q[2];
swap q[2],q[3];
cx q[4],q[3];
u1(7) q[2];
u1(8) q[4];
u1(8) q[3];
cx q[2],q[3];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[3];
u1(4) q[2];
u1(7) q[2];
u1(7) q[3];
u1(7) q[4];
swap q[2],q[3];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[2];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(8) q[4];
swap q[4],q[5];
cx q[6],q[5];
u1(7) q[4];
u1(8) q[6];
u1(8) q[5];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(4) q[4];
u1(7) q[4];
u1(7) q[5];
u1(7) q[6];
swap q[4],q[5];
swap q[5],q[6];
swap q[6],q[7];
cx q[5],q[4];
cx q[7],q[8];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
u1(8) q[8];
cx q[7],q[8];
u1(7) q[6];
u1(8) q[7];
u1(8) q[8];
swap q[6],q[7];
cx q[7],q[8];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
u1(4) q[8];
u1(4) q[7];
u1(4) q[8];
u1(7) q[6];
u1(7) q[7];
u1(7) q[8];
swap q[6],q[7];
cx q[6],q[5];
swap q[4],q[5];
cx q[5],q[6];
u1(8) q[4];
cx q[5],q[4];
u1(7) q[6];
u1(8) q[5];
u1(8) q[4];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
swap q[5],q[6];
cx q[4],q[5];
u1(4) q[6];
u1(4) q[4];
u1(4) q[6];
u1(7) q[5];
u1(7) q[4];
u1(7) q[6];
cx q[4],q[3];
swap q[2],q[3];
cx q[3],q[4];
u1(8) q[2];
cx q[3],q[2];
u1(7) q[4];
u1(8) q[3];
u1(8) q[2];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[3];
swap q[3],q[4];
cx q[2],q[3];
u1(4) q[4];
u1(7) q[4];
u1(7) q[3];
u1(7) q[2];
swap q[4],q[5];
swap q[3],q[4];
swap q[4],q[5];
swap q[5],q[6];
cx q[4],q[3];
cx q[6],q[7];
cx q[5],q[4];
swap q[7],q[8];
swap q[3],q[4];
cx q[7],q[6];
cx q[4],q[5];
u1(8) q[3];
cx q[8],q[7];
u1(8) q[6];
cx q[4],q[3];
u1(7) q[5];
swap q[6],q[7];
u1(8) q[4];
u1(8) q[3];
cx q[8],q[7];
u1(7) q[6];
swap q[4],q[5];
u1(8) q[8];
u1(8) q[7];
cx q[4],q[3];
cx q[6],q[7];
cx q[5],q[4];
swap q[7],q[8];
swap q[4],q[5];
cx q[7],q[6];
cx q[3],q[4];
u1(4) q[5];
cx q[8],q[7];
u1(4) q[6];
u1(7) q[4];
u1(4) q[5];
u1(7) q[3];
u1(4) q[8];
u1(4) q[6];
u1(7) q[7];
swap q[2],q[3];
u1(7) q[5];
u1(7) q[8];
cx q[4],q[3];
u1(7) q[6];
swap q[1],q[2];
swap q[7],q[8];
swap q[4],q[5];
swap q[6],q[7];
swap q[3],q[4];
cx q[6],q[5];
swap q[4],q[5];
cx q[5],q[6];
u1(8) q[4];
cx q[5],q[4];
u1(7) q[6];
u1(8) q[5];
u1(8) q[4];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
swap q[5],q[6];
cx q[4],q[5];
u1(4) q[6];
u1(7) q[6];
u1(7) q[5];
u1(7) q[4];
swap q[6],q[7];
cx q[4],q[5];
cx q[7],q[8];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
u1(8) q[8];
cx q[7],q[8];
u1(7) q[6];
u1(8) q[7];
u1(8) q[8];
swap q[6],q[7];
cx q[7],q[8];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
u1(4) q[8];
u1(4) q[7];
u1(7) q[6];
swap q[8],q[9];
u1(7) q[7];
swap q[6],q[7];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(8) q[4];
swap q[4],q[5];
cx q[6],q[5];
u1(7) q[4];
u1(8) q[6];
u1(8) q[5];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(4) q[4];
u1(7) q[4];
u1(7) q[5];
u1(7) q[6];
swap q[6],q[7];
swap q[5],q[6];
cx q[4],q[5];
cx q[7],q[6];
swap q[3],q[4];
cx q[2],q[3];
swap q[4],q[5];
swap q[3],q[4];
cx q[3],q[2];
u1(8) q[4];
cx q[3],q[4];
u1(7) q[2];
u1(8) q[3];
u1(8) q[4];
swap q[2],q[3];
cx q[3],q[4];
cx q[2],q[3];
swap q[2],q[3];
cx q[4],q[3];
u1(4) q[2];
u1(4) q[4];
u1(4) q[2];
u1(7) q[3];
u1(7) q[4];
u1(7) q[2];
swap q[4],q[5];
swap q[5],q[6];
swap q[3],q[4];
cx q[6],q[7];
swap q[2],q[3];
cx q[5],q[6];
u1(8) q[7];
swap q[1],q[2];
swap q[6],q[7];
cx q[5],q[6];
u1(7) q[7];
u1(8) q[5];
u1(8) q[6];
cx q[7],q[6];
swap q[5],q[6];
cx q[6],q[7];
cx q[5],q[6];
u1(4) q[7];
u1(7) q[7];
u1(7) q[6];
u1(7) q[5];
swap q[6],q[7];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[7];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
u1(8) q[5];
swap q[4],q[5];
cx q[3],q[4];
u1(7) q[5];
u1(8) q[3];
u1(8) q[4];
cx q[5],q[4];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
u1(4) q[5];
u1(4) q[3];
u1(7) q[4];
u1(4) q[5];
swap q[3],q[4];
u1(7) q[5];
u1(7) q[4];
cx q[2],q[3];
swap q[4],q[5];
cx q[1],q[2];
cx q[5],q[6];
swap q[2],q[3];
swap q[6],q[7];
cx q[2],q[1];
u1(8) q[3];
cx q[6],q[5];
u1(8) q[7];
cx q[2],q[3];
u1(7) q[1];
cx q[6],q[7];
u1(7) q[5];
u1(8) q[2];
u1(8) q[3];
u1(8) q[6];
u1(8) q[7];
swap q[1],q[2];
swap q[5],q[6];
cx q[2],q[3];
cx q[6],q[7];
cx q[1],q[2];
cx q[5],q[6];
swap q[1],q[2];
swap q[5],q[6];
cx q[3],q[2];
u1(4) q[1];
cx q[7],q[6];
u1(4) q[5];
u1(4) q[3];
u1(4) q[1];
u1(7) q[2];
u1(1) q[7];
u1(7) q[5];
u1(7) q[6];
u1(7) q[3];
u1(7) q[1];
u1(7) q[7];
cx q[6],q[5];
swap q[0],q[1];
swap q[6],q[7];
swap q[1],q[2];
swap q[5],q[6];
swap q[2],q[3];
swap q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
swap q[3],q[4];
cx q[3],q[2];
u1(8) q[4];
cx q[3],q[4];
u1(7) q[2];
u1(8) q[3];
u1(8) q[4];
swap q[2],q[3];
cx q[3],q[4];
cx q[2],q[3];
swap q[2],q[3];
cx q[4],q[3];
u1(4) q[2];
u1(4) q[4];
u1(4) q[2];
u1(7) q[3];
u1(7) q[4];
u1(7) q[2];
swap q[4],q[5];
swap q[5],q[6];
swap q[3],q[4];
cx q[6],q[7];
swap q[2],q[3];
cx q[5],q[6];
u1(8) q[7];
swap q[1],q[2];
swap q[6],q[7];
swap q[0],q[1];
cx q[5],q[6];
u1(7) q[7];
u1(8) q[5];
u1(8) q[6];
cx q[7],q[6];
swap q[5],q[6];
cx q[6],q[7];
cx q[5],q[6];
u1(4) q[7];
u1(7) q[7];
u1(7) q[6];
u1(7) q[5];
swap q[6],q[7];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[7];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
u1(8) q[5];
swap q[4],q[5];
cx q[3],q[4];
u1(7) q[5];
u1(8) q[3];
u1(8) q[4];
cx q[5],q[4];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
u1(4) q[5];
u1(7) q[5];
u1(7) q[4];
u1(7) q[3];
swap q[4],q[5];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[5];
swap q[1],q[2];
cx q[2],q[3];
cx q[1],q[2];
u1(8) q[3];
swap q[2],q[3];
cx q[1],q[2];
u1(7) q[3];
u1(8) q[1];
u1(8) q[2];
cx q[3],q[2];
swap q[1],q[2];
cx q[2],q[3];
cx q[1],q[2];
u1(4) q[3];
u1(4) q[1];
u1(7) q[2];
u1(7) q[3];
u1(7) q[1];
cx q[3],q[2];
swap q[1],q[2];
swap q[3],q[4];
cx q[2],q[3];
swap q[4],q[5];
swap q[3],q[4];
cx q[3],q[2];
u1(8) q[4];
cx q[3],q[4];
u1(7) q[2];
u1(8) q[3];
u1(8) q[4];
swap q[2],q[3];
cx q[3],q[4];
cx q[2],q[3];
swap q[2],q[3];
cx q[4],q[3];
u1(4) q[2];
u1(4) q[4];
u1(4) q[2];
u1(7) q[3];
u1(7) q[4];
u1(7) q[2];
swap q[4],q[5];
cx q[5],q[6];
swap q[6],q[7];
cx q[6],q[5];
u1(8) q[7];
cx q[6],q[7];
u1(7) q[5];
u1(8) q[6];
u1(8) q[7];
swap q[5],q[6];
cx q[6],q[7];
cx q[5],q[6];
swap q[5],q[6];
cx q[7],q[6];
u1(4) q[5];
u1(7) q[5];
u1(7) q[6];
u1(7) q[7];
swap q[4],q[5];
cx q[7],q[6];
cx q[4],q[3];
swap q[2],q[3];
cx q[3],q[4];
cx q[2],q[3];
u1(8) q[4];
swap q[3],q[4];
cx q[2],q[3];
u1(7) q[4];
u1(8) q[2];
u1(8) q[3];
cx q[4],q[3];
swap q[2],q[3];
cx q[3],q[4];
cx q[2],q[3];
u1(4) q[4];
u1(4) q[4];
u1(7) q[3];
u1(7) q[2];
u1(7) q[4];
cx q[2],q[3];
cx q[4],q[5];
swap q[1],q[2];
swap q[3],q[4];
u1(8) q[5];
cx q[2],q[3];
swap q[4],q[5];
swap q[3],q[4];
cx q[2],q[3];
u1(7) q[4];
u1(8) q[2];
u1(8) q[3];
cx q[4],q[3];
swap q[2],q[3];
cx q[3],q[4];
cx q[2],q[3];
u1(4) q[4];
u1(4) q[2];
u1(4) q[4];
u1(7) q[3];
u1(7) q[2];
u1(7) q[4];
cx q[2],q[1];
swap q[4],q[5];
swap q[2],q[3];
u1(8) q[1];
cx q[4],q[3];
swap q[1],q[2];
swap q[2],q[3];
cx q[4],q[3];
u1(7) q[2];
u1(8) q[4];
u1(8) q[3];
cx q[2],q[3];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[3];
u1(4) q[2];
u1(4) q[4];
u1(4) q[2];
u1(7) q[3];
u1(7) q[4];
u1(7) q[2];
swap q[4],q[5];
swap q[5],q[6];
swap q[3],q[4];
cx q[6],q[7];
swap q[2],q[3];
cx q[5],q[6];
u1(8) q[7];
swap q[6],q[7];
cx q[5],q[6];
u1(7) q[7];
u1(8) q[5];
u1(8) q[6];
cx q[7],q[6];
swap q[5],q[6];
cx q[6],q[7];
cx q[5],q[6];
u1(4) q[7];
u1(7) q[7];
u1(7) q[6];
u1(7) q[5];
swap q[6],q[7];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[7];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
u1(8) q[5];
swap q[4],q[5];
cx q[3],q[4];
u1(7) q[5];
u1(8) q[3];
u1(8) q[4];
cx q[5],q[4];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
u1(4) q[5];
u1(7) q[5];
u1(7) q[4];
u1(7) q[3];
swap q[4],q[5];
swap q[3],q[4];
swap q[2],q[3];
cx q[4],q[5];
cx q[2],q[1];
cx q[3],q[2];
swap q[1],q[2];
cx q[2],q[3];
u1(8) q[1];
cx q[2],q[1];
u1(7) q[3];
u1(8) q[2];
u1(8) q[1];
swap q[2],q[3];
cx q[2],q[1];
cx q[3],q[2];
swap q[1],q[2];
cx q[2],q[3];
u1(4) q[1];
u1(4) q[2];
u1(4) q[1];
u1(7) q[3];
u1(7) q[2];
u1(7) q[1];
swap q[2],q[3];
cx q[3],q[4];
swap q[4],q[5];
cx q[4],q[3];
u1(8) q[5];
cx q[4],q[5];
u1(7) q[3];
u1(8) q[4];
u1(8) q[5];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
swap q[3],q[4];
cx q[5],q[4];
u1(4) q[3];
u1(4) q[5];
u1(4) q[3];
u1(7) q[4];
u1(7) q[5];
u1(7) q[3];
cx q[5],q[6];
swap q[6],q[7];
cx q[6],q[5];
u1(8) q[7];
cx q[6],q[7];
u1(7) q[5];
u1(8) q[6];
u1(8) q[7];
swap q[5],q[6];
cx q[6],q[7];
cx q[5],q[6];
swap q[5],q[6];
cx q[7],q[6];
u1(4) q[5];
u1(7) q[5];
u1(7) q[6];
u1(7) q[7];
swap q[4],q[5];
swap q[5],q[6];
swap q[4],q[5];
swap q[3],q[4];
cx q[5],q[6];
cx q[3],q[2];
cx q[4],q[5];
swap q[1],q[2];
swap q[5],q[6];
cx q[2],q[3];
cx q[5],q[4];
u1(8) q[6];
cx q[1],q[2];
u1(8) q[3];
cx q[5],q[6];
u1(7) q[4];
swap q[2],q[3];
u1(8) q[5];
u1(8) q[6];
cx q[1],q[2];
u1(7) q[3];
swap q[4],q[5];
u1(8) q[1];
u1(8) q[2];
cx q[5],q[6];
cx q[3],q[2];
cx q[4],q[5];
swap q[1],q[2];
swap q[4],q[5];
cx q[2],q[3];
cx q[6],q[5];
u1(4) q[4];
cx q[1],q[2];
u1(4) q[3];
u1(7) q[5];
u1(7) q[4];
swap q[6],q[7];
u1(4) q[1];
u1(4) q[3];
u1(7) q[2];
cx q[5],q[6];
u1(7) q[1];
u1(7) q[3];
swap q[4],q[5];
swap q[1],q[2];
swap q[5],q[6];
swap q[2],q[3];
cx q[3],q[4];
swap q[4],q[5];
cx q[4],q[3];
u1(8) q[5];
cx q[4],q[5];
u1(7) q[3];
u1(8) q[4];
u1(8) q[5];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
swap q[3],q[4];
cx q[5],q[4];
u1(4) q[3];
u1(7) q[3];
u1(7) q[4];
u1(7) q[5];
swap q[2],q[3];
cx q[5],q[4];
cx q[2],q[1];
cx q[3],q[2];
swap q[1],q[2];
cx q[2],q[3];
u1(8) q[1];
cx q[2],q[1];
u1(7) q[3];
u1(8) q[2];
u1(8) q[1];
swap q[2],q[3];
cx q[2],q[1];
cx q[3],q[2];
swap q[1],q[2];
cx q[2],q[3];
u1(4) q[1];
u1(4) q[2];
u1(7) q[3];
u1(7) q[1];
u1(7) q[2];
swap q[2],q[3];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
u1(8) q[5];
swap q[4],q[5];
cx q[3],q[4];
u1(7) q[5];
u1(8) q[3];
u1(8) q[4];
cx q[5],q[4];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[4];
u1(4) q[5];
u1(7) q[5];
u1(7) q[4];
u1(7) q[3];
swap q[2],q[3];
swap q[3],q[4];
cx q[5],q[4];
cx q[2],q[3];
swap q[5],q[6];
swap q[6],q[7];
swap q[4],q[5];
cx q[8],q[7];
swap q[5],q[6];
swap q[6],q[7];
cx q[7],q[8];
u1(8) q[6];
cx q[7],q[6];
u1(7) q[8];
u1(8) q[7];
u1(8) q[6];
swap q[7],q[8];
cx q[7],q[6];
cx q[8],q[7];
swap q[7],q[8];
cx q[6],q[7];
u1(4) q[8];
u1(4) q[6];
u1(4) q[8];
u1(7) q[7];
u1(7) q[6];
u1(7) q[8];
swap q[5],q[6];
swap q[4],q[5];
swap q[6],q[7];
swap q[3],q[4];
swap q[5],q[6];
swap q[7],q[8];
cx q[3],q[2];
swap q[6],q[7];
cx q[4],q[3];
u1(8) q[2];
swap q[2],q[3];
cx q[4],q[3];
u1(7) q[2];
u1(8) q[4];
u1(8) q[3];
cx q[2],q[3];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[3];
u1(4) q[2];
u1(7) q[2];
u1(7) q[3];
u1(7) q[4];
swap q[2],q[3];
swap q[3],q[4];
cx q[4],q[5];
cx q[3],q[2];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(8) q[4];
swap q[4],q[5];
cx q[6],q[5];
u1(7) q[4];
u1(8) q[6];
u1(8) q[5];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(4) q[4];
u1(4) q[6];
u1(1) q[5];
u1(4) q[4];
u1(7) q[6];
u1(7) q[5];
u1(7) q[4];
swap q[3],q[4];
swap q[5],q[6];
cx q[5],q[4];
cx q[7],q[6];
swap q[2],q[3];
swap q[7],q[8];
swap q[3],q[4];
swap q[1],q[2];
swap q[8],q[9];
cx q[4],q[5];
u1(8) q[3];
swap q[6],q[7];
cx q[10],q[9];
swap q[7],q[8];
cx q[4],q[3];
u1(7) q[5];
swap q[8],q[9];
u1(8) q[4];
u1(8) q[3];
cx q[9],q[10];
u1(8) q[8];
swap q[4],q[5];
cx q[9],q[8];
u1(7) q[10];
cx q[4],q[3];
u1(8) q[9];
u1(8) q[8];
cx q[5],q[4];
swap q[9],q[10];
swap q[4],q[5];
cx q[9],q[8];
cx q[3],q[4];
u1(4) q[5];
cx q[10],q[9];
u1(7) q[3];
u1(7) q[5];
u1(7) q[4];
swap q[9],q[10];
cx q[2],q[3];
cx q[4],q[5];
cx q[8],q[9];
u1(4) q[10];
u1(4) q[8];
u1(4) q[10];
u1(7) q[9];
u1(7) q[8];
u1(7) q[10];
swap q[7],q[8];
swap q[6],q[7];
swap q[8],q[9];
swap q[5],q[6];
swap q[7],q[8];
swap q[9],q[10];
swap q[4],q[5];
swap q[8],q[9];
swap q[10],q[11];
swap q[3],q[4];
swap q[9],q[10];
cx q[3],q[2];
cx q[4],q[3];
u1(8) q[2];
swap q[2],q[3];
cx q[4],q[3];
u1(7) q[2];
u1(8) q[4];
u1(8) q[3];
cx q[2],q[3];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[3];
u1(4) q[2];
u1(4) q[4];
u1(4) q[2];
u1(7) q[3];
u1(7) q[4];
u1(7) q[2];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
u1(8) q[6];
cx q[5],q[6];
u1(7) q[4];
u1(8) q[5];
u1(8) q[6];
swap q[4],q[5];
cx q[5],q[6];
cx q[4],q[5];
swap q[4],q[5];
cx q[6],q[5];
u1(4) q[4];
u1(7) q[4];
u1(7) q[5];
u1(7) q[6];
cx q[4],q[3];
cx q[6],q[5];
swap q[2],q[3];
cx q[3],q[4];
cx q[2],q[3];
u1(8) q[4];
swap q[3],q[4];
cx q[2],q[3];
u1(7) q[4];
u1(8) q[2];
u1(8) q[3];
cx q[4],q[3];
swap q[2],q[3];
cx q[3],q[4];
cx q[2],q[3];
u1(4) q[4];
u1(7) q[4];
u1(7) q[3];
u1(7) q[2];
swap q[4],q[5];
cx q[2],q[3];
swap q[5],q[6];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
cx q[8],q[7];
u1(8) q[6];
swap q[6],q[7];
cx q[8],q[7];
u1(7) q[6];
u1(8) q[8];
u1(8) q[7];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
cx q[8],q[7];
u1(4) q[6];
u1(4) q[8];
u1(7) q[7];
u1(4) q[6];
u1(7) q[8];
u1(7) q[6];
swap q[7],q[8];
swap q[6],q[7];
swap q[5],q[6];
swap q[7],q[8];
swap q[4],q[5];
swap q[8],q[9];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[3];
u1(8) q[2];
swap q[2],q[3];
cx q[4],q[3];
u1(7) q[2];
u1(8) q[4];
u1(8) q[3];
cx q[2],q[3];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[3];
u1(4) q[2];
u1(4) q[4];
u1(4) q[2];
u1(7) q[3];
u1(7) q[4];
u1(7) q[2];
swap q[4],q[5];
cx q[5],q[6];
cx q[4],q[5];
u1(8) q[6];
swap q[5],q[6];
cx q[4],q[5];
u1(7) q[6];
u1(8) q[4];
u1(8) q[5];
cx q[6],q[5];
swap q[4],q[5];
cx q[5],q[6];
cx q[4],q[5];
u1(4) q[6];
u1(7) q[6];
u1(7) q[5];
u1(7) q[4];
swap q[5],q[6];
swap q[4],q[5];
cx q[4],q[3];
cx q[5],q[6];
swap q[2],q[3];
cx q[3],q[4];
cx q[2],q[3];
u1(8) q[4];
swap q[3],q[4];
cx q[2],q[3];
u1(7) q[4];
u1(8) q[2];
u1(8) q[3];
cx q[4],q[3];
swap q[2],q[3];
cx q[3],q[4];
cx q[2],q[3];
u1(4) q[4];
u1(7) q[4];
u1(7) q[3];
u1(7) q[2];
swap q[4],q[5];
cx q[2],q[3];
swap q[5],q[6];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
cx q[8],q[7];
u1(8) q[6];
swap q[6],q[7];
cx q[8],q[7];
u1(7) q[6];
u1(8) q[8];
u1(8) q[7];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
cx q[8],q[7];
u1(4) q[6];
u1(4) q[8];
u1(4) q[6];
u1(7) q[7];
u1(7) q[8];
u1(7) q[6];
swap q[7],q[8];
swap q[6],q[7];
swap q[5],q[6];
swap q[4],q[5];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[3];
u1(8) q[2];
swap q[2],q[3];
cx q[4],q[3];
u1(7) q[2];
u1(8) q[4];
u1(8) q[3];
cx q[2],q[3];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[3];
u1(4) q[2];
u1(4) q[4];
u1(4) q[2];
u1(7) q[3];
u1(7) q[4];
u1(7) q[2];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
u1(8) q[6];
cx q[5],q[6];
u1(7) q[4];
u1(8) q[5];
u1(8) q[6];
swap q[4],q[5];
cx q[5],q[6];
cx q[4],q[5];
swap q[4],q[5];
cx q[6],q[5];
u1(4) q[4];
u1(7) q[4];
u1(7) q[5];
u1(7) q[6];
cx q[4],q[3];
cx q[6],q[5];
swap q[2],q[3];
cx q[3],q[4];
cx q[2],q[3];
u1(8) q[4];
swap q[3],q[4];
cx q[2],q[3];
u1(7) q[4];
u1(8) q[2];
u1(8) q[3];
cx q[4],q[3];
swap q[2],q[3];
cx q[3],q[4];
cx q[2],q[3];
u1(4) q[4];
u1(7) q[4];
u1(7) q[3];
u1(7) q[2];
swap q[4],q[5];
cx q[2],q[3];
swap q[5],q[6];
swap q[6],q[7];
cx q[7],q[8];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
u1(8) q[8];
cx q[7],q[8];
u1(7) q[6];
u1(8) q[7];
u1(8) q[8];
swap q[6],q[7];
cx q[7],q[8];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
u1(4) q[8];
u1(4) q[7];
u1(7) q[6];
swap q[8],q[9];
u1(7) q[7];
swap q[6],q[7];
swap q[5],q[6];
swap q[4],q[5];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[3];
u1(8) q[2];
swap q[2],q[3];
cx q[4],q[3];
u1(7) q[2];
u1(8) q[4];
u1(8) q[3];
cx q[2],q[3];
swap q[3],q[4];
cx q[3],q[2];
cx q[4],q[3];
u1(4) q[2];
u1(4) q[4];
u1(4) q[2];
u1(7) q[3];
u1(7) q[4];
u1(7) q[2];
swap q[4],q[5];
cx q[5],q[6];
cx q[4],q[5];
u1(8) q[6];
swap q[5],q[6];
cx q[4],q[5];
u1(7) q[6];
u1(8) q[4];
u1(8) q[5];
cx q[6],q[5];
swap q[4],q[5];
cx q[5],q[6];
cx q[4],q[5];
u1(4) q[6];
u1(7) q[6];
u1(7) q[5];
u1(7) q[4];
swap q[3],q[4];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[7];
swap q[2],q[3];
swap q[3],q[4];
swap q[7],q[8];
cx q[4],q[5];
cx q[7],q[6];
cx q[3],q[4];
u1(8) q[5];
cx q[8],q[7];
u1(8) q[6];
swap q[4],q[5];
swap q[6],q[7];
cx q[3],q[4];
u1(7) q[5];
cx q[8],q[7];
u1(7) q[6];
u1(8) q[3];
u1(8) q[4];
u1(8) q[8];
u1(8) q[7];
cx q[5],q[4];
cx q[6],q[7];
swap q[3],q[4];
swap q[7],q[8];
cx q[4],q[5];
cx q[7],q[6];
cx q[3],q[4];
u1(4) q[5];
cx q[8],q[7];
u1(4) q[6];
u1(4) q[8];
u1(7) q[4];
u1(4) q[6];
u1(7) q[7];
swap q[2],q[3];
u1(7) q[8];
cx q[4],q[3];
u1(7) q[6];
swap q[1],q[2];
swap q[7],q[8];
swap q[4],q[5];
swap q[0],q[1];
swap q[6],q[7];
swap q[3],q[4];
cx q[6],q[5];
swap q[2],q[3];
swap q[4],q[5];
swap q[1],q[2];
cx q[5],q[6];
u1(8) q[4];
cx q[5],q[4];
u1(7) q[6];
u1(8) q[5];
u1(8) q[4];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
swap q[5],q[6];
cx q[4],q[5];
u1(4) q[6];
u1(7) q[6];
u1(7) q[5];
u1(7) q[4];
swap q[6],q[7];
cx q[4],q[5];
cx q[7],q[8];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
u1(8) q[8];
cx q[7],q[8];
u1(7) q[6];
u1(8) q[7];
u1(8) q[8];
swap q[6],q[7];
cx q[7],q[8];
cx q[6],q[7];
swap q[7],q[8];
cx q[7],q[6];
u1(4) q[8];
u1(4) q[7];
u1(1) q[6];
u1(7) q[7];
u1(7) q[6];
swap q[6],q[7];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(8) q[4];
swap q[4],q[5];
cx q[6],q[5];
u1(7) q[4];
u1(8) q[6];
u1(8) q[5];
cx q[4],q[5];
swap q[5],q[6];
cx q[5],q[4];
cx q[6],q[5];
u1(4) q[4];
u1(7) q[6];
swap q[3],q[4];
cx q[7],q[6];
swap q[4],q[5];
swap q[5],q[6];
cx q[6],q[7];
cx q[5],q[6];
u1(8) q[7];
swap q[6],q[7];
cx q[5],q[6];
u1(7) q[7];
u1(8) q[5];
u1(8) q[6];
cx q[7],q[6];
swap q[5],q[6];
cx q[6],q[7];
cx q[5],q[6];
u1(4) q[7];
u1(7) q[6];
u1(7) q[5];
cx q[5],q[6];
swap q[4],q[5];
swap q[3],q[4];
swap q[5],q[6];
cx q[2],q[3];
swap q[4],q[5];
swap q[3],q[4];
cx q[3],q[2];
u1(8) q[4];
cx q[3],q[4];
u1(7) q[2];
u1(8) q[3];
u1(8) q[4];
swap q[2],q[3];
cx q[3],q[4];
cx q[2],q[3];
swap q[2],q[3];
cx q[4],q[3];
u1(4) q[2];
