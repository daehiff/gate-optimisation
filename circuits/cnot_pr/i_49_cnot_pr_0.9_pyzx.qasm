OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
cx q[1],q[2];
cx q[2],q[1];
cx q[1],q[2];
cx q[0],q[1];
cx q[1],q[0];
cx q[0],q[1];
h q[0];
h q[1];
h q[2];
cz q[0],q[3];
sdg q[3];
h q[3];
cz q[1],q[3];
cz q[0],q[3];
h q[0];
h q[1];
cz q[1],q[2];
h q[2];
sdg q[3];
