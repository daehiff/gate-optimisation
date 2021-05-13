OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
t q[0];
z q[2];
z q[3];
tdg q[3];
h q[3];
