OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
sdg q[0];
h q[0];
sdg q[0];
h q[0];
z q[2];
cx q[2],q[1];
cx q[0],q[2];
sdg q[1];
h q[1];
sdg q[1];
h q[1];
z q[1];
t q[3];
