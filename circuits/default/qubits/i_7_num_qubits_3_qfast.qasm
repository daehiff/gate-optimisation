OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
u3(pi/2,3*pi/2,3.7938126) q[0];
u3(pi/2,pi,5.9427589) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
rx(pi/2) q[0];
rz(2*pi) q[0];
u3(3.4100834,pi/2,pi/2) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(3.7938126) q[0];
rx(pi/2) q[0];
rz(pi/2) q[0];
u3(2*pi,1.4656876,3.2467014) q[1];
u3(3*pi/2,pi,2.3070989) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(pi/4) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(3*pi/4) q[0];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
u3(pi,2.251165,3.8461691) q[1];
u3(3.457732,4.5538746,2.9908123) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(pi/176855943800711) q[1];
rx(pi/2) q[1];
rz(3.1173849) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
rx(pi/2) q[0];
rz(pi/2) q[0];
u3(pi,4.6191171,4.6191171) q[1];
u3(1.8800352,3.1868666,4.8601696) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(2.1797135) q[1];
u3(4.0469783,1.697207,0.86866689) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(7*pi/4) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
u3(3*pi/2,2.3724523,2.0209124e-10) q[2];
