OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
sdg q[0];
h q[0];
s q[0];
h q[0];
rz(2.5348187) q[0];
s q[1];
x q[1];
s q[1];
h q[3];
s q[3];
h q[3];
cx q[2],q[3];
z q[2];
h q[2];
rz(5.6764113) q[2];
h q[2];
z q[2];
cx q[0],q[2];
rz(0.60677397) q[0];
h q[0];
s q[0];
h q[0];
t q[0];
z q[2];
h q[2];
rz(0.60677397) q[2];
h q[2];
cx q[3],q[1];
z q[1];
tdg q[1];
x q[1];
s q[1];
cx q[1],q[2];
t q[2];
h q[2];
sdg q[2];
h q[2];
cx q[1],q[2];
cx q[0],q[2];
rz(3*pi) q[0];
h q[0];
s q[0];
h q[0];
tdg q[0];
sdg q[2];
cx q[2],q[0];
s q[0];
sdg q[3];
h q[3];
sdg q[3];
h q[3];
t q[3];
cx q[1],q[3];
cx q[0],q[1];
h q[0];
tdg q[0];
h q[0];
s q[0];
z q[1];
tdg q[1];
t q[3];
h q[3];
s q[3];
h q[3];
cx q[1],q[3];
h q[1];
s q[1];
h q[1];
t q[1];
