OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
tdg q[1];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
cx q[1],q[0];
sdg q[0];
sdg q[1];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
s q[1];
tdg q[3];
