OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[2];
s q[2];
h q[2];
cx q[1],q[2];
cx q[0],q[2];
cx q[0],q[1];
h q[0];
s q[0];
h q[0];
s q[0];
t q[1];
rz(0.38986163) q[2];
h q[2];
rz(1.9385693) q[2];
h q[2];
rz(5.4232824) q[2];
s q[3];
x q[3];
s q[3];
cx q[1],q[3];
h q[1];
sdg q[1];
h q[1];
rz(3.9710009) q[1];
cx q[1],q[2];
rz(10.166166) q[1];
h q[1];
s q[1];
h q[1];
rz(3*pi) q[1];
z q[2];
h q[2];
rz(11.528974) q[2];
h q[2];
s q[2];
s q[3];
cx q[3],q[1];
cx q[1],q[0];
t q[0];
h q[1];
s q[1];
h q[1];
s q[1];
cx q[2],q[0];
cx q[0],q[1];
z q[0];
h q[0];
z q[0];
t q[0];
h q[0];
s q[0];
h q[2];
s q[2];
h q[2];
cx q[3],q[2];
tdg q[2];
h q[3];
s q[3];
h q[3];
s q[3];
cx q[1],q[3];
h q[1];
s q[1];
h q[1];
h q[3];
s q[3];
h q[3];
z q[3];
tdg q[3];
cx q[1],q[3];
cx q[2],q[1];
h q[2];
s q[2];
h q[2];
z q[2];
tdg q[2];
rz(3*pi) q[3];
h q[3];
s q[3];
h q[3];
tdg q[3];
cx q[3],q[1];
s q[1];
cx q[1],q[0];
cx q[1],q[2];
h q[1];
s q[1];
h q[1];
