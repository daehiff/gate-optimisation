OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(5.3056854,pi,pi/2) q[0];
u3(4.7013992,2.8306908,4.7055837) q[1];
u3(pi/2,2*pi,5.9380825) q[2];
cx q[0],q[2];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
u3(6.2322127,3*pi/2,pi/2) q[2];
cx q[0],q[2];
rx(pi/2) q[0];
rz(3.734889) q[0];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
u3(1.6899336,1.160527,3.3377765) q[2];
u3(1.3816776,6.1530477,0.47944603) q[2];
u3(0.87631516,4.2455024,2.4368241) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(2*pi) q[1];
rx(pi/2) q[1];
rz(4.919881) q[1];
u3(pi,5.9224661,5.9224661) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(5.0377908) q[1];
rx(pi/2) q[1];
rz(2.2233323) q[1];
u3(1.5628902,5.3125398,0.42887696) q[1];
cx q[1],q[2];
rx(pi/2) q[1];
rz(3*pi/2) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
u3(2.4760939,3*pi/2,3*pi/2) q[2];
cx q[1],q[2];
rx(pi/2) q[1];
rz(0.58666386) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
u3(pi/2,2.8270902,2.0256152e-10) q[2];
u3(5.2334546,3.8824113,0.96533657) q[3];
