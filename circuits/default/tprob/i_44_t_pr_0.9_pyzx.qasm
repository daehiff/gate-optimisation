OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
h q[0];
z q[1];
tdg q[1];
h q[1];
z q[1];
s q[2];
h q[2];
cz q[0],q[2];
s q[0];
h q[0];
h q[2];
sdg q[3];
