OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
t q[0];
tdg q[1];
z q[2];
t q[2];
s q[3];
