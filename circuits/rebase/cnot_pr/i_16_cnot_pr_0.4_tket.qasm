OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u1(pi/4) q[1];
u1(pi/2) q[2];
cx q[0],q[3];
cx q[2],q[0];
cx q[1],q[2];
cx q[1],q[0];
u1(pi/2) q[0];
u1(pi/2) q[3];
cx q[2],q[3];
cx q[1],q[2];
cx q[1],q[3];
u1(pi) q[1];
u3(pi/2,0,pi) q[1];
u1(pi/2) q[1];
u3(pi/2,0,pi) q[1];
u1(pi) q[1];
u1(pi/4) q[1];
u1(pi) q[2];
u1(7*pi/4) q[2];
u3(pi,3*pi/2,pi/2) q[2];
u1(pi/2) q[2];
cx q[0],q[2];
cx q[1],q[0];
u1(3*pi/2) q[0];
u3(pi/2,0,pi) q[0];
u1(pi) q[0];
u1(pi/4) q[0];
u3(pi/2,0,pi) q[0];
u1(pi) q[0];
cx q[1],q[2];
cx q[0],q[1];
u1(3.0584514) q[2];
u1(7*pi/4) q[3];
u3(pi/2,0,pi) q[3];
u1(1.6539376) q[3];
u3(pi/2,0,pi) q[3];
u1(pi) q[3];
cx q[2],q[3];
u1(3.2247339) q[2];
u3(pi/2,0,pi) q[2];
u1(pi/2) q[2];
u3(pi/2,0,pi) q[2];
u1(pi/2) q[2];
u1(4.6295336) q[3];
u3(pi/2,0,pi) q[3];
u1(2.3527462) q[3];
u3(pi/2,0,pi) q[3];
u1(0.66808814) q[3];