OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
rz(11.839144) q[0];
z q[1];
h q[1];
s q[1];
h q[1];
sdg q[2];
h q[2];
rz(11.00861) q[2];
h q[2];
cx q[0],q[2];
rz(5.4396153) q[0];
h q[0];
s q[0];
h q[0];
s q[0];
h q[2];
rz(1.5577607) q[2];
h q[2];
z q[2];
tdg q[2];
tdg q[3];
h q[3];
s q[3];
h q[3];
cx q[1],q[3];
cx q[3],q[2];
tdg q[2];
x q[2];
s q[2];
cx q[2],q[0];
z q[0];
tdg q[0];
cx q[1],q[0];
cx q[3],q[1];
cx q[1],q[2];
cx q[1],q[0];
t q[0];
x q[0];
s q[0];
sdg q[2];
h q[2];
z q[2];
tdg q[2];
h q[2];
s q[2];
cx q[1],q[2];
h q[1];
s q[1];
h q[1];
s q[1];
s q[2];
t q[3];
h q[3];
rz(3*pi) q[3];
h q[3];
s q[3];
cx q[3],q[0];
h q[3];
s q[3];
h q[3];
cx q[3],q[1];
cx q[0],q[3];
h q[0];
s q[0];
h q[0];
cx q[1],q[0];
h q[1];
s q[1];
h q[1];
tdg q[1];
cx q[2],q[3];
cx q[2],q[0];
s q[0];
h q[0];
z q[0];
tdg q[0];
h q[0];
s q[0];
h q[2];
s q[2];
h q[2];
cx q[2],q[1];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
h q[2];
s q[2];
h q[2];
tdg q[3];
cx q[3],q[2];
s q[2];
h q[2];
z q[2];
t q[2];
h q[2];
s q[2];
cx q[1],q[2];
z q[1];
tdg q[1];
x q[1];
s q[1];
rz(3*pi) q[2];
h q[2];
s q[2];
h q[2];
z q[2];
t q[2];
cx q[3],q[2];
