OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(1.4555489,5.5990653,4.2172928) q[0];
u3(pi/2,pi,1.0825815) q[1];
u3(1.1514145,6.0089009,3.7462592) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(5.6838704) q[1];
u3(2.5807364,2.9227322,1.3139353) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(1.9879357) q[1];
rx(pi/2) q[1];
rz(2.1731339) q[1];
u3(2.2313682,4.0963578,2.6916698) q[1];
u3(4.8315177,5.5652055,1.0931118) q[2];
u3(5.0989076,0.18544131,3.5807467) q[2];
cx q[0],q[2];
rx(pi/2) q[0];
rz(2*pi) q[0];
rx(pi/2) q[0];
rz(1.0965094) q[0];
u3(1.8197246,3*pi/2,pi/2) q[2];
cx q[0],q[2];
rx(pi/2) q[0];
rz(3.648838) q[0];
rx(pi/2) q[0];
rz(3.6880009) q[0];
u3(1.8492701,1.524463,0.32160113) q[2];
u3(pi,4.0286036,2.2258494) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(5.6813704) q[1];
u3(2*pi,2.9642943,0.17729839) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(4.5700671) q[1];
rx(pi/2) q[1];
rz(3.4157946) q[1];
u3(pi,0.14681163,5.4126409) q[3];
