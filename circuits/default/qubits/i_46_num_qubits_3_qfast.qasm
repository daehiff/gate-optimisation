OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
u3(pi/2,3*pi/2,5*pi/4) q[0];
u3(0,2.0642091,3.433578) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
rx(pi/2) q[0];
rz(pi/2) q[0];
u3(pi/2,2.7104603,pi/2) q[1];
u3(4.5707589,5.7519586,3.8778389) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(3.6837116e-13) q[1];
rx(pi/2) q[1];
rz(5.8520529) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(0) q[0];
u3(pi/4,5*pi/4,3*pi/2) q[1];
u3(3*pi/2,1.011511,pi) q[2];