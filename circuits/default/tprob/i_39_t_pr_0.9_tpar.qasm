OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
sdg q[0];
tdg q[0];
tdg q[1];
sdg q[2];
tdg q[2];
s q[3];
