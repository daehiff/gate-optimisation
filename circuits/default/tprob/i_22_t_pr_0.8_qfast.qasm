OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(3*pi/2,pi,5*pi/4) q[0];
u3(4.7727644,5.0865437,6.2050653) q[1];
u3(5.506823,3.0897888,1.6034122) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(5.9795012) q[1];
u3(2.8496068e-09,0.38584289,2.7557498) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(5.5737782) q[1];
rx(pi/2) q[1];
rz(1.6635609) q[1];
u3(4.5560211,2.5878782,3.4299995) q[2];
u3(5.6171441,6.071449,3.3676474) q[2];
u3(pi/2,2*pi,3.5920605) q[3];
cx q[0],q[3];
rx(pi/2) q[0];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(3*pi/4) q[0];
u3(4.9605359,0.25025703,0.056198862) q[3];
u3(3.2861065,2.706185,3.2661988) q[3];
cx q[2],q[3];
rx(pi/2) q[2];
rz(2*pi) q[2];
rx(pi/2) q[2];
rz(5.6419052) q[2];
u3(0.157321,7.2560857e-09,3*pi/2) q[3];
cx q[2],q[3];
rx(pi/2) q[2];
rz(pi/4) q[2];
rx(pi/2) q[2];
rz(pi/2) q[2];
u3(1.5667059e-10,3.1013742,5.0660257) q[3];