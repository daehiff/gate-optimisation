OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
u3(0.95081205,3*pi/2,9.9875663e-12) q[0];
u3(1.6555057,0.90152215,1.923528e-11) q[1];
u3(1.7866034,3.0044407,4.9252623) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(1.0603991) q[1];
rx(pi/2) q[1];
rz(5.914407) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(0.64668211) q[0];
rx(pi/2) q[0];
rz(5.2966951) q[0];
u3(2.7332699,0.60680575,4.3547574) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(4.1753231) q[0];
rx(pi/2) q[0];
rz(2.8153312) q[0];
u3(2.4926895,4.3207209,5.9652843) q[1];
u3(4.6763988,1.0127701,6.2506385) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(2.1628112) q[1];
rx(pi/2) q[1];
rz(5.4591007) q[1];
u3(0.15240347,4.4483827,2.8101335) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(1.5010726) q[1];
rx(pi/2) q[1];
rz(6.2205646) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
rx(pi/2) q[0];
rz(6.0673565) q[0];
u3(1.9991766,3.7758741,5.7691754) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(1.5507618) q[0];
rx(pi/2) q[0];
rz(0.091121012) q[0];
u3(0.29608345,4.8426734,5.7440308) q[1];
u3(1.5623637,3.3154641,6.2817042) q[2];
