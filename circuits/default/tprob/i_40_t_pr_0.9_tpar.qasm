OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[1];
h q[1];
s q[1];
h q[1];
sdg q[2];
tdg q[2];
tdg q[3];
h q[3];
s q[3];
h q[3];
s q[3];
t q[3];
h q[3];
s q[3];
h q[3];
t q[3];
