Jaqueline Sánchez López
iOS Developer
Febrero 2026

Descripción
Aplicación iOS desarrollada en UIKit que muestra un catalogo de peliculas consumiendo una API publica (https://ghibliapi.vercel.app/#section/Studio-Ghibli-API).

El aplicativo incluye:
  * Pantalla principal:
      * Carrusel de elementos destacados
      * Sliders horizontales por categorias
      * Pull to refresh
  * Pantalla de detalle:
      * Reproduccion de trailer
      * Descripcion detallada
  * Test unitarios basicos
  * Consumo de API REST
  * Decodificacion de datos JSON
  * Chache de imagenes
  * Manejo de estados de carga y error
  * Compatibilidad con Dark Mode

Arquitectura:
Sigue un patron VIPER, el cual perimte una separacion clara de responsabilidades, escalabilidad a futuro, mejor organizacion en proyectos medianos y grandes.

Compilacion y ejecucion:
Requisitos:
  * Xcode 15+
  * iOS 18.5+
  * Swift 5+

Pasos:
  1. Clonar repositorio
     git clone https://github.com/jhaky25/technicalTest.git
  2. Abrir el archivo technicalTest.xcodeproj
  3. Seleccionar un simulador o dispositivo fisico
  4. Ejecutar con Cmd + R

Testing:
Incluye pruebas unitarias basicas de red y decodificacion de datos:
  * Validacion de request exitoso
  * Simulacion de respuesta HTTP 200

