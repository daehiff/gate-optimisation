OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
t q[1];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
s q[2];
s q[2];
h q[2];
s q[2];
h q[2];
s q[2];
sdg q[2];
cx q[3],q[0];
z q[0];
cx q[1],q[0];
tdg q[1];
t q[3];
