OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u1(5.2877823) q[0];
u3(pi/2,0,pi) q[0];
u1(1.3652751) q[0];
u3(pi/2,0,pi) q[0];
u1(0.80713377) q[0];
u1(pi/4) q[1];
u3(pi/2,0,pi) q[2];
u1(pi/2) q[2];
u3(pi/2,0,pi) q[2];
u1(pi) q[2];
u1(pi/4) q[2];
cx q[2],q[1];
u1(5.8602632) q[1];
u3(pi/2,0,pi) q[1];
u1(pi) q[1];
u3(pi/2,0,pi) q[1];
u1(pi/2) q[1];
cx q[1],q[0];
u1(3*pi/2) q[0];
u3(pi/2,0,pi) q[0];
u1(pi/2) q[0];
u3(pi/2,0,pi) q[0];
u1(5.9904117) q[0];
u1(5.8602627) q[1];
u3(pi/2,0,pi) q[1];
u1(pi/2) q[1];
u3(pi/2,0,pi) q[1];
u1(7*pi/4) q[1];
u3(pi/2,0,pi) q[2];
u1(pi/2) q[2];
u3(pi/2,0,pi) q[2];
u1(pi/4) q[2];
u3(pi/2,0,pi) q[3];
u1(pi/2) q[3];
u3(pi/2,0,pi) q[3];
