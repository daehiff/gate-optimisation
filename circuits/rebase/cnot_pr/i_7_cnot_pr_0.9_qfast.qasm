OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(5.8454515,1.212798,5.1041076) q[0];
u3(1.0216266,3*pi/2,pi/2) q[1];
u3(pi,1.5103484,3.6832684) q[2];
u3(3*pi/2,0,2.1758708) q[3];
cx q[0],q[3];
u3(pi/2,3*pi/2,pi/2) q[0];
u1(3*pi/2) q[0];
u3(pi/2,3*pi/2,pi/2) q[0];
u1(1.7280161) q[0];
u3(3.7782612,pi/2,pi/2) q[3];
cx q[0],q[3];
u3(pi/2,3*pi/2,pi/2) q[0];
u1(3.1961762) q[0];
u3(pi/2,3*pi/2,pi/2) q[0];
u1(2.0730784) q[0];
u3(0.17931299,2.4149756,5.321165) q[0];
cx q[0],q[1];
u3(pi/2,3*pi/2,pi/2) q[0];
u1(3.0473342) q[0];
u3(pi/2,3*pi/2,pi/2) q[0];
u1(3.6974587) q[0];
u3(3.2358511,4.4977828,5.7273192) q[0];
u3(0.84339176,0.12035058,6.1245976) q[1];
u3(4.4404793,5.19576,5.9603944) q[1];
u3(4.6278297,4.5819065,5.6501328) q[3];
u3(4.4767623,3.7401074,4.6276422) q[3];
cx q[2],q[3];
u3(pi/2,3*pi/2,pi/2) q[2];
u1(0.51555179) q[2];
u3(pi/2,3*pi/2,pi/2) q[2];
u1(5.1021185) q[2];
u3(5.7128723,5.5942101,2.0741001) q[2];
cx q[1],q[2];
u3(pi/2,3*pi/2,pi/2) q[1];
u1(pi/2) q[1];
u3(pi/2,3*pi/2,pi/2) q[1];
u1(3*pi/2) q[1];
u3(5.9912094,3.3006481,4.5464301) q[2];
cx q[1],q[2];
u3(pi/2,3*pi/2,pi/2) q[1];
u1(2.5108587) q[1];
u3(pi/2,3*pi/2,pi/2) q[1];
u3(4.7982936,4.6375309,3.0921174) q[2];
u3(0.99051122,1.5070243,4.7790314) q[2];
u3(2.7507011,3.0874826,3.6282358) q[3];
u3(1.6085981,4.368638,2.1311431) q[3];
cx q[2],q[3];
u3(pi/2,3*pi/2,pi/2) q[2];
u1(3*pi/2) q[2];
u3(pi/2,3*pi/2,pi/2) q[2];
u1(pi/2) q[2];
u3(3.2037545,0.23108148,4.1957083) q[3];
u3(3.0533233,3.2480441,2.5042264) q[3];
cx q[0],q[3];
u3(pi/2,3*pi/2,pi/2) q[0];
u1(1.4414514e-09) q[0];
u3(pi/2,3*pi/2,pi/2) q[0];
u1(0.81892299) q[0];
u3(1.5305821,5.8749246,3*pi/2) q[3];