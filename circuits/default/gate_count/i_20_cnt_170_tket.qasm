OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[0];
s q[0];
h q[0];
s q[0];
cx q[0],q[2];
cx q[1],q[3];
z q[3];
tdg q[3];
cx q[2],q[3];
cx q[0],q[2];
h q[0];
s q[0];
h q[0];
cx q[1],q[0];
s q[0];
cx q[0],q[3];
h q[0];
s q[0];
h q[0];
s q[0];
t q[1];
x q[1];
s q[1];
cx q[0],q[1];
t q[2];
h q[2];
sdg q[2];
h q[2];
s q[2];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[2];
t q[2];
cx q[1],q[2];
sdg q[3];
h q[3];
s q[3];
h q[3];
tdg q[3];
cx q[1],q[3];
cx q[0],q[1];
sdg q[0];
h q[0];
sdg q[0];
h q[0];
rz(4.76965) q[0];
s q[1];
cx q[1],q[2];
sdg q[2];
h q[2];
sdg q[2];
h q[2];
z q[2];
tdg q[2];
h q[3];
rz(4.9189366) q[3];
h q[3];
z q[3];
cx q[0],q[3];
rz(7.7967206) q[0];
h q[0];
z q[0];
t q[0];
h q[0];
tdg q[0];
cx q[0],q[2];
cx q[1],q[2];
sdg q[1];
h q[1];
z q[1];
t q[1];
h q[1];
tdg q[1];
h q[2];
s q[2];
h q[2];
t q[2];
cx q[2],q[0];
rz(3.5005521) q[0];
x q[0];
s q[0];
cx q[1],q[2];
rz(10.977519) q[1];
h q[1];
sdg q[1];
h q[1];
s q[1];
cx q[0],q[1];
rz(3.5005521) q[0];
h q[0];
t q[0];
h q[0];
t q[0];
h q[1];
rz(3.123537) q[1];
h q[1];
z q[1];
t q[1];
cx q[1],q[0];
s q[0];
z q[2];
tdg q[2];
cx q[2],q[0];
sdg q[3];
h q[3];
sdg q[3];
h q[3];
rz(11.202122) q[3];
cx q[3],q[1];
h q[1];
rz(1.5692666) q[1];
h q[1];
z q[1];
cx q[3],q[2];
cx q[3],q[0];
s q[0];
cx q[0],q[2];
t q[2];
h q[2];
s q[2];
h q[2];
sdg q[3];
h q[3];
s q[3];
h q[3];
rz(4.7108593) q[3];
cx q[3],q[1];
sdg q[1];
h q[1];
s q[1];
h q[1];
rz(10.997104) q[1];
rz(0.78692786) q[3];
h q[3];
rz(3*pi) q[3];
h q[3];
s q[3];
cx q[3],q[2];
cx q[0],q[2];
cx q[2],q[1];
