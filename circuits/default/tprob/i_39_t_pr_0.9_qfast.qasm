OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(0.31291227,0.96380223,2.4842648) q[0];
u3(1.7920824,0.036097225,2.7887003) q[1];
u3(pi,4.9662952,2.9039117) q[2];
u3(2.8843315,3.2115489,5.8353922) q[3];
cx q[0],q[3];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(1.7059304) q[0];
u3(5.9106451,pi/2,3*pi/2) q[3];
cx q[0],q[3];
rx(pi/2) q[0];
rz(2.88888) q[0];
rx(pi/2) q[0];
rz(1.5389333) q[0];
u3(0.86409782,0.79290692,3.9284558) q[0];
cx q[0],q[1];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(5.4190022) q[0];
u3(2*pi,2.8041577,0.33743495) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(2.2536914) q[0];
rx(pi/2) q[0];
rz(0.2232244) q[0];
u3(1.6508836,4.7421465,5.7195994) q[0];
cx q[0],q[2];
rx(pi/2) q[0];
rz(1.4253077e-09) q[0];
rx(pi/2) q[0];
rz(4.708379) q[0];
u3(4.4911029,2.7090868,3.1054954) q[1];
u3(pi,3.9420623,0.80046966) q[2];
cx q[0],q[2];
rx(pi/2) q[0];
rz(1.5716139) q[0];
rx(pi/2) q[0];
rz(3.0988707) q[0];
u3(pi,2.8488129,3.1426239) q[2];
u3(2.7074403,6.2017303,0.92305222) q[3];
