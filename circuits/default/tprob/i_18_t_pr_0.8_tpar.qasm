OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
t q[1];
sdg q[2];
tdg q[2];
h q[3];
s q[3];
s q[3];
h q[3];
sdg q[3];
cx q[0],q[3];
sdg q[0];
tdg q[0];
h q[3];
s q[3];
h q[3];
s q[3];