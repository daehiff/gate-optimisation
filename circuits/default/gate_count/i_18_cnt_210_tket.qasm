OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
sdg q[1];
x q[1];
s q[1];
z q[2];
tdg q[2];
h q[2];
s q[2];
h q[2];
cx q[3],q[0];
s q[0];
cx q[0],q[1];
rz(2.9596208) q[0];
x q[0];
s q[0];
cx q[2],q[1];
rz(10.94093) q[1];
h q[1];
sdg q[1];
h q[1];
s q[1];
cx q[0],q[1];
rz(6.1012134) q[0];
h q[0];
sdg q[0];
h q[0];
s q[0];
sdg q[1];
h q[1];
s q[1];
h q[1];
rz(2.4108384) q[1];
h q[2];
s q[2];
h q[2];
cx q[0],q[2];
z q[2];
t q[2];
sdg q[3];
h q[3];
z q[3];
t q[3];
h q[3];
tdg q[3];
cx q[3],q[0];
tdg q[0];
cx q[0],q[2];
cx q[2],q[1];
z q[1];
t q[1];
cx q[1],q[0];
sdg q[1];
h q[1];
rz(8.8622561) q[1];
h q[1];
sdg q[2];
h q[2];
t q[2];
h q[2];
s q[2];
rz(11.950891) q[3];
h q[3];
rz(2*pi/3) q[3];
h q[3];
rz(9.2821895) q[3];
cx q[0],q[3];
tdg q[3];
h q[3];
s q[3];
h q[3];
cx q[0],q[3];
rz(10.05285) q[3];
h q[3];
rz(1.0631177) q[3];
h q[3];
rz(0.36706833) q[3];
cx q[3],q[1];
z q[1];
h q[1];
rz(9.6476542) q[1];
h q[1];
s q[1];
cx q[0],q[1];
sdg q[0];
h q[0];
tdg q[0];
h q[0];
z q[0];
t q[0];
z q[1];
t q[1];
h q[1];
s q[1];
h q[1];
z q[1];
tdg q[1];
cx q[0],q[1];
tdg q[1];
h q[1];
s q[1];
h q[1];
rz(3*pi) q[1];
rz(3.3644689) q[3];
h q[3];
t q[3];
h q[3];
s q[3];
cx q[2],q[3];
cx q[2],q[1];
s q[3];
h q[3];
s q[3];
h q[3];
s q[3];
cx q[0],q[3];
cx q[1],q[3];
z q[1];
h q[1];
s q[1];
h q[1];
tdg q[1];
cx q[0],q[1];
z q[3];
tdg q[3];
cx q[3],q[2];
cx q[2],q[0];
s q[0];
cx q[0],q[1];
h q[0];
s q[0];
h q[0];
h q[2];
s q[2];
h q[2];
cx q[1],q[2];
h q[1];
s q[1];
h q[1];
cx q[3],q[1];
z q[1];
t q[1];
cx q[3],q[2];
z q[2];
cx q[3],q[0];
s q[0];
cx q[0],q[1];
h q[0];
s q[0];
h q[0];
s q[0];
cx q[2],q[1];
s q[1];
cx q[1],q[3];
h q[1];
s q[1];
h q[1];
cx q[1],q[2];
cx q[0],q[1];
sdg q[0];
h q[0];
sdg q[0];
h q[0];
z q[0];
tdg q[0];
t q[1];
x q[1];
s q[1];
rz(3*pi) q[2];
h q[2];
s q[2];
h q[2];
z q[2];
tdg q[2];
cx q[1],q[2];
h q[1];
s q[1];
h q[1];
z q[2];
tdg q[2];
sdg q[3];
h q[3];
sdg q[3];
h q[3];
z q[3];
cx q[3],q[0];
z q[0];
t q[0];
h q[0];
s q[0];
h q[0];
tdg q[0];
cx q[1],q[3];
sdg q[1];
h q[1];
tdg q[1];
h q[1];
cx q[3],q[2];
