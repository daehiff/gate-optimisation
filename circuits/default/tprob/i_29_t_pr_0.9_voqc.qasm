OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
sdg q[0];
sdg q[1];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
z q[1];
s q[2];
z q[3];
cx q[1],q[3];
t q[3];
