OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
t q[0];
tdg q[1];
h q[1];
tdg q[1];
tdg q[2];
z q[3];
tdg q[3];
h q[3];
z q[3];
