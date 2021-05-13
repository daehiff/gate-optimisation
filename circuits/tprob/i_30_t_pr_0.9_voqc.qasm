OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
z q[2];
tdg q[2];
cx q[3],q[0];
z q[3];
