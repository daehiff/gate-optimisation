OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
sdg q[0];
h q[0];
sdg q[0];
h q[0];
z q[0];
z q[2];
t q[2];
cx q[2],q[0];
h q[2];
s q[2];
h q[2];
s q[2];
t q[3];
