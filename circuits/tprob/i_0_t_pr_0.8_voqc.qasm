OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[2];
tdg q[2];
s q[3];
cx q[0],q[3];
cx q[0],q[2];
t q[0];
z q[2];
z q[3];
t q[3];
s q[3];
h q[3];
s q[3];
h q[3];
s q[3];
tdg q[3];
cx q[1],q[3];
t q[1];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
cx q[1],q[0];
z q[0];
tdg q[0];
sdg q[1];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
sdg q[1];
s q[3];
s q[3];
h q[3];
s q[3];
h q[3];
s q[3];
tdg q[3];
