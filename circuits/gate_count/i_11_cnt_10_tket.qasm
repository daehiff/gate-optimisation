OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[0];
cx q[2],q[1];
t q[1];
h q[2];
s q[2];
h q[2];
s q[2];
cx q[2],q[0];
z q[0];
tdg q[0];
t q[3];
h q[3];
s q[3];
h q[3];
