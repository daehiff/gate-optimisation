OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
t q[0];
z q[1];
tdg q[1];
z q[2];
z q[3];
cx q[2],q[3];
cx q[0],q[3];
t q[3];