OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
sdg q[1];
cx q[2],q[0];
t q[0];
t q[2];
cx q[0],q[2];
cx q[2],q[0];
z q[2];
cx q[0],q[2];
cx q[2],q[0];
cx q[0],q[2];
cx q[2],q[0];
cx q[0],q[2];
cx q[2],q[0];
cx q[0],q[2];
cx q[2],q[0];
sdg q[3];
tdg q[3];
h q[3];
s q[3];
h q[3];
s q[3];
h q[3];
s q[3];
h q[3];
sdg q[3];
