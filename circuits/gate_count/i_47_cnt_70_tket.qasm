OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
x q[0];
s q[0];
h q[1];
sdg q[1];
h q[1];
cx q[0],q[1];
z q[2];
t q[2];
x q[2];
s q[2];
z q[3];
tdg q[3];
x q[3];
s q[3];
cx q[3],q[1];
cx q[0],q[3];
cx q[0],q[2];
sdg q[1];
h q[1];
sdg q[1];
h q[1];
z q[1];
tdg q[2];
h q[2];
s q[2];
h q[2];
tdg q[3];
cx q[3],q[0];
rz(5.1306537) q[0];
z q[3];
h q[3];
t q[3];
h q[3];
s q[3];
cx q[3],q[1];
cx q[1],q[2];
h q[1];
s q[1];
h q[1];
sdg q[2];
h q[2];
sdg q[2];
h q[2];
z q[2];
rz(2.1318195) q[3];
h q[3];
rz(2.0597562) q[3];
h q[3];
rz(0.92890024) q[3];
cx q[0],q[3];
rz(12.148106) q[0];
h q[0];
s q[0];
h q[0];
z q[0];
z q[3];
h q[3];
rz(0.72651312) q[3];
h q[3];