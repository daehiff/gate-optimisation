OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[0];
h q[0];
z q[0];
s q[1];
tdg q[2];
tdg q[3];
h q[3];
z q[3];
tdg q[3];
