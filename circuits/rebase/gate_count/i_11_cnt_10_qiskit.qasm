OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(pi/2,0,pi) q[0];
u1(pi/2) q[0];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,pi) q[0];
u1(pi/2) q[0];
u3(pi/2,0,pi) q[0];
u1(pi/4) q[0];
u1(pi/4) q[1];
u3(pi/2,0,pi) q[2];
u1(pi/2) q[2];
u3(pi/2,0,pi) q[2];
cx q[0],q[2];
u1(pi/4) q[3];
u3(pi/2,0,pi) q[3];
u1(pi/2) q[3];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
cx q[3],q[2];
