OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
sdg q[0];
x q[0];
s q[0];
z q[2];
tdg q[2];
z q[3];
cx q[2],q[3];
t q[2];
x q[2];
s q[2];
cx q[2],q[0];
cx q[0],q[3];
cx q[2],q[0];
t q[0];
sdg q[2];
h q[2];
rz(12.252665) q[2];
h q[2];
s q[3];
cx q[3],q[1];
rz(0.31370577) q[1];
cx q[1],q[0];
rz(11.150158) q[0];
h q[0];
rz(3*pi) q[0];
h q[0];
s q[0];
cx q[1],q[2];
rz(2.8278869) q[1];
h q[1];
s q[1];
h q[1];
t q[1];
rz(5.0117038) q[2];
h q[2];
rz(0.83308297) q[2];
h q[2];
rz(11.350827) q[2];
rz(5.3432035) q[3];
h q[3];
sdg q[3];
h q[3];
s q[3];
cx q[0],q[3];
rz(0.93998181) q[0];
h q[0];
s q[0];
h q[0];
rz(3*pi) q[0];
cx q[0],q[1];
z q[3];
h q[3];
rz(0.15458364) q[3];
h q[3];
t q[3];
cx q[1],q[3];
h q[1];
s q[1];
h q[1];
s q[3];
h q[3];
s q[3];
h q[3];
s q[3];
cx q[3],q[0];
h q[3];
sdg q[3];
h q[3];
z q[3];
t q[3];
