OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
t q[0];
h q[0];
rz(3*pi) q[0];
h q[0];
s q[0];
sdg q[1];
h q[1];
sdg q[1];
h q[1];
s q[1];
rz(0.95531662) q[2];
h q[2];
rz(pi/3) q[2];
h q[2];
rz(0.16991845) q[2];
tdg q[3];
h q[3];
z q[3];
t q[3];
h q[3];
s q[3];
cx q[3],q[1];
z q[1];
t q[1];
h q[1];
s q[1];
h q[1];
s q[1];
cx q[1],q[2];
h q[3];
s q[3];
h q[3];
s q[3];
