OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[0];
h q[0];
tdg q[0];
h q[0];
h q[1];
z q[1];
t q[1];
z q[2];
tdg q[2];
h q[2];
cz q[0],q[2];
h q[0];
z q[2];
t q[2];
h q[3];
z q[3];
h q[3];
t q[3];
h q[3];
z q[3];
