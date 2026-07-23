Así mañana podemos continuar exactamente desde aquí.

# Aprendiendo VHDL - Bitácora de progreso

## Entorno de trabajo actual

Por ahora trabajaremos usando GitHub como repositorio principal.

GitHub será usado para:

- Guardar código VHDL.
- Organizar proyectos.
- Documentar avances.
- Llevar control de versiones.

Más adelante se puede agregar:
- GHDL para simulación.
- GTKWave para visualizar señales.
- Vivado para FPGA.

---

# Estructura actual del proyecto

Repositorio:

aprendiendo-vhdl

Estructura:


aprendiendo-vhdl
│
├── src
│ └── and_gate.vhd
│
├── testbench
│ └── tb_and_gate.vhd
│
└── README.md


---

# Conceptos aprendidos

## VHDL no es como Python

Python ejecuta instrucciones:

```python
resultado = funcion(valor)

VHDL describe hardware.

Ejemplo:

Y <= A and B;

No es una instrucción que ocurre una vez.

Describe un circuito permanente:

A ----\
       AND ---- Y
B ----/

Entity
La entidad define la interfaz del circuito.

Ejemplo:

entity and_gate is

port(
    A : in std_logic;
    B : in std_logic;
    Y : out std_logic
);

end and_gate;

Define:

Entradas.
Salidas.
Nombre del componente.
Conceptualmente parecido a definir una clase en programación.

Architecture
La arquitectura define el comportamiento interno.

Ejemplo:

architecture comportamiento of and_gate is

begin

    Y <= A and B;

end comportamiento;

Aquí se describe cómo funciona el circuito.

Primer circuito creado
AND Gate
Archivo:

src/and_gate.vhd

Código:

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity and_gate is

    port(
        A : in std_logic;
        B : in std_logic;
        Y : out std_logic
    );

end and_gate;


architecture comportamiento of and_gate is

begin

    Y <= A and B;

end comportamiento;

Testbench
Archivo:

testbench/tb_and_gate.vhd

El testbench sirve para probar el circuito.

Genera entradas:

A <= '0';
B <= '1';

y observa la salida.

Estructura:

Entradas
   |
   v
Circuito
   |
   v
Salida

Tabla de verdad AND
A	B	Y
0	0	0
0	1	0
1	0	0
1	1	1

Segundo circuito en progreso
OR Gate
Pendiente crear:

src/or_gate.vhd

y:

testbench/tb_or_gate.vhd

Código del circuito:

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity or_gate is

    port(
        A : in std_logic;
        B : in std_logic;
        Y : out std_logic
    );

end or_gate;


architecture comportamiento of or_gate is

begin

    Y <= A or B;

end comportamiento;

Tabla de verdad OR
A	B	Y
0	0	0
0	1	1
1	0	1
1	1	1

Ruta de aprendizaje planeada
Nivel 1 - Puertas lógicas
[x] AND

[ ] OR

[ ] NOT

[ ] XOR

Nivel 2 - Circuitos combinacionales
[ ] Multiplexor

[ ] Medio sumador

[ ] Sumador completo

[ ] Sumador de 4 bits

Nivel 3 - Circuitos secuenciales
[ ] Flip-Flops

[ ] Registros

[ ] Contadores

Nivel 4 - Diseño avanzado
[ ] Máquinas de estados

[ ] ALU

[ ] Procesador sencillo

Ideas importantes
Un componente VHDL es parecido a una clase:

Python:

class Cuenta:

VHDL:

entity cuenta is

Una instancia:

Python:

objeto = Clase()

VHDL:

UUT: entity work.and_gate

Estamos creando bloques de hardware reutilizables.

Próximo paso
Continuar con:

Crear OR Gate en GitHub.
Crear su testbench.
Comparar AND vs OR.
Crear XOR.
Empezar a combinar componentes para crear circuitos más grandes.

---

Mañana solo tendrás que abrir este archivo y decirme: **"continuemos desde APUNTES_VHDL.md"**.

El siguiente punto será **terminar OR Gate y después construir un medio sumador**, que será el primer circuito donde veremos cómo varias puertas lógicas trabajan juntas para hacer una operación matemática real.


