OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
t q[0];
h q[0];
s q[0];
h q[0];
z q[0];
tdg q[0];
s q[1];
cx q[0],q[1];
s q[1];
sdg q[2];
z q[3];
tdg q[3];
cx q[3],q[0];
