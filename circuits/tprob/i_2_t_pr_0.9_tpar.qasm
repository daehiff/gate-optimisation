OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[1];
t q[1];
s q[2];
t q[2];
cx q[3],q[0];
s q[0];
t q[0];
sdg q[3];
tdg q[3];
cx q[0],q[3];
cx q[3],q[0];
sdg q[3];
cx q[0],q[3];
cx q[3],q[0];
