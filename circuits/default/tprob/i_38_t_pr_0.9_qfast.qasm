OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(6.253571,4.0440286,0.68968488) q[0];
u3(pi,3.4706203,4.2560185) q[1];
u3(4.8640021,5.3338071,2.045493) q[2];
u3(3.5027425,0.55951419,1.8337178) q[3];
cx q[2],q[3];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(4.0322789) q[2];
u3(pi,3.4799677,3.4799677) q[3];
cx q[2],q[3];
rx(pi/2) q[2];
rz(1.6117882) q[2];
rx(pi/2) q[2];
rz(3.0523407) q[2];
u3(2.8102157,4.2624717,2.6843604) q[2];
cx q[0],q[2];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(4.4710458) q[0];
u3(0.23469909,3*pi/2,pi/2) q[2];
cx q[0],q[2];
rx(pi/2) q[0];
rz(3.2238225) q[0];
rx(pi/2) q[0];
rz(4.1429225) q[0];
u3(6.2150147,2.7824922,4.9316315) q[0];
cx q[0],q[1];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(0.92838173) q[0];
u3(3*pi/2,5*pi/4,3*pi/2) q[1];
u3(3.2509071,4.0544369,3.6314736) q[2];
u3(0.36114988,2.0932729,3.701107) q[3];
