OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
t q[0];
z q[1];
h q[1];
rz(2.063983) q[1];
h q[1];
z q[1];
sdg q[2];
cx q[2],q[0];
s q[0];
rz(0.61547971) q[2];
h q[2];
rz(pi/3) q[2];
h q[2];
rz(10.040258) q[2];
z q[3];
tdg q[3];
h q[3];
s q[3];
h q[3];
s q[3];
cx q[3],q[1];
rz(3*pi) q[1];
h q[1];
rz(1.0776097) q[1];
h q[1];
rz(3*pi) q[1];
cx q[0],q[1];