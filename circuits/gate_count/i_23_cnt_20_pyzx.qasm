OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
tdg q[0];
h q[0];
sdg q[1];
h q[2];
s q[2];
h q[2];
z q[2];
tdg q[2];
h q[2];
s q[2];
h q[2];
z q[3];
t q[3];
h q[3];