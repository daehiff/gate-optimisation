OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
sdg q[1];
z q[2];
tdg q[2];
s q[2];
h q[2];
s q[2];
h q[2];
s q[2];
z q[2];
tdg q[2];
tdg q[3];
cx q[0],q[3];
tdg q[0];
s q[3];
h q[3];
s q[3];
h q[3];
s q[3];
sdg q[3];
