OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
z q[0];
z q[1];
t q[1];
z q[2];
tdg q[2];
h q[2];
sdg q[2];
h q[2];
cx q[0],q[3];
rz(3*pi) q[0];
h q[0];
rz(2.6695105) q[0];
h q[0];
sdg q[3];
s q[4];
cx q[4],q[2];
s q[2];
cx q[3],q[2];
s q[2];
z q[3];
h q[3];
s q[3];
h q[3];
rz(1.0987141) q[3];
cx q[3],q[0];
rz(1.9975865) q[0];
h q[0];
rz(2.252048) q[0];
h q[0];
rz(0.62539201) q[0];
rz(3.6136749) q[3];
h q[3];
s q[3];
h q[3];
z q[3];
t q[3];
cx q[3],q[2];
h q[4];
s q[4];
h q[4];
cx q[4],q[1];
rz(3*pi) q[1];
h q[1];
s q[1];
h q[1];
z q[1];
tdg q[1];
cx q[1],q[3];
h q[1];
s q[1];
h q[1];
cx q[0],q[1];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
t q[3];
h q[4];
s q[4];
h q[4];
t q[4];