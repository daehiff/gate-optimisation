OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[0];
cz q[0],q[1];
z q[1];
t q[1];
h q[1];
cz q[0],q[1];
sdg q[0];
h q[0];
s q[0];
tdg q[3];
