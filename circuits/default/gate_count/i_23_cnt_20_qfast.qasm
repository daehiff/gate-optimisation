OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(0.19692247,5.0037247,5.6829162) q[0];
u3(3.7951683,2.7884634,6.2033728) q[1];
u3(1.6386073,6.1020052,6.1553508) q[2];
cx q[0],q[2];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(4.410061) q[0];
u3(pi,5.4889161,5.4889161) q[2];
cx q[0],q[2];
rx(pi/2) q[0];
rz(4.7617206) q[0];
rx(pi/2) q[0];
rz(3.4164263) q[0];
u3(2.971411,3.7079786,5.1230848) q[0];
cx q[0],q[1];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(5.7116522) q[0];
u3(0.22327136,3*pi/2,3*pi/2) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(5.8853121) q[0];
rx(pi/2) q[0];
rz(0.86522224) q[0];
u3(3.9019815,2.777634,3.7684145) q[1];
u3(5.7298615,4.2123196,5.8428743) q[1];
u3(0.72629811,3.3343092,5.9658437) q[2];
u3(4.9021249,3.3694194,4.0435117) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(5.1854835) q[1];
u3(pi,1.1816522,1.1816522) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(2.5658673) q[1];
rx(pi/2) q[1];
rz(5.9547135) q[1];
u3(3.3638839,0.54435307,0.78327961) q[3];
