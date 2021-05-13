OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(2*pi,0.95810455,0.61269177) q[0];
u3(2*pi,1.9137755,1.5118793) q[1];
u3(2*pi,3.5267324,0.40025844) q[2];
u3(0.98411412,3.5368869,3.0515849) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(2*pi) q[1];
rx(pi/2) q[1];
rz(4.2922327) q[1];
u3(0.071635507,3.4173456,3.9109891) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(4.8154788) q[1];
rx(pi/2) q[1];
rz(3.9740441) q[1];
u3(2.9868186,2.1214369,6.0043992) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(3*pi/4) q[0];
u3(1.1835737,0.21070143,4.4759313) q[1];
u3(0.47571451,0.13363305,0.32599939) q[1];
cx q[1],q[2];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3.299935) q[1];
u3(pi,1.4616352,2.2470334) q[2];
u3(4.0779864,1.5013582,0.30372583) q[3];
