OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
tdg q[1];
h q[1];
tdg q[2];
t q[3];
h q[3];
s q[3];
