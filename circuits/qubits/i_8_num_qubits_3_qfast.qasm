OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
u3(pi/4,3*pi/2,pi/4) q[0];
u3(3*pi/2,pi/2,3*pi/2) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
rx(pi/2) q[0];
rz(pi/2) q[0];
u3(1.4036762e-07,6.204323,4.7912513) q[1];
u3(5.1565444e-10,4.8978141,5.312362) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
rx(pi/2) q[0];
rz(5.6677056) q[0];
u3(2*pi,3.6159005,5.8088775) q[1];
u3(4.7379219,0.46299508,4.7634882) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(5.6001219) q[1];
u3(5.2101434,2.0063708,2.1544902) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(1.9017283) q[1];
rx(pi/2) q[1];
rz(5.9032847) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(0.84806208) q[0];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
u3(1.6609312,2.3987463,0.097706726) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(5.0999857) q[0];
rx(pi/2) q[0];
rz(0.61547971) q[0];
u3(4.5795544,3*pi/2,3*pi/2) q[1];
u3(5.4427657,5.406137,5.7766337) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
u3(5.2731699,3.6017509,0.82061671) q[2];
