Métodos para Sistemas de Ecuaciones Lineales en Fortran

Este repositorio contiene implementaciones en Fortran de diversos métodos para resolver sistemas de ecuaciones lineales, tanto iterativos como directos. Está pensado para estudiantes de matemáticas que desean comprender y practicar estas técnicas numéricas fundamentales.

---

## Métodos Implementados

### Métodos Iterativos

Estos métodos son útiles para sistemas grandes o dispersos donde los métodos directos pueden ser costosos. Consisten en generar sucesivas aproximaciones a la solución hasta alcanzar la convergencia.

*(Aquí puedes añadir detalles si tienes métodos iterativos específicos implementados, como Jacobi, Gauss-Seidel o SOR, por ejemplo. Si no, lo puedes omitir o adaptarlo.)*

---

### Métodos Directos

1. **Eliminación de Gauss**  
   Método clásico que transforma el sistema original en uno equivalente triangular, facilitando la solución por sustitución hacia atrás.

2. **Descomposición LU**  
   Factoriza la matriz del sistema en el producto de una matriz triangular inferior (L) y otra triangular superior (U), para resolver el sistema de forma eficiente.

3. **Descomposición LU sin Pivotación (LU sin B)**  
   Variante de la descomposición LU que no utiliza pivotación, lo que puede ser más rápida pero menos estable numéricamente.

4. **Método para Matrices Tridiagonales**  
   Algoritmo especializado para resolver sistemas con matrices tridiagonales, que aprovecha la estructura para optimizar cálculos y memoria.

---

## Programa Principal

El repositorio incluye un programa principal que permite seleccionar el método a utilizar para resolver un sistema de ecuaciones lineales dado. Esto facilita experimentar con distintos métodos y comparar su rendimiento y precisión.

---

## Personalización de Entrada

Los sistemas de ecuaciones pueden definirse en los archivos de entrada correspondientes (matrices y vectores términos independientes). Asegúrate de modificar estos archivos para adaptar los datos a tu problema específico.

---

## Uso Básico

1. **Compilar** con un compilador Fortran compatible (como `gfortran`).

2. **Ejecutar** el programa principal, seleccionar el método y proporcionar los datos requeridos.

---
