OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u1(pi/4) q[0];
u1(pi) q[1];
u1(7*pi/4) q[1];
cx q[2],q[3];
cx q[2],q[1];
u1(pi) q[2];
u1(pi/4) q[2];
