OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
t q[2];
cx q[1],q[2];
cx q[0],q[1];
s q[0];
cx q[1],q[2];
t q[1];
sdg q[3];
s q[3];
h q[3];
s q[3];
h q[3];
s q[3];
sdg q[3];
