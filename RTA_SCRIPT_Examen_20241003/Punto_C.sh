#!/bin/bash

ALUMNOS=p1c2_2024_A
PROFESORES=p1c2_2024_P1

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

sudo useradd -m -s /bin/bash -c "alumno1" -g p1c2_2024_gAlumno "alumno1" && \
echo "alumno1:alumno1" | sudo chpasswd

sudo useradd -m -s /bin/bash -c "alumno2" -g p1c2_2024_gAlumno "alumno2" && \
echo "alumno2:alumno2" | sudo chpasswd

sudo useradd -m -s /bin/bash -c "alumno3" -g p1c2_2024_gAlumno "alumno3" && \
echo "alumno3:alumno3" | sudo chpasswd

sudo useradd -m -s /bin/bash -c "$PROFESORES" -g p1c2_2024_gProfesores $PROFESORES
echo "${PROFESORES}:${PROFESORES}" | sudo chpasswd

sudo chown p1c2_2024_A1  /Examenes-UTN/alumno_1
sudo chown p1c2_2024_A2  /Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3  /Examenes-UTN/alumno_3
sudo chown ${PROFESORES} /Examenes-UTN/profesores

sudo chmod 730 /Examenes-UTN/alumno_1
sudo chmod 760 /Examenes-UTN/alumno_2
sudo chmod 700 /Examenes-UTN/alumno_3
sudo chmod 773 /Examenes-UTN/profesores

sudo su -c "whoami" p1c2_2024_A1 | sudo tee /Examenes-UTN/alumno_1/validar1.txt
sudo su -c "whoami" p1c2_2024_A2 | sudo tee /Examenes-UTN/alumno_2/validar2.txt
sudo su -c "whoami" p1c2_2024_A3 | sudo tee /Examenes-UTN/alumno_3/validar3.txt
sudo su -c "whoami" p1c2_2024_P1 | sudo tee /Examenes-UTN/profesores/profesores.txt
