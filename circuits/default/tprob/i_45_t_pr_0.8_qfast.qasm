OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(5.0444076,5.5998291,2.3562685) q[0];
u3(1.5642359,2.0502081,2.1817999) q[1];
u3(2.2228192,1.2549128,0.19188928) q[2];
cx q[0],q[2];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3.119397) q[0];
u3(pi,4.1890979,1.0475053) q[2];
cx q[0],q[2];
rx(pi/2) q[0];
rz(4.8476131) q[0];
rx(pi/2) q[0];
rz(1.1861738) q[0];
u3(2.2587171,1.7924393,2.4188259) q[0];
cx q[0],q[1];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(5.1558927) q[0];
u3(pi,4.4321985,4.4321985) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(1.3778823) q[0];
rx(pi/2) q[0];
rz(1.3240063) q[0];
u3(0.95980783,4.7043795,0.48400672) q[1];
u3(5.4444356,3.0362021,1.7086184) q[2];
u3(0.6539355,2.4540943,3.1490571) q[2];
u3(2.3449816,6.1345438,2.9305929) q[3];
cx q[2],q[3];
rx(pi/2) q[2];
rz(2*pi) q[2];
rx(pi/2) q[2];
rz(2.1770161) q[2];
u3(4.5620776,3*pi/2,3*pi/2) q[3];