OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
t q[0];
h q[1];
s q[1];
h q[1];
s q[2];
cx q[2],q[0];
cx q[1],q[2];
sdg q[3];
tdg q[3];
cx q[1],q[3];
cx q[3],q[1];
cx q[3],q[2];
cx q[2],q[3];
cx q[3],q[1];
cx q[1],q[3];
cx q[3],q[1];
