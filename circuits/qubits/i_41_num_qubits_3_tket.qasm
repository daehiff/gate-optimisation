OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
z q[1];
x q[1];
s q[1];
z q[2];
t q[2];
cx q[2],q[0];
t q[0];
h q[0];
s q[0];
h q[0];
rz(9.3887405) q[0];
cx q[1],q[2];
h q[1];
s q[1];
h q[1];
z q[1];
tdg q[1];
cx q[0],q[1];
z q[1];
t q[1];
h q[1];
s q[1];
h q[1];
tdg q[1];
sdg q[2];
h q[2];
rz(12.186054) q[2];
h q[2];
z q[2];
cx q[0],q[2];
rz(9.4608154) q[0];
h q[0];
s q[0];
h q[0];
z q[0];
tdg q[0];
rz(0.82243135) q[2];
h q[2];
rz(1.3051962) q[2];
h q[2];
rz(12.290872) q[2];
cx q[1],q[2];
cx q[0],q[2];
h q[0];
s q[0];
h q[0];
cx q[1],q[0];
h q[0];
sdg q[0];
h q[0];
t q[0];
cx q[1],q[0];