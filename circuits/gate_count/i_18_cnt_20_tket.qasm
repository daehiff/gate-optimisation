OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
tdg q[0];
x q[0];
s q[0];
z q[1];
t q[1];
h q[1];
s q[1];
h q[1];
z q[2];
s q[3];
x q[3];
s q[3];
cx q[3],q[1];
cx q[0],q[3];
h q[0];
s q[0];
h q[0];
cx q[3],q[1];
h q[3];
s q[3];
h q[3];
z q[3];
t q[3];
cx q[3],q[2];
cx q[0],q[2];
