OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[0];
rz(2.6540612) q[0];
h q[0];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
tdg q[2];
x q[2];
s q[2];
z q[3];
t q[3];
x q[3];
s q[3];
cx q[2],q[3];
h q[2];
s q[2];
h q[2];
s q[2];
s q[3];
cx q[1],q[3];
z q[3];
h q[3];
s q[3];
h q[3];
rz(8.341513) q[3];
cx q[3],q[0];
rz(0.84717692) q[0];
h q[0];
rz(1.9084155) q[0];
h q[0];
rz(1.9294996) q[0];
rz(2.6540612) q[3];
h q[3];
s q[3];
h q[3];
cx q[3],q[1];
cx q[1],q[0];
sdg q[0];
h q[0];
sdg q[0];
h q[0];
z q[0];