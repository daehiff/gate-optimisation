OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
tdg q[0];
h q[0];
rz(3*pi) q[0];
h q[0];
s q[0];
t q[1];
h q[1];
s q[1];
h q[1];
rz(11.149314) q[1];
tdg q[2];
h q[2];
sdg q[2];
h q[2];
s q[2];
cx q[2],q[0];
rz(11.164232) q[3];
h q[3];
rz(2.3490494) q[3];
h q[3];
rz(1.6897711) q[3];
cx q[1],q[3];
rz(1.4170562) q[1];
h q[1];
t q[1];
h q[1];
z q[1];
tdg q[1];
cx q[1],q[0];
h q[1];
s q[1];
h q[1];
cx q[2],q[1];
h q[2];
s q[2];
h q[2];
z q[3];
h q[3];
rz(1.6906222) q[3];
h q[3];
z q[3];
cx q[1],q[3];
h q[1];
s q[1];
h q[1];
t q[3];
