OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[0];
t q[0];
sdg q[2];
tdg q[2];
s q[3];
t q[3];
cx q[3],q[1];
cx q[1],q[3];
sdg q[1];
z q[3];
h q[3];
s q[3];
h q[3];
cx q[3],q[1];
cx q[1],q[3];
cx q[3],q[1];