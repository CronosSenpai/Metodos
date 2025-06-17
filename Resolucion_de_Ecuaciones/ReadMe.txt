# Información

Los archivos que no tienen la extensión `.f90` son generados automáticamente por Microsoft Visual Studio en GitHub. Desconozco si tienen alguna utilidad práctica, pero **no son necesarios para ejecutar los programas**.

---

## Descripción del Proyecto

Este programa implementa varios algoritmos numéricos para la **búsqueda de raíces de funciones** (es decir, resolver \( f(x) = 0 \)). Los métodos disponibles son:

1. **Método de Bolzano (Bisección)**  
   Método sencillo y robusto que divide iterativamente un intervalo donde la función cambia de signo para localizar la raíz. Aunque es lento, garantiza convergencia si la función es continua.

2. **Método de Falsa Posición**  
   Similar al método de Bolzano, pero usa interpolación lineal para mejorar la aproximación y acelerar la convergencia.

3. **Método de Falsa Posición Modificado**  
   Variante que evita que uno de los extremos quede fijo indefinidamente, mejorando la velocidad de convergencia en ciertos casos.

4. **Método de Newton-Raphson**  
   Método iterativo que utiliza la derivada de la función para aproximar la raíz rápidamente, siempre que la estimación inicial sea cercana y la función diferenciable.

5. **Método de la Secante**  
   No requiere la derivada explícita. Emplea aproximaciones secantes entre dos puntos para iterar hacia la raíz, combinando rapidez con menor costo computacional.

---

## Programa Principal

Todos los métodos se gestionan mediante un programa principal que permite **seleccionar dinámicamente el método a usar** para encontrar la raíz de una función dada. Esto facilita comparar el rendimiento y comportamiento de cada método bajo distintas funciones y condiciones iniciales.

---

## Personalización de la Función

Para modificar la función objetivo y su derivada, solo es necesario editar los archivos:

- `funcion.f90` — donde se define la función \( f(x) \)
- `derivada.f90` — donde se define su derivada \( f'(x) \)

Estos archivos son llamados por los métodos que requieren la función o ambas expresiones, como es el caso de Newton-Raphson.

---

