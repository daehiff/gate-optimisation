OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
rz(3*pi) q[0];
h q[0];
s q[0];
h q[0];
z q[0];
t q[0];
sdg q[1];
h q[1];
sdg q[1];
h q[1];
cx q[1],q[0];
rz(7.7119278) q[0];
h q[0];
rz(1.4301545) q[0];
h q[0];
rz(3.9370134) q[0];
s q[2];
x q[2];
s q[2];
cx q[1],q[2];
h q[1];
s q[1];
h q[1];
rz(2.8534692) q[1];
cx q[1],q[0];
h q[0];
rz(2.9420281) q[0];
h q[0];
z q[0];
rz(0.28812344) q[1];
h q[1];
s q[1];
h q[1];
z q[1];
tdg q[1];
s q[2];
cx q[2],q[0];
cx q[1],q[0];
h q[0];
s q[0];
h q[0];
z q[0];
tdg q[0];
h q[2];
s q[2];
h q[2];
