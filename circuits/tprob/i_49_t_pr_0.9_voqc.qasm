OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[0];
s q[1];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
z q[2];
t q[2];
z q[3];
