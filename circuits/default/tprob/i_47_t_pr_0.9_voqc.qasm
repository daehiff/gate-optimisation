OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[0];
t q[2];
cx q[1],q[2];
z q[1];
cx q[2],q[0];
t q[0];
sdg q[2];
z q[3];
t q[3];
s q[3];
h q[3];
s q[3];
h q[3];
s q[3];
