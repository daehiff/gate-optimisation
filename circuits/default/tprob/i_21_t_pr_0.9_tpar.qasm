OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
tdg q[0];
t q[1];
h q[1];
s q[1];
h q[1];
s q[2];
s q[3];
t q[3];