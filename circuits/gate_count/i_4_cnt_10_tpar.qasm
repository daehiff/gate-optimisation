OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[1];
cx q[0],q[1];
cx q[1],q[0];
h q[0];
s q[0];
h q[0];
t q[1];
cx q[1],q[0];
cx q[0],q[1];
cx q[1],q[0];
h q[2];
s q[2];
h q[2];
t q[2];
h q[2];
s q[2];
h q[2];
s q[2];
