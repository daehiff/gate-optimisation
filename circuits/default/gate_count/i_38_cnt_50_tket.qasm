OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[0];
s q[0];
h q[0];
t q[0];
z q[1];
tdg q[1];
h q[1];
sdg q[1];
h q[1];
z q[2];
tdg q[2];
h q[2];
z q[2];
tdg q[2];
h q[2];
s q[2];
tdg q[3];
cx q[3],q[0];
t q[0];
h q[0];
s q[0];
h q[0];
rz(3*pi) q[0];
cx q[3],q[1];
cx q[0],q[3];
sdg q[0];
h q[0];
sdg q[0];
h q[0];
t q[0];
cx q[0],q[2];
h q[0];
s q[0];
h q[0];
s q[2];
s q[3];
cx q[3],q[1];
cx q[2],q[1];
cx q[1],q[0];
rz(0.61547971) q[3];
h q[3];
rz(pi/3) q[3];
h q[3];
rz(10.040258) q[3];
