OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
tdg q[0];
h q[0];
rz(1.0959841) q[0];
h q[0];
t q[1];
t q[2];
cx q[1],q[2];
z q[2];
h q[2];
s q[2];
h q[2];
rz(1.7294805) q[2];
cx q[2],q[0];
sdg q[0];
h q[0];
sdg q[0];
h q[0];
rz(5.1872012) q[0];
rz(2.3674288) q[2];
h q[2];
rz(pi/3) q[2];
h q[2];
rz(10.380095) q[2];
z q[3];
cx q[1],q[3];
t q[3];
h q[3];
rz(3*pi) q[3];
h q[3];
s q[3];
cx q[3],q[1];
z q[1];
tdg q[1];
x q[1];
s q[1];
h q[3];
s q[3];
h q[3];
cx q[3],q[2];
cx q[1],q[3];
cx q[2],q[0];
h q[2];
s q[2];
h q[2];
s q[2];
cx q[2],q[1];
