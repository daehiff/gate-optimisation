OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
z q[2];
tdg q[2];
cx q[2],q[1];
sdg q[1];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
sdg q[1];
cx q[2],q[1];
t q[1];
s q[3];
h q[3];
s q[3];
h q[3];
s q[3];
sdg q[3];
