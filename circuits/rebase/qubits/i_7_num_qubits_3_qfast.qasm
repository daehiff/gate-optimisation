OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
u3(3*pi/2,0,1.2059686) q[0];
u3(7*pi/4,1.1929405,pi) q[1];
u3(pi/2,0,4.3285409) q[2];
cx q[1],q[2];
u3(pi/2,3*pi/2,pi/2) q[1];
u1(pi) q[1];
u3(pi/2,3*pi/2,pi/2) q[1];
u1(2.8113435) q[1];
cx q[0],q[1];
u3(pi/2,3*pi/2,pi/2) q[0];
u1(pi/2) q[0];
u3(pi/2,3*pi/2,pi/2) q[0];
u3(pi/2,0,4.9419424) q[1];
cx q[0],q[1];
u3(pi/2,3*pi/2,pi/2) q[0];
u1(pi/2) q[0];
u3(pi/2,3*pi/2,pi/2) q[0];
u1(5.4204939) q[0];
u3(2.9066151,2.928247,1.3516109) q[1];
u3(4.9874379,1.4952697,3.1621414) q[2];
cx q[1],q[2];
u3(pi/2,3*pi/2,pi/2) q[1];
u1(3*pi/2) q[1];
u3(pi/2,3*pi/2,pi/2) q[1];
u1(pi/2) q[1];
u3(1.3134852,0.10038914,4.3354945) q[2];
cx q[1],q[2];
u3(pi/2,3*pi/2,pi/2) q[1];
u1(3.4527581) q[1];
u3(pi/2,3*pi/2,pi/2) q[1];
u1(5*pi/4) q[1];
u3(1.0258324,3.1591847,5.5703912) q[2];
