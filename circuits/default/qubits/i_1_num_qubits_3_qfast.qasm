OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
u3(pi/2,4.5298064,pi/2) q[0];
u3(3*pi/2,6.1813179,5.6083679) q[1];
u3(2.4611272,pi/2,7*pi/4) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(0.10186741) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(0.96319577) q[0];
rx(pi/2) q[0];
rz(6.178163) q[0];
u3(3.1175063e-13,2.6794078,2.0329812) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
rx(pi/2) q[0];
rz(pi/2) q[0];
u3(3*pi/2,pi,2*pi) q[1];
u3(9.9475983e-14,5.674323,0.60886234) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(0.54135285) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(4.8229698) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
u3(3.0636436,1.7287915,0.29367433) q[1];
u3(4.7412405,1.1095496,5.3874582) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(5.6677056) q[0];
rx(pi/2) q[0];
rz(pi/2) q[0];
u3(6.2715063,0.96002184,3.7523351) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(2*pi) q[0];
u3(5.4977414,2.3426643,0.0095671675) q[1];
u3(pi/2,1.8685669,pi) q[2];
