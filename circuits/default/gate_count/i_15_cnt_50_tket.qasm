OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
sdg q[0];
s q[1];
x q[1];
s q[1];
z q[2];
tdg q[2];
s q[3];
x q[3];
s q[3];
cx q[1],q[3];
cx q[1],q[0];
z q[0];
t q[0];
cx q[0],q[2];
sdg q[1];
h q[1];
sdg q[1];
h q[1];
rz(5.3869239) q[1];
z q[2];
tdg q[2];
h q[2];
s q[2];
h q[2];
rz(6.3940486) q[3];
h q[3];
sdg q[3];
h q[3];
s q[3];
cx q[1],q[3];
rz(4.0378541) q[1];
h q[1];
s q[1];
h q[1];
t q[1];
z q[3];
h q[3];
rz(0.67453487) q[3];
h q[3];
z q[3];
tdg q[3];
cx q[3],q[0];
