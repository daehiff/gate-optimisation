OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
t q[0];
h q[0];
z q[0];
tdg q[0];
h q[0];
rz(7.6122134) q[0];
sdg q[1];
h q[1];
z q[1];
tdg q[1];
h q[1];
h q[2];
s q[2];
h q[2];
t q[2];
t q[3];
cx q[3],q[2];
cx q[1],q[3];
z q[1];
h q[1];
rz(0.79235952) q[1];
h q[1];
rz(0.49225365) q[2];
cx q[2],q[1];
h q[1];
rz(2.3492331) q[1];
h q[1];
z q[1];
rz(10.503321) q[2];
h q[2];
z q[2];
tdg q[2];
h q[2];
t q[2];
sdg q[3];
h q[3];
rz(1.8125645) q[3];
h q[3];
cx q[0],q[3];
rz(0.24176819) q[0];
h q[0];
s q[0];
h q[0];
s q[0];
h q[3];
rz(11.539204) q[3];
h q[3];
s q[3];
cx q[3],q[2];