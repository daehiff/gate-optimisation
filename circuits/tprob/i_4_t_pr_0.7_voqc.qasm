OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
t q[1];
cx q[0],q[1];
tdg q[1];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
z q[2];
tdg q[2];
s q[3];
cx q[1],q[3];
z q[3];
cx q[3],q[2];
cx q[1],q[3];
t q[2];
cx q[3],q[1];
cx q[1],q[2];
s q[3];
h q[3];
s q[3];
h q[3];
s q[3];
t q[3];
