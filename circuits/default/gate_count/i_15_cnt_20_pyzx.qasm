OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[0];
z q[0];
h q[0];
h q[1];
cz q[0],q[1];
z q[1];
h q[1];
h q[2];
cz q[1],q[2];
cz q[0],q[2];
t q[1];
z q[2];
h q[2];
cz q[0],q[2];
z q[0];
s q[2];
s q[3];
