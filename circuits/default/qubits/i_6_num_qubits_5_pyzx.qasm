OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
h q[1];
h q[2];
t q[3];
h q[3];
z q[3];
tdg q[3];
h q[3];
h q[4];
cz q[1],q[4];
s q[1];
h q[1];
cz q[1],q[4];
tdg q[1];
h q[1];
cz q[1],q[4];
h q[1];
tdg q[1];
z q[4];
t q[4];
h q[4];
cz q[2],q[4];
s q[2];
h q[2];
cz q[2],q[4];
cz q[0],q[4];
sdg q[0];
h q[0];
cz q[0],q[3];
s q[0];
z q[2];
tdg q[2];
h q[2];
cz q[2],q[4];
s q[3];
h q[3];
sdg q[4];
