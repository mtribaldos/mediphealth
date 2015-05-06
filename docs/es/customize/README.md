
## Personalización de propia interfaz de usuario ##

La URL de base del interfaz de usuario (ui_base_url) se configura a través del parámetro de configuración `main/UiBaseUrl` en Backoffice.

La lista de **aplicaciones** accesibles para customización son:
 - [X] Menú: `menu`
 - [ ] Televisión: `tv`
 - [ ] Radio: `radio`
 - [ ] Video on Demand: `vod`
 - [ ] Internet: `inet`
 - [ ] Servicios: `svc`
 - [ ] Idiomas: `setup`
 
 
Asimismo están disponibles los siguentes **widgets** con capacidad de customización:
  - [X] Portal de compras: `purchase_center`
  
La estructura de directorios tiene la siguiente forma:
  
``` 
+-- <ui_base_url>
    +-- <application_name>
        +-- <ApplicationName>.qml
        +-- <interface_name>
            +-- <ApplicationName>.qml
    +-- <widget_name>
        +-- <WidgetName>.qml
        +-- <interface_name>
            +-- <WidgetName>.qml
```

La variable `interface_name` se corresponde con el parámetro de configuración `main/InterfaceName` en Backoffice. El fichero de interfaz de usuario usado es el primero que coincide con las rutas posibles de búsqueda. Por orden de preferencia, estas son:

1. `<ui_base_url>/<interface_name>/<ApplicationName>.qml`
2. `<ui_base_url>/<ApplicationName>.qml`

El criterio es idéntico para el caso del órden de búsqueda de un widget.

A continuación se presentan una serie de ejemplos, en orden creciente de complejidad:

### Ejemplo 1

Desde la aplicación de Backoffice la siguiente configuración de parámetros:

Parámetro  | Valor
---------- | -------
`main/UiBaseUrl` | `http://mypartner.com/file`

y se crea un fichero gestionado por el servidor web que sea accesible en la URL `http://mypartner.com/files/menu/Menu.qml` con el siguiente contenido:
 * [Menu.qml](partner/Menu.qml)
```
    

