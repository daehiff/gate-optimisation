OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
t q[0];
tdg q[1];
h q[2];
s q[2];
h q[2];
z q[2];
tdg q[2];
s q[3];