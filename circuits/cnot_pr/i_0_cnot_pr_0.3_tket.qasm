OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
sdg q[0];
h q[0];
sdg q[0];
h q[0];
z q[0];
rz(2.7654917) q[1];
h q[1];
rz(3*pi) q[1];
h q[1];
s q[1];
t q[2];
cx q[0],q[2];
sdg q[0];
h q[0];
rz(11.259047) q[0];
h q[0];
cx q[1],q[0];
rz(10.740799) q[0];
h q[0];
rz(0.81933745) q[0];
h q[0];
rz(3.506028) q[0];
rz(12.19027) q[1];
h q[1];
z q[1];
tdg q[1];
h q[1];
s q[1];
sdg q[3];
h q[3];
sdg q[3];
h q[3];
z q[3];
cx q[2],q[3];
z q[2];
tdg q[2];
h q[2];
rz(3*pi) q[2];
h q[2];
s q[2];
cx q[2],q[0];
z q[0];
h q[0];
s q[0];
h q[0];
tdg q[0];
cx q[0],q[1];
h q[0];
s q[0];
h q[0];
t q[1];
cx q[2],q[0];
s q[3];
cx q[1],q[3];
s q[3];
