OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[1];
cz q[0],q[2];
z q[0];
sdg q[2];
h q[2];
h q[3];
cz q[1],q[3];
h q[1];
t q[1];
