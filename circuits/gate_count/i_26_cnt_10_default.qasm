OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[0];
s q[0];
h q[0];
t q[0];
t q[1];
t q[1];
cx q[1],q[0];
h q[2];
s q[2];
h q[2];
h q[3];
s q[3];
h q[3];
s q[3];
s q[3];
s q[3];
