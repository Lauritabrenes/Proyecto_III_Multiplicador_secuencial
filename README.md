# Proyecto_III_Multiplicador_secuencial


#### Instituto Tecnológico de Costa Rica
#### EL 3307: Diseño Lógico
#### Grupo 20
#### Profesor: Ing. Kaleb Alfaro Badilla

#### Integrantes:
1. Montenegro Goméz Samuel
2. Brenes Espinoza Laura Elena
3. Moya Vargas Austin Joan

#### I Semestre 2023

### Introducción

El diseño de sistemas digitales requiere habilidad de implementación de algoritmos por medio de circuitos lógicos. Muchos algoritmos en la práctica usan iteraciones o búcles que a la hora de traducirlos a implementaciones de lógica booleana, surge la necesidad de un control lógico que habilite el correcto flujo de datos en circuito. Asimismo, las interfaces de bloque a bloque se diseñan con protocolos de bus para ayudar a estandarizar la comunicación entre unidades. Estos protocolos de bus facilitan las pruebas unitarias sobre bloques porque toda unidad se puede controlar de una manera similar. 
En este proyecto busca introducir la implementación de algoritmos al estudiante, por medio del diseño de una unidad de cálculo de multiplicación. Y de la misma forma, esta unidad deberá respetar un protocolo de bus para su correcto funcionamiento.

### Descripción general
Introducir al estudiante a la implementación de algoritmos por medio de máquinas de estados complejas.

### Objetivos específicos
1. Elaborar una implementación de un diseño digital en una FPGA.
2. Construir un testbench básico para validar las especificaciones del diseño.
3. Implementar el algoritmo de Booth con una Máquina de estados con técnicas avanzadas.
4. Coordinación de trabajo en equipo mediante el uso de herramientas de control de versiones.
5. Practicar planificación de tareas para trabajo de grupo.

### Especificación del diseño
Se solicita el desarrollo de una unidad de multiplicación secuencial. El mismo deberá construirse según las pautas fundamentales de diseño digital sincrónico. El circuito constará de tres bloques de constructivos o subsistemas:

1. Subsistema de lectura de datos.
2. Subsistema de cálculo de multiplicación.
3. Subsistema de despliegue de resultado.

## Diagramas

#### General

#### Diagrama de bloques del subsistema de cáculo de multiplicación. 
![image](https://github.com/Lauritabrenes/Proyecto_III_Multiplicador_secuencial/assets/111261878/e6bed718-10ae-493c-83e7-54cb4a1c47ca)


#### Diagrama de bloques del circuito que implementa la ruta de datos para el algoritmo de Booth.
![image](https://github.com/Lauritabrenes/Proyecto_III_Multiplicador_secuencial/assets/111261878/9b136262-e761-4318-b44a-6ebc5ce8ec63)


#### Subsistema de lectura de datos.
![image](https://github.com/Lauritabrenes/Proyecto_III_Multiplicador_secuencial/assets/111261878/66ae4bd9-f638-46eb-8274-319ddfae830c)

#### Antirebote del sistema de lectura.
![image](https://github.com/Lauritabrenes/Proyecto_III_Multiplicador_secuencial/assets/111261878/dd8f6c72-817e-4ae7-b4f2-16354970ee48)


#### Subsistema de cálculo de multiplicación.
![image](https://github.com/Lauritabrenes/Proyecto_III_Multiplicador_secuencial/assets/111261878/a809c3c4-3fcf-44f0-9b13-14c2659b7427)


#### Subsistema de despliegue de resultado.
![image](https://github.com/Lauritabrenes/Proyecto_III_Multiplicador_secuencial/assets/111261878/e31789c4-abd2-4d1a-a804-ba160610a7a4)


#### Funcionamiento Fundamental Subsistema de cálculo de multiplicación
![image](https://github.com/Lauritabrenes/Proyecto_III_Multiplicador_secuencial/assets/111261878/3d1a6627-8844-4ed2-8c0e-c00b04f43f65)


#### Diagrama de estado subsistema de cálculo de multiplicación
![image](https://github.com/Lauritabrenes/Proyecto_III_Multiplicador_secuencial/assets/111259804/4f5f1859-ad17-4a25-ac58-c3a7157185eb)


#### Conexiones basicas de la Nexys 3
![image](https://github.com/Lauritabrenes/Proyecto_III_Multiplicador_secuencial/assets/111261878/dac17467-469d-4d02-8e8e-5ea7f5ead801)

Nexys 3 Reference Manual (https://digilent.com/reference/programmable-logic/nexys-3/reference-manual)
Nexys 4DDR Reference Manual (https://digilent.com/reference/programmable-logic/nexys-4-ddr/reference-manual)

## Pruebas
#### Testbench Subsistema de Lectura
![image](https://github.com/Lauritabrenes/Proyecto_III_Multiplicador_secuencial/assets/111307104/05593d85-21a8-46a1-bec8-5cbcad0b5b79)

#### Testbench Multiplicacion con FSM
![image](https://github.com/Lauritabrenes/Proyecto_III_Multiplicador_secuencial/assets/111307104/501bc7d9-65ca-4443-9f29-717f98835ccc)



#### Testbench Subsistema de Despliegue 
![Imagen de WhatsApp 2023-06-13 a las 19 33 39](https://github.com/Lauritabrenes/Proyecto_III_Multiplicador_secuencial/assets/111261878/1a4dda38-660c-426f-b58a-a89e143225ca)




## Evaluación
![image](https://github.com/Lauritabrenes/Proyecto_III_Multiplicador_secuencial/assets/111261878/08a09e69-5356-4cb2-a14f-5b99b2a7fd17)

