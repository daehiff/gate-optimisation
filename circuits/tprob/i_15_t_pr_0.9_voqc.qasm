OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
t q[0];
cx q[1],q[0];
t q[1];
tdg q[2];
sdg q[3];
cx q[2],q[3];
cx q[0],q[2];
z q[0];
tdg q[0];
s q[3];
