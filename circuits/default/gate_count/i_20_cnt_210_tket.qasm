OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
t q[0];
h q[0];
s q[0];
h q[0];
z q[0];
cx q[2],q[1];
t q[1];
h q[1];
s q[1];
h q[1];
z q[1];
rz(0.42492298) q[2];
h q[2];
rz(0.83189849) q[2];
h q[2];
rz(1.2749963) q[2];
tdg q[3];
h q[3];
s q[3];
h q[3];
rz(11.193483) q[3];
cx q[3],q[2];
sdg q[2];
h q[2];
s q[2];
h q[2];
rz(3.4512584) q[2];
cx q[2],q[1];
sdg q[1];
h q[1];
sdg q[1];
h q[1];
z q[1];
cx q[2],q[0];
sdg q[2];
h q[2];
rz(11.268872) q[2];
h q[2];
rz(3*pi) q[2];
rz(0.58748945) q[3];
h q[3];
rz(3*pi) q[3];
h q[3];
s q[3];
cx q[0],q[3];
sdg q[0];
h q[0];
sdg q[0];
h q[0];
rz(2.9561488) q[0];
cx q[0],q[2];
rz(9.6102218) q[0];
h q[0];
s q[0];
h q[0];
z q[0];
tdg q[0];
h q[2];
rz(1.8440945) q[2];
h q[2];
z q[2];
cx q[1],q[2];
h q[1];
s q[1];
h q[1];
s q[1];
cx q[1],q[0];
z q[2];
t q[2];
cx q[2],q[0];
z q[0];
t q[0];
cx q[1],q[0];
sdg q[3];
h q[3];
z q[3];
t q[3];
h q[3];
s q[3];
cx q[3],q[1];
s q[1];
cx q[2],q[3];
cx q[2],q[0];
s q[2];
h q[2];
z q[2];
tdg q[2];
h q[2];
s q[2];
tdg q[3];
x q[3];
s q[3];
cx q[3],q[0];
h q[3];
s q[3];
h q[3];
cx q[1],q[3];
h q[1];
s q[1];
h q[1];
cx q[0],q[1];
t q[1];
cx q[1],q[2];
cx q[0],q[1];
z q[1];
t q[1];
cx q[0],q[1];
h q[0];
s q[0];
h q[0];
s q[1];
cx q[3],q[2];
z q[2];
t q[2];
x q[2];
s q[2];
cx q[2],q[1];
cx q[1],q[0];
s q[0];
h q[1];
s q[1];
h q[1];
h q[2];
s q[2];
h q[2];
h q[3];
s q[3];
h q[3];
cx q[0],q[3];
z q[3];
tdg q[3];
x q[3];
s q[3];
cx q[3],q[2];
cx q[1],q[3];
z q[1];
h q[1];
sdg q[1];
h q[1];
s q[1];
z q[2];
t q[2];
h q[2];
sdg q[2];
h q[2];
cx q[1],q[2];
cx q[1],q[0];
z q[3];
t q[3];
x q[3];
s q[3];
cx q[3],q[2];
z q[2];
t q[2];
x q[2];
s q[2];
cx q[3],q[2];
cx q[0],q[3];
h q[0];
s q[0];
h q[0];
tdg q[2];
cx q[0],q[2];
cx q[0],q[1];
sdg q[0];
h q[0];
rz(0.92729522) q[0];
h q[0];
rz(3*pi) q[0];
s q[1];
t q[2];
h q[2];
s q[2];
h q[2];
t q[2];
t q[3];
h q[3];
s q[3];
h q[3];
rz(10.068279) q[3];
cx q[3],q[0];
sdg q[0];
h q[0];
sdg q[0];
h q[0];
rz(4.854286) q[0];
cx q[2],q[0];
rz(2.4980915) q[3];
h q[3];
sdg q[3];
h q[3];
s q[3];
cx q[3],q[1];
s q[1];
