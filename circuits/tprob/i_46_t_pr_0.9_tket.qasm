OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[0];
z q[1];
tdg q[1];
h q[1];
s q[1];
h q[1];
s q[1];
t q[2];
cx q[0],q[2];
tdg q[2];
z q[3];
