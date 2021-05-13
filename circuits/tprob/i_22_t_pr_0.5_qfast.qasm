OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(pi/4,4.2253997,7*pi/4) q[0];
u3(0.75913189,4.5709384,3.9455086) q[1];
u3(1.2820586,0.25744301,4.5955932) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(2*pi) q[1];
rx(pi/2) q[1];
rz(1.8931652) q[1];
u3(4.220211,pi/2,3*pi/2) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(0.02927158) q[1];
rx(pi/2) q[1];
rz(5.1629422) q[1];
u3(4.3419849,2.8971328,5.976477) q[2];
u3(5.8802168,4.788057,1.288379) q[2];
u3(2.9896087,6.2464776,4.7478532) q[3];
cx q[2],q[3];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(5.5837679) q[2];
u3(2*pi,4.1870471,5.2377309) q[3];
cx q[2],q[3];
rx(pi/2) q[2];
rz(1.2854036) q[2];
rx(pi/2) q[2];
rz(1.5999768) q[2];
u3(5.5809708,3.3786962,1.7906894) q[3];
u3(4.0656867,1.7704624,0.58939784) q[3];
cx q[0],q[3];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3.6285819) q[0];
u3(2*pi,4.4838042,0.22858479) q[3];
cx q[0],q[3];
rx(pi/2) q[0];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(7*pi/4) q[0];
u3(pi,4.9989006,3.6228544) q[3];
