OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[0];
h q[0];
s q[0];
h q[0];
s q[0];
z q[1];
tdg q[1];
h q[1];
s q[1];
h q[1];
sdg q[3];
h q[3];
sdg q[3];
h q[3];
z q[3];