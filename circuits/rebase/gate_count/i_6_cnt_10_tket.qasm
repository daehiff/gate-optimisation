OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u1(3*pi/2) q[0];
u3(pi,3*pi/2,pi/2) q[0];
u1(pi/2) q[0];
u1(pi/2) q[2];
u1(pi/2) q[3];
