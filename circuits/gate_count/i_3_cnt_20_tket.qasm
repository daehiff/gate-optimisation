OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
rz(2.7410952) q[0];
h q[0];
rz(3*pi) q[0];
h q[0];
s q[0];
z q[1];
tdg q[1];
rz(0.40049749) q[2];
h q[2];
sdg q[2];
h q[2];
s q[2];
cx q[0],q[2];
rz(12.165873) q[0];
h q[0];
s q[0];
h q[0];
z q[0];
rz(8.2257305) q[2];
h q[2];
rz(2.2798969) q[2];
h q[2];
rz(11.535074) q[2];
t q[3];
cx q[3],q[1];
s q[1];
h q[3];
s q[3];
h q[3];
t q[3];