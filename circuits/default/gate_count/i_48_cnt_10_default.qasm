OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
t q[0];
s q[0];
s q[2];
cx q[3],q[1];
s q[1];
cx q[3],q[1];
h q[1];
s q[1];
h q[1];
h q[1];
s q[1];
h q[1];
h q[1];
s q[1];
h q[1];
cx q[1],q[2];
