OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
t q[0];
sdg q[2];
h q[3];
h q[3];
t q[3];
h q[3];
cz q[1],q[3];
z q[1];
tdg q[1];
h q[1];
h q[3];
cz q[1],q[3];
h q[1];
z q[3];
tdg q[3];