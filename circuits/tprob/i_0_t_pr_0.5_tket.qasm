OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
rz(1.4486812) q[0];
h q[0];
rz(0.90343079) q[0];
h q[0];
rz(10.545124) q[0];
rz(9.2943674) q[1];
x q[1];
s q[1];
cx q[1],q[0];
rz(3*pi) q[0];
h q[0];
rz(1.0660217) q[0];
h q[0];
z q[0];
rz(1.4403858) q[1];
h q[1];
rz(3*pi) q[1];
h q[1];
s q[1];
rz(8.4694613) q[2];
h q[2];
rz(2*pi/3) q[2];
h q[2];
rz(7.2385019) q[2];
t q[3];
