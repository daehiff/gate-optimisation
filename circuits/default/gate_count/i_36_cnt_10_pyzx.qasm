OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[0];
h q[0];
z q[1];
h q[2];
s q[2];
h q[2];
cz q[2],q[3];
cz q[0],q[3];
tdg q[3];
h q[3];
cz q[0],q[3];
cz q[0],q[2];
sdg q[0];
h q[0];
s q[0];
h q[0];
