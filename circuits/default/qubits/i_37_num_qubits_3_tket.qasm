OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
h q[0];
s q[0];
h q[0];
z q[0];
t q[0];
h q[1];
sdg q[1];
h q[1];
s q[2];
h q[2];
s q[2];
h q[2];
s q[2];
cx q[1],q[2];
h q[1];
s q[1];
h q[1];
z q[1];
tdg q[1];
cx q[1],q[0];
t q[0];
h q[0];
s q[0];
h q[0];
z q[1];
h q[1];
t q[1];
h q[1];
s q[1];
cx q[0],q[1];
rz(0.93407303) q[0];
h q[0];
s q[0];
h q[0];
s q[0];
sdg q[1];
h q[1];
z q[1];
t q[1];
h q[1];
z q[1];
tdg q[1];
rz(10.061501) q[2];
h q[2];
s q[2];
h q[2];
s q[2];
cx q[0],q[2];
h q[0];
tdg q[0];
h q[0];
s q[0];
cx q[0],q[2];
z q[0];
h q[0];
s q[0];
h q[0];
rz(1.7194712) q[0];
z q[2];
h q[2];
rz(1.4221215) q[2];
h q[2];
cx q[1],q[2];
cx q[0],q[1];
s q[1];
cx q[1],q[2];
