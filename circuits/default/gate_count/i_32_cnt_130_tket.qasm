OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
t q[0];
cx q[0],q[1];
t q[1];
h q[1];
rz(3*pi) q[1];
h q[1];
s q[1];
cx q[1],q[0];
z q[0];
h q[0];
s q[0];
h q[0];
t q[0];
sdg q[2];
h q[2];
t q[2];
h q[2];
s q[2];
z q[3];
cx q[3],q[2];
s q[2];
cx q[2],q[1];
tdg q[1];
h q[1];
s q[1];
h q[1];
z q[1];
cx q[0],q[1];
rz(0.020602678) q[1];
h q[1];
rz(2.3560884) q[1];
h q[1];
rz(4.7269568) q[1];
h q[2];
s q[2];
h q[2];
h q[3];
s q[3];
h q[3];
cx q[2],q[3];
cx q[0],q[3];
rz(10.196629) q[2];
x q[2];
s q[2];
cx q[2],q[1];
h q[1];
rz(1.5853657) q[1];
h q[1];
rz(2.3426477) q[2];
h q[2];
sdg q[2];
h q[2];
s q[2];
cx q[2],q[0];
h q[0];
s q[0];
h q[0];
z q[0];
t q[0];
cx q[2],q[1];
s q[1];
cx q[0],q[1];
h q[0];
s q[0];
h q[0];
rz(3*pi) q[1];
h q[1];
t q[1];
h q[1];
rz(3*pi) q[1];
h q[2];
s q[2];
h q[2];
cx q[2],q[0];
s q[0];
cx q[1],q[0];
h q[2];
s q[2];
h q[2];
rz(10.040258) q[3];
h q[3];
rz(2*pi/3) q[3];
h q[3];
rz(0.95531662) q[3];
cx q[3],q[2];
cx q[1],q[3];
tdg q[2];
s q[3];
cx q[0],q[3];
h q[0];
s q[0];
h q[0];
z q[0];
cx q[0],q[1];
cx q[0],q[2];
h q[0];
s q[0];
h q[0];
sdg q[1];
h q[1];
sdg q[1];
h q[1];
z q[1];
t q[2];
z q[3];
tdg q[3];
h q[3];
s q[3];
h q[3];
cx q[3],q[0];
