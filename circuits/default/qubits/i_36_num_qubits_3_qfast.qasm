OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
u3(2.5261129,pi/2,6.2954732e-11) q[0];
u3(pi/2,pi,pi) q[1];
u3(1.0205084,2.7918029,3.7506964) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(4.1727142) q[1];
rx(pi/2) q[1];
rz(4.9428325) q[1];
u3(2.6046915,5.974592,6.2449641) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(5.6061245) q[1];
u3(5.0704349,3.7753226,4.6279312) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(4.3247563) q[1];
rx(pi/2) q[1];
rz(5.61499) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
rx(pi/2) q[0];
rz(2*pi) q[0];
u3(4.8944547,5.4217584,4.2104653) q[1];
u3(0.75426762,1.6872044,3.6509185) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(9.5354835e-12) q[1];
rx(pi/2) q[1];
rz(3.5674275) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
rx(pi/2) q[0];
rz(pi/2) q[0];
u3(3*pi/2,pi,1.4619223) q[1];
u3(1.2410775,2.4365164,2.7780393) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
u3(2.1720863,6.0292499,1.8907326) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
u3(1.1635137e-13,5.5144399,3.9103381) q[1];
u3(0.98080876,0.58497398,3.1585682) q[2];
