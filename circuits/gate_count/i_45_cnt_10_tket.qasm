OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[0];
t q[2];
cx q[1],q[2];
cx q[0],q[1];
t q[1];
cx q[1],q[2];
h q[3];
s q[3];
h q[3];
