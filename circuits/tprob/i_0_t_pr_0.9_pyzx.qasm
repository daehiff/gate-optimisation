OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[0];
tdg q[1];
h q[1];
z q[1];
h q[2];
h q[2];
cz q[0],q[2];
h q[0];
cz q[0],q[2];
z q[0];
tdg q[3];
h q[3];
s q[3];
