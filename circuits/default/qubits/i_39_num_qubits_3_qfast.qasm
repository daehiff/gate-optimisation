OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
u3(pi/2,3.6991576,pi/2) q[0];
u3(1.4597934,pi/2,2.4404478e-11) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(2*pi) q[0];
rx(pi/2) q[0];
rz(2.1283613) q[0];
u3(5.3166899,1.6661282,2.2988301) q[1];
u3(1.4919876,0.387214,3.3322991) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(2.1434235) q[1];
u3(1.6933521,6.1169835,3.771362) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(0.46020038) q[1];
rx(pi/2) q[1];
rz(0.52379425) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(1.7934963) q[0];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
u3(5.4688154,4.3003852,2.905436) q[1];
u3(3.5588257,4.0779994,2.070389) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(5.7927392) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
u3(pi/2,2*pi,2.9578721) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(3.4727028) q[0];
rx(pi/2) q[0];
rz(5.5088563e-11) q[0];
u3(1.3916626,4.671372,4.9387731) q[1];
u3(0.74992926,6.1586072,4.8818831) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(7*pi/4) q[1];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
u3(pi/2,3.0263652,pi) q[2];
