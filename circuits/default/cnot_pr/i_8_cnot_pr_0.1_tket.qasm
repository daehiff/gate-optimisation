OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[0];
s q[1];
h q[1];
sdg q[1];
h q[1];
s q[1];
rz(6.1132669) q[2];
h q[2];
rz(pi/3) q[2];
h q[2];
rz(5.3278687) q[2];
s q[3];
cx q[3],q[1];
cx q[0],q[1];
sdg q[0];
h q[0];
sdg q[0];
h q[0];
tdg q[0];
z q[1];
h q[1];
s q[1];
h q[1];
tdg q[1];
cx q[1],q[2];
h q[1];
s q[1];
h q[1];
t q[1];
h q[3];
s q[3];
h q[3];
t q[3];
