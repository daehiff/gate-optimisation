OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[0];
s q[1];
t q[3];
cx q[3],q[2];
s q[2];
s q[2];
h q[2];
s q[2];
h q[2];
h q[3];
s q[3];
h q[3];
t q[3];
h q[3];
s q[3];
h q[3];
