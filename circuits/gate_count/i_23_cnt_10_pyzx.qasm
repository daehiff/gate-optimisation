OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
h q[0];
z q[0];
h q[0];
t q[2];
cx q[1],q[3];
cx q[3],q[1];
cx q[1],q[3];
h q[1];
cz q[1],q[3];
s q[1];
h q[1];
h q[3];
cz q[1],q[3];
h q[3];
