OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(2.715324,3*pi/2,pi/2) q[0];
u3(1.5582765,3.1687954,5.9187674) q[1];
u3(6.1304458,3.0777172,3.2062184) q[2];
cx q[0],q[2];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
rx(pi/2) q[0];
rz(1.7679416) q[0];
u3(2.967692,4.769207,0.055962802) q[2];
cx q[0],q[2];
rx(pi/2) q[0];
rz(1.1944735) q[0];
rx(pi/2) q[0];
rz(5.1099187) q[0];
u3(4.58249,3.4720835,0.12880759) q[0];
cx q[0],q[1];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3.7807995) q[0];
u3(pi,2.0346294,2.0346294) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(3.6906406) q[0];
rx(pi/2) q[0];
rz(0.053184394) q[0];
u3(1.5429388,1.5657025,0.4936146) q[1];
u3(5.1426152,5.6570864,3.5989268) q[1];
u3(5.1318404,4.5220908,3.2198823) q[2];
u3(3*pi/2,pi,3*pi/4) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(2.0104479) q[1];
u3(pi,3.6341759,2.0633795) q[3];
