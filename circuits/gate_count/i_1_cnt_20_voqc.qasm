OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
tdg q[0];
s q[0];
h q[0];
s q[0];
h q[0];
s q[0];
sdg q[0];
s q[0];
h q[0];
s q[0];
h q[0];
s q[0];
z q[0];
z q[1];
tdg q[1];
s q[2];
h q[2];
s q[2];
h q[2];
s q[2];
z q[2];
s q[2];
h q[2];
s q[2];
h q[2];
s q[2];
cx q[1],q[2];
cx q[1],q[0];
s q[0];
t q[2];
sdg q[3];
