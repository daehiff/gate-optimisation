OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
tdg q[0];
s q[1];
cx q[0],q[1];
h q[1];
s q[1];
h q[1];
tdg q[1];
sdg q[2];
x q[2];
s q[2];
z q[3];
h q[3];
s q[3];
h q[3];
tdg q[3];
cx q[3],q[2];
z q[2];
h q[2];
s q[2];
h q[2];
z q[2];
t q[2];
cx q[1],q[2];
h q[1];
s q[1];
h q[1];
sdg q[2];
h q[2];
sdg q[2];
h q[2];
t q[2];
cx q[2],q[3];
t q[4];
h q[4];
sdg q[4];
h q[4];
s q[4];
cx q[4],q[0];
