OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
t q[0];
sdg q[1];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
sdg q[1];
s q[2];
cx q[2],q[0];
cx q[2],q[1];
z q[3];
t q[3];
cx q[3],q[2];
