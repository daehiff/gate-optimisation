OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
sdg q[1];
cx q[1],q[2];
cx q[2],q[1];
cx q[3],q[0];
s q[0];
h q[0];
s q[0];
h q[0];
s q[0];
z q[0];
s q[0];
h q[0];
s q[0];
h q[0];
s q[0];
t q[0];
z q[3];
s q[3];
h q[3];
s q[3];
h q[3];
s q[3];
z q[3];
s q[3];
h q[3];
s q[3];
h q[3];
s q[3];
cx q[1],q[3];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
cx q[1],q[0];
s q[0];
tdg q[0];
s q[0];
h q[0];
s q[0];
h q[0];
s q[0];
z q[0];
t q[0];
s q[0];
h q[0];
s q[0];
h q[0];
s q[0];
sdg q[0];
sdg q[1];
z q[3];
cx q[2],q[3];
z q[2];
cx q[3],q[2];
cx q[3],q[0];
t q[0];
cx q[3],q[0];
cx q[1],q[0];
tdg q[3];
s q[3];
h q[3];
s q[3];
h q[3];
s q[3];
sdg q[3];
