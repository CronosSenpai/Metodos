# Resumen del Proyecto de Métodos Numéricos en Fortran

Este repositorio contiene una colección de programas en Fortran que implementan distintos **métodos numéricos fundamentales** para resolver problemas matemáticos comunes en análisis numérico, principalmente:

- **Búsqueda de raíces de funciones** (resolver \( f(x) = 0 \))  
- **Resolución de sistemas de ecuaciones lineales**

---

## Métodos para Búsqueda de Raíces

Se incluyen implementaciones de los siguientes métodos clásicos:

- **Método de Bolzano (Bisección)**  
- **Método de Falsa Posición**  
- **Método de Falsa Posición Modificado**  
- **Método de Newton-Raphson**  
- **Método de la Secante**

Estos métodos están gestionados mediante un programa principal que permite elegir dinámicamente cuál utilizar, facilitando la comparación y análisis de sus características.

Además, las funciones y sus derivadas se definen en módulos independientes para facilitar la modificación y personalización.

---

## Métodos para Sistemas de Ecuaciones Lineales

Este conjunto de programas abarca métodos tanto directos como iterativos para resolver sistemas lineales \( Ax = b \):

- **Eliminación de Gauss**  
- **Descomposición LU (con y sin pivotación)**  
- **Método especializado para matrices tridiagonales**  
- *(y otros métodos iterativos si están implementados)*

También aquí se incluye un programa principal que permite seleccionar el método deseado y proporciona flexibilidad para ingresar matrices y vectores de términos independientes.

---

## Objetivo del Proyecto

El propósito es recopilar algunos trabajos hechos telematicamente durante la pandemia y enviarselos a los profesores:

- Entender la implementación real de métodos numéricos clave.  
- Experimentar con distintos algoritmos para comparar eficiencia, estabilidad y convergencia.  
- Personalizar funciones, sistemas y parámetros para adaptarlos a diferentes problemas.

---

## Cómo usar

1. **Compilar** los programas usando un compilador Fortran (como `gfortran`).  
2. **Ejecutar** los programas principales para cada grupo de métodos.  
3. **Modificar** los archivos de funciones, derivadas o datos de entrada para probar con tus propios casos.  

---
