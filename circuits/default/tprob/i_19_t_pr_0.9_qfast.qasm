OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(5.9718517,1.0941006,3.2296964) q[0];
u3(2.4536468,4.3320689,2.2932023) q[1];
u3(4.4872798,2.9217339,1.3805919) q[2];
u3(0.71885214,0.84082042,4.1645739) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(1.9452433) q[1];
u3(0.32132951,pi/2,3*pi/2) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(5.6593703) q[1];
rx(pi/2) q[1];
rz(5.1432434) q[1];
u3(0.62161031,3.4857996,3.1450794) q[1];
cx q[1],q[2];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(2.8904759) q[1];
u3(pi,4.3675671,4.3675671) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(2.4874873) q[1];
rx(pi/2) q[1];
rz(1.1199754) q[1];
u3(1.3456871,3.3317971,6.0633266) q[2];
u3(5.2940137,2.8107895,5.1969155) q[3];
u3(4.1345583,3.8952083,6.1728039) q[3];
cx q[0],q[3];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(2.047492) q[0];
u3(pi,2.0041675,2.0041675) q[3];
cx q[0],q[3];
rx(pi/2) q[0];
rz(2.830259) q[0];
rx(pi/2) q[0];
rz(0.69729453) q[0];
u3(5.2517455,0.53197084,3.8372847) q[3];
