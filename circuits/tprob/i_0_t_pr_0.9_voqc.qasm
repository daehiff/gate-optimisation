OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
t q[0];
z q[1];
z q[2];
t q[2];
cx q[3],q[0];
sdg q[0];
tdg q[3];
s q[3];
h q[3];
s q[3];
h q[3];
s q[3];
t q[3];
