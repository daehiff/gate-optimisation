OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
u3(pi/2,pi/2,3*pi/2) q[0];
u3(3*pi/2,3.5993426,7*pi/4) q[1];
u3(1.0278847,5.7238986,0.92019433) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(2*pi) q[1];
rx(pi/2) q[1];
rz(1.2431481) q[1];
u3(1.4524563,4.7485265,3.1373243) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(7*pi/4) q[0];
rx(pi/2) q[0];
rz(2*pi) q[0];
u3(2.2737596e-08,6.1024702,1.7515114) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
u3(pi,5.4437429,3.8729466) q[1];
u3(0.056921474,6.1866638,0.88120377) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
u3(0.79092837,3.2900509,3.0368104) q[2];