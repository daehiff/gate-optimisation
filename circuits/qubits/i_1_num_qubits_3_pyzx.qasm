OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
cx q[0],q[1];
cx q[1],q[0];
cx q[0],q[1];
h q[0];
h q[0];
h q[1];
cz q[0],q[1];
s q[1];
h q[1];
h q[2];
cz q[0],q[2];
cz q[0],q[1];
sdg q[0];
h q[0];
h q[2];
cz q[1],q[2];
cz q[0],q[2];
cz q[0],q[1];
z q[1];
t q[1];
h q[1];
t q[2];
h q[2];
cz q[0],q[2];
cz q[0],q[1];
z q[0];
t q[0];
h q[0];
z q[0];
tdg q[0];
h q[0];
cx q[0],q[1];
cz q[1],q[2];
cz q[0],q[2];
h q[0];
h q[2];
