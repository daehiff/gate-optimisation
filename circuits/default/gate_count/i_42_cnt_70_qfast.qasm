OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(pi/2,2.0041992,pi/2) q[0];
u3(5.5892808,6.1490667,0.95914422) q[1];
u3(pi/4,1.3537846,pi) q[2];
u3(0.12431147,0.18567851,0.59830901) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(0.78606378) q[1];
rx(pi/2) q[1];
rz(5.9154098) q[1];
u3(3.1728861,2.0889497,5.9670155) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(5.6711359) q[1];
rx(pi/2) q[1];
rz(5.436159) q[1];
u3(1.4698033,0.86859333,2.0402416) q[1];
u3(5.5253593,2.4589023,3.3238549) q[3];
u3(5.0845091,5.6703289,1.703935) q[3];
cx q[2],q[3];
rx(pi/2) q[2];
rz(7.366161e-10) q[2];
rx(pi/2) q[2];
rz(1.1597572) q[2];
u3(1.1926975,5.8229159,2.5015654) q[3];
cx q[2],q[3];
rx(pi/2) q[2];
rz(5.5984237) q[2];
rx(pi/2) q[2];
rz(6.1258088) q[2];
u3(3.8842927,3.5501425,3.58183) q[2];
cx q[0],q[2];
rx(pi/2) q[0];
rz(1.6932929) q[0];
rx(pi/2) q[0];
rz(1.5712144) q[0];
u3(1.7440555,1.4464283,3.1196264) q[0];
u3(1.7643646,3*pi/2,3*pi/2) q[2];
u3(4.3484579,5.0300817,5.9039268) q[3];
u3(5.4683127,5.4608707,4.475874) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(5.4455052) q[1];
rx(pi/2) q[1];
rz(3.9661694) q[1];
u3(1.1390427,0.63415962,3.6588668) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(1.7148932) q[1];
rx(pi/2) q[1];
rz(4.7389546) q[1];
u3(4.1473297,0.38165378,0.43244293) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(1.2089976) q[0];
u3(2.816773,5.8789671,4.28839) q[1];
cx q[0],q[1];
rx(pi/2) q[0];
rz(7.5526634e-08) q[0];
rx(pi/2) q[0];
rz(2.7797939) q[0];
u3(6.1082513,2.4662932,3.6974069) q[1];
u3(5.2171398,1.5270761,3.2695912) q[1];
u3(2.7041741,5.1633431,2.5956516) q[3];
u3(1.1387929,0.35941603,2.0460929) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(5*pi/6) q[1];
rx(pi/2) q[1];
rz(pi/2) q[1];
u3(3.4628841,1.8570939,3.4139716) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(pi/2) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
u3(2.461977,3.4218455,5.8769749) q[3];
