OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
t q[1];
h q[1];
s q[1];
h q[1];
t q[2];
h q[2];
s q[2];
h q[2];
rz(9.7696655) q[2];
cx q[0],q[3];
h q[0];
s q[0];
h q[0];
cx q[1],q[0];
t q[0];
rz(8.1757322) q[1];
h q[1];
rz(1.264519) q[1];
h q[1];
rz(5.4477034) q[1];
cx q[2],q[1];
z q[1];
h q[1];
rz(10.555064) q[1];
h q[1];
s q[1];
cx q[0],q[1];
rz(4.3675015) q[2];
h q[2];
s q[2];
h q[2];
z q[2];
tdg q[2];
z q[3];
t q[3];
h q[3];
t q[3];
h q[3];
z q[3];
