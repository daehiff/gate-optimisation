OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[1];
s q[1];
h q[1];
rz(0.66717276) q[1];
s q[2];
cx q[0],q[2];
rz(3.8087654) q[0];
h q[0];
sdg q[0];
h q[0];
s q[0];
cx q[1],q[0];
sdg q[0];
h q[0];
sdg q[0];
h q[0];
rz(0.66717276) q[0];
rz(11.899198) q[1];
h q[1];
s q[1];
h q[1];
t q[1];
s q[2];
cx q[1],q[2];
s q[2];
s q[3];