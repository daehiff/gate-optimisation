OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
sdg q[0];
s q[0];
h q[0];
s q[0];
h q[0];
s q[0];
tdg q[0];
s q[1];
cx q[1],q[0];
sdg q[2];
s q[2];
h q[2];
s q[2];
h q[2];
s q[2];
sdg q[2];
sdg q[3];
s q[3];
h q[3];
s q[3];
h q[3];
s q[3];
z q[3];
