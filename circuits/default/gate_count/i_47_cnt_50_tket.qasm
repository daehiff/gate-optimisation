OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[1];
sdg q[1];
h q[1];
cx q[0],q[1];
h q[0];
s q[0];
h q[0];
rz(3*pi) q[2];
h q[2];
s q[2];
h q[2];
t q[2];
cx q[2],q[1];
s q[1];
cx q[3],q[0];
z q[0];
tdg q[0];
x q[0];
s q[0];
cx q[1],q[0];
cx q[0],q[2];
h q[0];
s q[0];
h q[0];
h q[3];
s q[3];
h q[3];
cx q[1],q[3];
cx q[2],q[1];
rz(10.927018) q[2];
h q[2];
s q[2];
h q[2];
s q[2];
z q[3];
t q[3];
x q[3];
s q[3];
cx q[0],q[3];
cx q[1],q[0];
s q[0];
h q[0];
s q[0];
h q[0];
s q[0];
rz(6.5681094) q[1];
h q[1];
rz(2.5935642) q[1];
h q[1];
rz(12.281446) q[1];
h q[3];
s q[3];
h q[3];
rz(3.0926374) q[3];
cx q[3],q[2];
h q[2];
rz(1.6393528) q[2];
h q[2];
s q[2];
cx q[0],q[2];
h q[0];
s q[0];
h q[0];
rz(7.9029368) q[3];
h q[3];
s q[3];
h q[3];
tdg q[3];
cx q[3],q[2];
cx q[2],q[1];
h q[2];
s q[2];
h q[2];
cx q[3],q[0];
cx q[0],q[2];
