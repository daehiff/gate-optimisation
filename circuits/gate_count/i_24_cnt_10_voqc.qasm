OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
cx q[1],q[2];
s q[1];
s q[1];
h q[1];
s q[1];
h q[1];
s q[1];
sdg q[1];
t q[2];
s q[3];
cx q[0],q[3];
sdg q[0];
s q[0];
h q[0];
s q[0];
h q[0];
s q[0];
sdg q[0];
t q[3];
