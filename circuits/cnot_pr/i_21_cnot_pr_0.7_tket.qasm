OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[0];
x q[0];
s q[0];
sdg q[1];
x q[1];
s q[1];
cx q[1],q[2];
z q[3];
cx q[3],q[0];
s q[0];
cx q[2],q[3];
cx q[1],q[2];
s q[2];
cx q[3],q[2];
cx q[2],q[0];
s q[0];
cx q[3],q[1];
s q[1];
cx q[1],q[2];
cx q[2],q[3];
cx q[3],q[2];
cx q[0],q[3];
s q[2];
h q[2];
s q[2];
h q[2];
s q[2];
cx q[2],q[0];
s q[0];
cx q[1],q[2];
cx q[0],q[1];
s q[3];
cx q[3],q[1];
cx q[1],q[2];
cx q[3],q[2];
cx q[2],q[0];
cx q[0],q[3];
cx q[1],q[2];
