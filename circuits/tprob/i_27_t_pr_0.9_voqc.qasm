OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
cx q[1],q[0];
tdg q[0];
s q[0];
h q[0];
s q[0];
h q[0];
s q[0];
sdg q[0];
z q[1];
t q[3];
cx q[2],q[3];
