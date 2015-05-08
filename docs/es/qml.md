# QML

## ¿Por qué migrar la interfaz de usuario a QML?

* Adaptado a los requisitos de dispositivos móviles o con pantallas táctiles
 * Liber...
 * El modelo de posicionamiento de elementos, mediante anclas (`anchors`) está mucho mejor adaptado a este entorno
 * Ya que no puede asumir nada acerca del aspecto de los elementos gráficos en los interfaces de dispositivos móviles, los elementos visuales se construyen normalmente desde cero, superponiendo características. Este enfoque es radicalmente distinto al de los Qt-Widgets, en el que los elementos gráficos (widgets) ya están finalizados, y el aspecto de cada uno de sus subelementos se altera (mediante código, mediante hojas de estilo, ...).
* Permite desacoplar en mucha mayor medida la lógica de negocio de la lógica de interfaz de usuario. Esto es debido a que, al contrario que con el caso de Qt-Widgets, donde los interfaces de usuario son un ente estático que necesita de código complementario
* La lógica de interfaz de usuario tiene acceso a abstracciones tan útiles y avanzadas como MVC (modelo-vista-controlador)
* Implementa transparencia de red de forma nativa, con lo que sin ningún esfuerzo se pueden utilizar recursos (el propio código de interfaz de usuario, imágenes, ...) ubicados fuera del propio equipo, a través de protocolos estándares de red (http, ftp, ...)
* Facilidad para implementar componentes de un alto grado de reuso
* Se soportan de forma natural las transparencia y la transluciencia. No existen además zonas rectangulares que recortan los elementos que se disponen en la pantalla.
* Utiliza como lenguaje QML, emparentado con Javascript. Toda el código de la lógica de interfaz puede programarse con este mismo lenguaje.

## ¿En qué nos podemos beneficiar?

El ecosistema de aplicaciones de Mediphealth está pensado para usarse en terminales con pantalla táctil. Las características de estos son similares al de las tabletas (pantalla de gran superficie, normalmente mayor de 15" y táctil), aunque en este caso con movilidad limitada, pues el dispositivo queda anclado por su parte trasera.

Las interfaces de usuario están diseñadas completamente a medida con elementos gráficos de un tamaño suficiente, sin relación con ningún estilo que proporcione el sistema operativo. 
