OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
t q[2];
cx q[0],q[3];
s q[0];
h q[0];
s q[0];
h q[0];
s q[0];
z q[3];
tdg q[3];
