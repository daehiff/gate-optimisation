OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[2];
cx q[2],q[0];
t q[0];
sdg q[3];
h q[3];
sdg q[3];
h q[3];
z q[3];
cx q[3],q[1];
rz(4.5424705) q[1];
h q[1];
rz(2*pi/3) q[1];
h q[1];
rz(10.380095) q[1];
h q[3];
s q[3];
h q[3];
cx q[2],q[3];
cx q[2],q[0];
z q[0];
t q[0];
h q[0];
s q[0];
h q[0];
h q[2];
s q[2];
h q[2];
s q[2];
tdg q[3];
h q[3];
s q[3];
h q[3];
t q[3];
cx q[3],q[0];
rz(6.898665) q[3];
h q[3];
rz(2*pi/3) q[3];
h q[3];
rz(9.5946964) q[3];
cx q[3],q[1];
h q[1];
z q[1];
tdg q[1];
h q[1];
z q[1];
tdg q[3];
h q[3];
s q[3];
h q[3];
s q[3];
cx q[3],q[2];
cx q[0],q[3];
