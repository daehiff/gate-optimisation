OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
u3(pi/2,pi,2.9537476) q[0];
u3(1.7605224,4.8624361,1.8331757) q[1];
u3(0.49358334,4.8483082,3.3590359) q[2];
u3(0.4889551,0.18966978,3.5920948) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(2*pi) q[1];
rx(pi/2) q[1];
rz(1.9596767) q[1];
u3(5.6948118,3*pi/2,pi/2) q[3];
cx q[1],q[3];
rx(pi/2) q[1];
rz(3.4863796) q[1];
rx(pi/2) q[1];
rz(3.8253178) q[1];
u3(4.9800726,2.131659,5.7098149) q[3];
u3(3.9101823,5.6684871,3.1332043) q[3];
cx q[2],q[3];
rx(pi/2) q[2];
rz(1.8587313e-08) q[2];
rx(pi/2) q[2];
rz(5.9071515) q[2];
u3(5.5788483,3*pi/2,pi/2) q[3];
cx q[2],q[3];
rx(pi/2) q[2];
rz(1.8284921) q[2];
rx(pi/2) q[2];
rz(5.8573953) q[2];
u3(1.9638219,1.3219324,6.245871) q[3];
u3(3.0282468,0.41461214,4.1090014) q[3];
cx q[0],q[3];
rx(pi/2) q[0];
rz(pi/2) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
u3(4.0032295,6.1662484,4.533913) q[3];
cx q[0],q[3];
rx(pi/2) q[0];
rz(3*pi/2) q[0];
rx(pi/2) q[0];
rz(3.7772638) q[0];
u3(4.8475291,4.9002341,3*pi/2) q[3];
