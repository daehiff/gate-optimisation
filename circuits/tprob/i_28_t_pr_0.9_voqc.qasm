OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
sdg q[1];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
t q[1];
t q[2];
z q[3];
cx q[0],q[3];
sdg q[0];
z q[3];