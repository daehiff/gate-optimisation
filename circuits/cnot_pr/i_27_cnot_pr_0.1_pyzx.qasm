OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[0];
h q[0];
h q[1];
h q[1];
cz q[1],q[2];
sdg q[1];
h q[1];
h q[2];
tdg q[2];
h q[2];
cz q[1],q[2];
z q[1];
t q[1];
h q[3];
cz q[0],q[3];
t q[3];
h q[3];
cz q[0],q[3];
