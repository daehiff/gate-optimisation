OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[1];
s q[1];
h q[1];
cx q[0],q[1];
h q[1];
s q[1];
h q[1];
cx q[0],q[1];
s q[0];
t q[0];
t q[1];
cx q[0],q[1];
h q[3];
s q[3];
h q[3];
t q[3];