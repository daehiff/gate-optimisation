OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
t q[2];
s q[2];
h q[2];
s q[2];
h q[2];
s q[2];
cx q[0],q[3];
z q[0];
cx q[1],q[0];
tdg q[0];
z q[3];
tdg q[3];
