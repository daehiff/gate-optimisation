OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
sdg q[0];
s q[0];
h q[0];
s q[0];
h q[0];
s q[0];
cx q[1],q[0];
t q[0];
cx q[1],q[0];
sdg q[0];
z q[2];
t q[2];
cx q[1],q[3];
z q[1];
t q[1];
cx q[1],q[2];
t q[2];
cx q[1],q[2];
t q[3];
