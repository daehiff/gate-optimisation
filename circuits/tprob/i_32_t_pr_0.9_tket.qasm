OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
tdg q[0];
h q[0];
s q[0];
h q[0];
rz(3*pi) q[0];
sdg q[1];
tdg q[2];
cx q[0],q[2];
h q[0];
s q[0];
h q[0];
s q[2];
z q[3];
t q[3];
h q[3];
s q[3];
h q[3];
z q[3];
tdg q[3];
