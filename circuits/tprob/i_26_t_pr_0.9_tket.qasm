OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[1];
tdg q[1];
s q[2];
cx q[0],q[2];
s q[2];
z q[3];
h q[3];
s q[3];
h q[3];
s q[3];
