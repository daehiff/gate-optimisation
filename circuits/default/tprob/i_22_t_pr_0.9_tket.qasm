OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
t q[0];
x q[0];
s q[0];
t q[1];
h q[1];
s q[1];
h q[1];
t q[1];
sdg q[2];
z q[3];
t q[3];
x q[3];
s q[3];
cx q[3],q[0];
h q[3];
s q[3];
h q[3];
cx q[2],q[3];
