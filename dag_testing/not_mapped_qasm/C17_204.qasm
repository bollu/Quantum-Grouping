OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
creg c[13];
cx q[0],q[1];
u1(7) q[2];
u1(7) q[3];
u1(7) q[6];
u1(7) q[0];
swap q[1],q[2];
cx q[3],q[4];
cx q[0],q[1];
u1(4) q[2];
u1(7) q[2];
u1(7) q[0];
u1(4) q[1];
swap q[2],q[3];
swap q[0],q[1];
swap q[1],q[2];
u1(7) q[0];
swap q[2],q[3];
swap q[3],q[4];
cx q[2],q[1];
cx q[5],q[4];
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
u1(4) q[3];
u1(7) q[1];
u1(7) q[3];
swap q[1],q[2];
swap q[3],q[4];
cx q[2],q[3];
swap q[4],q[5];
swap q[3],q[4];
swap q[5],q[6];
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
u1(7) q[2];
u1(7) q[3];
u1(7) q[4];
cx q[2],q[1];
cx q[4],q[3];
swap q[0],q[1];
cx q[1],q[2];
cx q[0],q[1];
u1(8) q[2];
swap q[1],q[2];
cx q[0],q[1];
u1(7) q[2];
u1(8) q[0];
u1(8) q[1];
cx q[2],q[1];
swap q[0],q[1];
cx q[1],q[2];
cx q[0],q[1];
u1(4) q[2];
u1(4) q[0];
u1(4) q[2];
u1(7) q[1];
u1(7) q[0];
u1(7) q[2];
swap q[0],q[1];
swap q[1],q[2];
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
swap q[3],q[4];
swap q[2],q[3];
swap q[1],q[2];
cx q[3],q[4];
cx q[1],q[0];
cx q[2],q[1];
swap q[0],q[1];
cx q[1],q[2];
u1(8) q[0];
cx q[1],q[0];
u1(7) q[2];
u1(8) q[1];
u1(8) q[0];
swap q[1],q[2];
cx q[1],q[0];
cx q[2],q[1];
swap q[0],q[1];
cx q[1],q[2];
u1(4) q[0];
u1(4) q[1];
u1(7) q[2];
u1(7) q[0];
swap q[2],q[3];
u1(7) q[1];
swap q[3],q[4];
cx q[1],q[2];
cx q[5],q[4];
swap q[2],q[3];
cx q[6],q[5];
cx q[2],q[1];
u1(8) q[3];
swap q[4],q[5];
cx q[2],q[3];
u1(7) q[1];
cx q[5],q[6];
u1(8) q[4];
u1(8) q[2];
u1(8) q[3];
cx q[5],q[4];
u1(7) q[6];
swap q[1],q[2];
u1(8) q[5];
u1(8) q[4];
cx q[2],q[3];
swap q[5],q[6];
cx q[1],q[2];
cx q[5],q[4];
swap q[1],q[2];
cx q[6],q[5];
cx q[3],q[2];
u1(4) q[1];
swap q[5],q[6];
u1(7) q[3];
u1(7) q[1];
u1(7) q[2];
cx q[4],q[5];
u1(4) q[6];
swap q[0],q[1];
u1(4) q[4];
u1(4) q[6];
u1(7) q[5];
swap q[1],q[2];
u1(7) q[4];
cx q[2],q[3];
cx q[1],q[0];
u1(7) q[6];
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
swap q[3],q[4];
swap q[1],q[2];
cx q[3],q[2];
swap q[0],q[1];
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
swap q[2],q[3];
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
u1(7) q[3];
u1(7) q[1];
u1(7) q[2];
swap q[3],q[4];
cx q[2],q[1];
cx q[4],q[5];
swap q[2],q[3];
swap q[5],q[6];
swap q[1],q[2];
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
cx q[4],q[3];
swap q[5],q[6];
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
u1(4) q[4];
u1(7) q[3];
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
u1(7) q[0];
u1(1) q[2];
u1(7) q[1];
swap q[0],q[1];
swap q[1],q[2];
cx q[2],q[3];
u1(7) q[1];
swap q[3],q[4];
cx q[1],q[0];
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
u1(7) q[3];
u1(4) q[4];
u1(7) q[2];
swap q[3],q[4];
swap q[1],q[2];
cx q[5],q[4];
u1(7) q[3];
swap q[0],q[1];
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
swap q[3],q[4];
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
swap q[2],q[3];
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
u1(7) q[4];
u1(7) q[5];
u1(7) q[6];
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
u1(7) q[3];
u1(7) q[2];
u1(7) q[1];
swap q[0],q[1];
swap q[1],q[2];
swap q[2],q[3];
swap q[0],q[1];
swap q[1],q[2];
swap q[2],q[3];
swap q[3],q[4];
cx q[2],q[1];
cx q[5],q[4];
cx q[3],q[2];
swap q[1],q[2];
swap q[5],q[6];
cx q[2],q[3];
u1(8) q[1];
cx q[2],q[1];
u1(7) q[3];
u1(8) q[2];
u1(8) q[1];
swap q[2],q[3];
cx q[2],q[1];
cx q[3],q[2];
swap q[2],q[3];
cx q[1],q[2];
u1(4) q[3];
u1(4) q[3];
u1(7) q[1];
u1(7) q[2];
swap q[0],q[1];
swap q[2],q[3];
swap q[3],q[4];
u1(7) q[2];
cx q[1],q[0];
cx q[5],q[4];
cx q[2],q[1];
swap q[0],q[1];
swap q[5],q[6];
cx q[1],q[2];
u1(8) q[0];
swap q[4],q[5];
cx q[1],q[0];
u1(7) q[2];
u1(8) q[1];
u1(8) q[0];
swap q[1],q[2];
cx q[1],q[0];
cx q[2],q[1];
swap q[0],q[1];
cx q[1],q[2];
u1(4) q[0];
u1(4) q[1];
u1(4) q[0];
u1(7) q[2];
u1(7) q[1];
u1(7) q[0];
swap q[1],q[2];
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
u1(4) q[2];
u1(4) q[4];
u1(7) q[3];
u1(7) q[2];
u1(7) q[4];
swap q[2],q[3];
swap q[3],q[4];
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
swap q[3],q[4];
cx q[5],q[6];
cx q[3],q[2];
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
swap q[2],q[3];
cx q[3],q[4];
u1(4) q[2];
u1(7) q[2];
u1(7) q[4];
u1(7) q[3];
cx q[2],q[1];
cx q[3],q[4];
swap q[0],q[1];
cx q[1],q[2];
cx q[0],q[1];
u1(8) q[2];
swap q[1],q[2];
cx q[0],q[1];
u1(7) q[2];
u1(8) q[0];
u1(8) q[1];
cx q[2],q[1];
swap q[0],q[1];
cx q[1],q[2];
cx q[0],q[1];
u1(4) q[2];
u1(4) q[0];
swap q[2],q[3];
u1(7) q[0];
swap q[3],q[4];
swap q[0],q[1];
cx q[1],q[2];
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
swap q[1],q[2];
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
swap q[3],q[4];
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
