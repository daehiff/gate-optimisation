OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
tdg q[0];
x q[0];
s q[0];
h q[1];
s q[1];
h q[1];
tdg q[2];
sdg q[3];
h q[3];
z q[3];
t q[3];
h q[3];
z q[3];
tdg q[3];
z q[4];
t q[4];
cx q[2],q[4];
s q[4];
cx q[4],q[1];
z q[1];
tdg q[1];
x q[1];
s q[1];
cx q[2],q[1];
t q[1];
h q[1];
rz(3*pi) q[1];
h q[1];
s q[1];
cx q[2],q[0];
cx q[0],q[1];
h q[0];
s q[0];
h q[0];
z q[0];
tdg q[0];
s q[1];
h q[1];
z q[1];
tdg q[1];
h q[1];
s q[1];
cx q[2],q[0];
z q[0];
tdg q[0];
cx q[2],q[1];
cx q[0],q[1];
h q[0];
s q[0];
h q[0];
t q[1];
z q[4];
tdg q[4];
h q[4];
s q[4];
h q[4];
cx q[3],q[4];
h q[3];
s q[3];
h q[3];
s q[4];
h q[4];
t q[4];
h q[4];
s q[4];
