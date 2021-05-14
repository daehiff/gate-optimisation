OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
z q[0];
s q[2];
t q[2];
z q[3];
cx q[3],q[0];
