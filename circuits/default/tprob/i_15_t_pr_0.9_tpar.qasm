OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
s q[0];
t q[0];
z q[1];
sdg q[2];
s q[3];
h q[3];
s q[3];
h q[3];
s q[3];
t q[3];
