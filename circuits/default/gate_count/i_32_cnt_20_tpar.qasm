OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
z q[2];
h q[2];
z q[2];
h q[2];
t q[2];
h q[2];
s q[2];
h q[2];
cx q[1],q[3];
s q[1];
h q[1];
s q[1];
h q[1];
z q[3];
h q[3];
s q[3];
h q[3];
s q[3];
