OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
h q[0];
s q[0];
h q[0];
t q[0];
tdg q[1];
tdg q[2];
h q[2];
rz(0.36406281) q[2];
h q[2];
rz(3*pi) q[2];
s q[3];
cx q[0],q[3];
s q[0];
h q[0];
tdg q[0];
h q[0];
s q[0];
z q[3];
t q[3];
h q[3];
s q[3];
h q[3];
rz(4.2236027) q[3];
cx q[3],q[2];
rz(11.33765) q[2];
h q[2];
rz(0.84896349) q[2];
h q[2];
rz(5.0035185) q[2];
cx q[2],q[0];
cx q[2],q[1];
rz(0.48878628) q[3];
h q[3];
s q[3];
h q[3];
tdg q[3];
cx q[3],q[0];
t q[0];
