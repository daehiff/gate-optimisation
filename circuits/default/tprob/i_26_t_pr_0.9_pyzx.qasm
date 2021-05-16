OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[1];
tdg q[1];
cz q[2],q[3];
z q[3];
h q[3];
