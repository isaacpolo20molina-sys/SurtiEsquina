 <div align="center">

# <a id="encabezado"></a>🛒 SurtiEsquina

### <span style="color:#3FAF7A">Sistema de Información y Gestión Comercial</span>

*Proyecto académico y de formación en desarrollo de software (SENA) — Comuna 9 de Medellín, Colombia.*

[![Estado](https://img.shields.io/badge/Estado-En%20Desarrollo-3FAF7A?style=for-the-badge)](https://github.com/)
[![Tipo](https://img.shields.io/badge/Tipo-Proyecto%20Académico-1F6A4C?style=for-the-badge)](https://github.com/)
[![Backend](https://img.shields.io/badge/Backend-Java-6ED7B7?style=for-the-badge&logo=openjdk&logoColor=black)](https://github.com/)
[![Database](https://img.shields.io/badge/Database-MySQL-1F6A4C?style=for-the-badge&logo=mysql&logoColor=white)](https://github.com/)
[![IDE](https://img.shields.io/badge/IDE-NetBeans-3FAF7A?style=for-the-badge&logo=apache-netbeans&logoColor=white)](https://github.com/)

---

### 🎨 Identidad visual del proyecto

<table>
<tr>
<td align="center" bgcolor="#6ED7B7"><b>Verde menta</b><br><code>#6ED7B7</code></td>
<td align="center" bgcolor="#3FAF7A"><b>Verde medio</b><br><code>#3FAF7A</code></td>
<td align="center" bgcolor="#1F6A4C"><b>Verde oscuro</b><br><code>#1F6A4C</code></td>
<td align="center" bgcolor="#FFFFFF"><b>Verde / Blanco</b><br><code>#FFFFFF</code></td>
<td align="center" bgcolor="#F66F4E"><b>Crema / Acento</b><br><code>#F66F4E</code></td>
</tr>
</table>

</div>

---

## <a id="tabla-de-contenidos"></a>📋 Tabla de contenidos

<details open>
<summary><b>Explorar documentación del proyecto</b></summary>

**01. Información general**
- [📌 Sobre el proyecto](#sobre-el-proyecto)
- [❗ Problema identificado](#problema-identificado)
- [💡 Justificación](#justificacion)
- [🎯 Objetivos](#objetivos)
- [🎯 Alcance](#alcance)

**02. Análisis y requerimientos**
- [👥 Actores del sistema](#actores-del-sistema)
- [🧩 Módulos](#modulos)
- [✨ Funcionalidades](#funcionalidades)
- [📝 Historias de usuario](#historias-de-usuario)
- [📏 Reglas de negocio](#reglas-de-negocio)
- [🔄 Casos de uso](#casos-de-uso)
- [📋 Especificación de casos de uso](#especificacion-de-casos-de-uso)
- [⚡ Requisitos no funcionales](#requisitos-no-funcionales)

**03. Diseño e ingeniería**
- [🏗️ Arquitectura](#arquitectura)
- [🗄️ Base de datos](#base-de-datos)
- [📐 Modelos y diagramas](#modelos-y-diagramas)
- [🧭 Mapa de navegación](#mapa-de-navegacion)
- [🔄 Flujos principales](#flujos-principales)
- [🔗 Trazabilidad](#trazabilidad)

**04. Operación del sistema**
- [💵 Gestión de caja](#gestion-de-caja)
- [📊 Reportes y Dashboard](#reportes-y-dashboard)
- [🔐 Seguridad](#seguridad)
- [💾 Copias de seguridad](#copias-de-seguridad)
- [🧾 Auditoría](#auditoria)

**05. Desarrollo e implementación**
- [🛠️ Tecnologías](#tecnologias)
- [📁 Estructura del repositorio](#estructura-del-repositorio)
- [📚 Artefactos de ingeniería](#artefactos-de-ingenieria)
- [🚀 Instalación](#instalacion)
- [⚙️ Configuración](#configuracion)
- [🧪 Pruebas](#pruebas)

**06. Seguimiento del proyecto**
- [✅ Estado de requisitos](#estado-de-requisitos)
- [📈 Métricas](#metricas)
- [🚧 Estado del proyecto](#estado-del-proyecto)
- [🗺️ Roadmap](#roadmap)
- [🖥️ Demostración](#demostracion)

**07. Información complementaria**
- [📚 Antecedentes](#antecedentes)
- [👨‍💻 Equipo](#equipo)
- [📖 Referencias](#referencias)
- [📄 Licencia](#licencia)

</details>

---

# 01. INFORMACIÓN GENERAL

## <a id="sobre-el-proyecto"></a>📌 Sobre el proyecto

**SurtiEsquina** es un sistema de información y gestión comercial desarrollado para optimizar la administración operativa de una tienda de barrio ubicada en la **Comuna 9 de Medellín, Colombia**.

El proyecto se enmarca dentro del proceso de formación en desarrollo y análisis de software del **Servicio Nacional de Aprendizaje (SENA)**.

Su propósito es centralizar y automatizar los procesos comerciales y administrativos del establecimiento, reduciendo la dependencia de registros manuales y mejorando el control sobre los recursos del negocio.

### Áreas principales del sistema

| Área | Descripción |
|---|---|
| 📦 **Inventario** | Control de existencias, movimientos y alertas de stock. |
| 💰 **Ventas** | Registro de transacciones, pagos, fiados y comprobantes. |
| 🚚 **Proveedores y compras** | Gestión de pedidos y abastecimiento. |
| 📥 **Recepción** | Verificación física de mercancía e identificación de novedades. |
| 👤 **Administración** | Gestión de usuarios, roles, categorías y productos. |
| 📊 **Analítica** | Reportes operativos y gerenciales para la toma de decisiones. |

[⬆ Volver arriba](#encabezado)

---

## <a id="problema-identificado"></a>❗ Problema identificado

La operación tradicional de la tienda presenta múltiples dificultades derivadas de la gestión manual de la información comercial y administrativa.

### Principales problemas detectados

| Problema | Consecuencia |
|---|---|
| 📝 Gestión manual | Registros en papel propensos a errores e inconsistencias. |
| 📦 Discrepancias de inventario | Diferencias entre el stock físico y el registrado. |
| 👻 Inventario fantasma | Mermas y errores que no se detectan oportunamente. |
| 🚚 Control de proveedores | Dificultad para rastrear entregas y pedidos. |
| ⏳ Productos perecederos | Pérdidas por vencimiento y deterioro. |
| 💰 Control financiero | Dificultad para determinar ganancias, pérdidas y movimientos de caja. |

### Descripción detallada

- **Gestión manual:** Los registros de entradas, salidas y existencias se realizan manualmente, propiciando errores y demoras.
- **Dificultades en inventario:** Falta de precisión para conocer las existencias reales en bodega y estantería.
- **Inventarios fantasma:** Inconsistencias en los registros que no reflejan el stock físico real debido a mermas o errores.
- **Registro de ventas:** Ausencia de un sistema centralizado para procesar cobros y generar comprobantes de forma inmediata.
- **Control de proveedores:** Dificultad para mantener trazabilidad sobre compras, pedidos pendientes y facturación.
- **Productos perecederos y papelería:** La verdulería requiere seguimiento por su rápido deterioro, mientras que la papelería presenta dificultades en el control de existencias.
- **Pérdidas operativas:** Ausencia de alertas de vencimiento, rotación lenta y productos agotados.
- **Información administrativa limitada:** Imposibilidad de conocer con exactitud la rentabilidad, ganancias, pérdidas y flujos netos de caja.

[⬆ Volver arriba](#encabezado)

---

## <a id="justificacion"></a>💡 Justificación

La implementación de SurtiEsquina responde a la necesidad de modernizar los procesos administrativos y comerciales de una tienda de barrio mediante una herramienta tecnológica que permita gestionar la información de manera centralizada, organizada y confiable.

### Beneficios del sistema

<table>
<tr>
<th bgcolor="#F66F4E"><font color="#FFFFFF">BENEFICIOS OPERATIVOS</font></th>
<th bgcolor="#3FAF7A"><font color="#FFFFFF">BENEFICIOS ESTRATÉGICOS</font></th>
</tr>
<tr>
<td>

- Automatización y centralización de procesos.
- Reducción de errores humanos.
- Control preciso de entradas y salidas.
- Alertas de productos próximos a vencer.
- Seguimiento de existencias y movimientos.

</td>
<td>

- Optimización de compras según el stock disponible.
- Apoyo a la toma de decisiones.
- Información sobre rentabilidad y flujos de caja.
- Mejor control de proveedores.

</td>
</tr>
</table>

El desarrollo de esta solución también permite aplicar conocimientos de ingeniería de software, análisis de requerimientos, diseño de bases de datos, programación y documentación técnica adquiridos durante el proceso de formación.

[⬆ Volver arriba](#encabezado)

---

## <a id="objetivos"></a>🎯 Objetivos

### Objetivo general

Desarrollar e implementar un sistema de información y gestión comercial para la tienda SurtiEsquina, que permita automatizar los procesos de control de inventarios, ventas y gestión de proveedores, con el fin de mejorar la administración del negocio, reducir inconsistencias en el inventario y facilitar el control de pérdidas y ganancias.

### Objetivos específicos

1. 📋 **Levantar y analizar** los requerimientos funcionales y no funcionales de la tienda SurtiEsquina, mediante técnicas de recolección de información.
2. 📐 **Diseñar** la estructura del sistema y el modelo de base de datos para organizar de manera eficiente la información correspondiente a los módulos de inventario, punto de venta y gestión de proveedores.
3. 💻 **Desarrollar** los módulos funcionales del sistema de gestión comercial, permitiendo automatizar el registro de ventas, el control de inventario y la administración de productos y proveedores.
4. 🧪 **Realizar pruebas** funcionales al sistema desarrollado para verificar el correcto funcionamiento del software.
5. 🚀 **Implementar**el sistema de gestión comercial y capacitar al personal de la tienda en el uso de la plataforma.

[⬆ Volver arriba](#encabezado)

---

## <a id="alcance"></a>🎯 Alcance

El sistema contempla la automatización de los principales procesos comerciales y administrativos del establecimiento.

### Funcionalidades contempladas

- [x] Registrar nuevos productos en el catálogo comercial.
- [x] Actualizar la información de productos existentes.
- [x] Registrar entradas de mercancía por compras o ingresos extraordinarios.
- [x] Registrar salidas por ventas, pérdidas, deterioros o ajustes.
- [x] Consultar las cantidades disponibles.
- [x] Generar alertas por niveles mínimos de existencias.
- [x] Realizar búsquedas por nombre, categoría o código.
- [x] Administrar usuarios y roles.
- [x] Gestionar proveedores y categorías.
- [x] Registrar compras y recepciones.
- [x] Gestionar operaciones de caja.
- [x] Consultar reportes gerenciales.

*Nota: Las marcas indican funcionalidades contempladas en el alcance documental, no necesariamente funcionalidades ya implementadas.*

[⬆ Volver arriba](#encabezado)

---

# 02. ANÁLISIS Y REQUERIMIENTOS

## <a id="actores-del-sistema"></a>👥 Actores del sistema

Los actores representan los usuarios y entidades externas que participan en los procesos del sistema.

| Actor | Tipo | Responsabilidades principales |
|---|---|---|
| 👑 **Administrador** | Principal | Gestionar usuarios, proveedores, compras, inventario, auditoría, respaldos y reportes. |
| 💵 **Cajero** | Principal | Operar caja, procesar ventas, consultar productos y realizar arqueos. |
| 🤖 **Sistema** | Secundario | Ejecutar validaciones, calcular totales, actualizar existencias y emitir alertas. |
| 🚚 **Proveedor** | Secundario | Suministrar mercancía y atender solicitudes de abastecimiento. |
| 👤 **Cliente** | Secundario | Participar como receptor final del proceso comercial. |

[⬆ Volver arriba](#encabezado)

---

## <a id="modulos"></a>🧩 Módulos del sistema

SurtiEsquina se estructura en **11 módulos especializados**, orientados a cubrir las necesidades operativas y administrativas del establecimiento.

<details>
<summary><b>🔍 Consultar descripción de los módulos</b></summary>

| # | Módulo | Actor principal | Propósito operativo |
|:-:|---|---|---|
| 01 | 🔐 **Autenticación** | Todos | Validar credenciales y controlar sesiones. |
| 02 | 👥 **Usuarios** | Administrador | Gestionar perfiles, credenciales, estados y roles. |
| 03 | 🗂️ **Categorías** | Administrador | Clasificar los productos comerciales. |
| 04 | 🚚 **Proveedores** | Administrador | Administrar información y contactos comerciales. |
| 05 | 📦 **Productos** | Administrador | Gestionar precios, costos, imágenes y existencias mínimas. |
| 06 | 🛒 **Compras** | Administrador | Crear y gestionar órdenes de abastecimiento. |
| 07 | 📥 **Recepción** | Administrador | Verificar las entregas físicas frente a los pedidos. |
| 08 | 📊 **Inventario** | Administrador / Sistema | Monitorear existencias, mermas, vencimientos y ajustes. |
| 09 | 💰 **Ventas** | Cajero | Registrar transacciones, pagos y comprobantes. |
| 10 | 💵 **Caja** | Cajero / Administrador | Gestionar aperturas, cierres, ingresos y egresos. |
| 11 | 📈 **Reportes** | Administrador | Consultar indicadores, dashboard, respaldos y auditoría. |

</details>

[⬆ Volver arriba](#encabezado)

---

## <a id="funcionalidades"></a>✨ Funcionalidades

Los requerimientos funcionales definen las operaciones que debe permitir realizar el sistema.

La documentación contempla una clasificación de **RF-01 a RF-63**.

<details>
<summary><b>🔐 Autenticación — RF-01 a RF-04</b></summary>

- **RF-01:** Iniciar sesión mediante credenciales autenticadas.
- **RF-02:** Controlar accesos según el rol de usuario asignado.
- **RF-03:** Procesar la recuperación segura de contraseñas.
- **RF-04:** Ejecutar el cierre seguro de sesión.

</details>

<details>
<summary><b>👥 Gestión de usuarios — RF-05 a RF-08</b></summary>

- **RF-05:** Registrar nuevos usuarios del sistema.
- **RF-06:** Modificar información de usuarios existentes.
- **RF-07:** Cambiar el estado de los usuarios.
- **RF-08:** Consultar el catálogo de usuarios.

</details>

<details>
<summary><b>🗂️ Gestión de categorías — RF-09 a RF-12</b></summary>

- **RF-09:** Registrar categorías de mercancía.
- **RF-10:** Modificar información de categorías.
- **RF-11:** Consultar categorías registradas.
- **RF-12:** Activar o inactivar categorías.

</details>

<details>
<summary><b>🚚 Gestión de proveedores — RF-13 a RF-16</b></summary>

- **RF-13:** Registrar nuevos proveedores comerciales.
- **RF-14:** Actualizar información de proveedores.
- **RF-15:** Consultar el directorio de proveedores.
- **RF-16:** Inactivar proveedores.

</details>

<details>
<summary><b>📦 Gestión de productos — RF-17 a RF-20</b></summary>

- **RF-17:** Registrar productos con costo, precio y stock mínimo.
- **RF-18:** Actualizar datos de productos.
- **RF-19:** Consultar catálogo por nombre, código o categoría.
- **RF-20:** Cambiar el estado del producto.

</details>

<details>
<summary><b>🛒 Compras y solicitud de mercancía — RF-21 a RF-24</b></summary>

- **RF-21:** Crear órdenes de compra a proveedores.
- **RF-22:** Consultar historial de compras realizadas.
- **RF-23:** Cancelar órdenes de compra pendientes.
- **RF-24:** Detallar artículos y cantidades por orden.

</details>

<details>
<summary><b>📥 Recepción de mercancía — RF-25 a RF-28</b></summary>

- **RF-25:** Registrar la llegada física de pedidos.
- **RF-26:** Comparar cantidades solicitadas y recibidas.
- **RF-27:** Registrar novedades por daños o faltantes.
- **RF-28:** Confirmar recepción y actualizar existencias.

</details>

<details>
<summary><b>📊 Inventario — RF-29 a RF-33</b></summary>

- **RF-29:** Consultar existencias.
- **RF-30:** Registrar entradas manuales y ajustes.
- **RF-31:** Registrar salidas por mermas o daños.
- **RF-32:** Generar alertas por stock mínimo.
- **RF-33:** Consultar alertas de productos próximos a vencer.

</details>

<details>
<summary><b>💰 Ventas — RF-34 a RF-40</b></summary>

- **RF-34:** Registrar transacciones de venta.
- **RF-35:** Buscar productos por código de barras durante el cobro.
- **RF-36:** Calcular automáticamente subtotales y totales.
- **RF-37:** Registrar múltiples medios de pago.
- **RF-38:** Imprimir o emitir comprobantes de pago.
- **RF-39:** Anular ventas con autorización previa.
- **RF-40:** Consultar historial de ventas.

</details>

<details>
<summary><b>💵 Caja — RF-41 a RF-46</b></summary>

- **RF-41:** Registrar apertura de caja y fondo inicial.
- **RF-42:** Registrar ingresos extraordinarios en efectivo.
- **RF-43:** Registrar egresos o retiros autorizados.
- **RF-44:** Consultar movimientos de la sesión activa.
- **RF-45:** Realizar arqueo de cierre y cálculo de diferencias.
- **RF-46:** Consultar historial de cierres de caja.

</details>

<details>
<summary><b>📈 Reportes y análisis — RF-47 a RF-58</b></summary>

- **RF-47:** Reporte de ventas por rangos de fecha.
- **RF-48:** Reporte de inventario actual y valoración.
- **RF-49:** Reporte de compras por proveedor.
- **RF-50:** Reporte de artículos bajo stock mínimo.
- **RF-51:** Reporte de productos vencidos o dañados.
- **RF-52:** Reporte financiero de pérdidas y ganancias.
- **RF-53:** Reporte consolidado de proveedores.
- **RF-54:** Reporte de movimientos de inventario.
- **RF-55:** Reporte de cierres y movimientos de caja.
- **RF-56:** Visualización de Dashboard interactivo.
- **RF-57:** Generar copias de seguridad.
- **RF-58:** Restaurar copias de seguridad.

</details>

<details>
<summary><b>⚙️ Auditoría y configuración — RF-59 a RF-63</b></summary>

La documentación inicial identifica este rango como correspondiente a utilidades de auditoría y configuración global. Las descripciones individuales deben incorporarse desde la matriz definitiva de requerimientos.

</details>

> **Nota de validación documental:** La descripción general indica 63 requisitos funcionales, pero el listado desarrollado contiene RF-01 a RF-58. Es necesario completar y verificar RF-59 a RF-63 para que el índice y las métricas coincidan con la matriz oficial.

[⬆ Volver arriba](#encabezado)

---

## <a id="historias-de-usuario"></a>📝 Historias de usuario

Las historias de usuario representan las necesidades de los usuarios desde su perspectiva y permiten relacionar las funcionalidades del sistema con los beneficios esperados.

Se utiliza la siguiente estructura:

> **Como** `[Rol de usuario]`  
> **Quiero** `[Acción o funcionalidad]`  
> **Para** `[Beneficio esperado del negocio]`

Las historias se identifican mediante códigos únicos, por ejemplo, `HU-001`, que permiten mantener la trazabilidad durante el desarrollo.

[⬆ Volver arriba](#encabezado)

---

## <a id="reglas-de-negocio"></a>📏 Reglas de negocio

Las reglas de negocio establecen las condiciones y restricciones que deben cumplirse para garantizar la integridad y consistencia de las operaciones.

| Área | Regla |
|---|---|
| 🔐 **Usuarios** | Todo usuario debe tener un estado válido y un rol autorizado: Administrador o Cajero. |
| 📦 **Inventario** | No se permite vender productos cuando las existencias disponibles son inferiores a las unidades solicitadas. |
| 🏷️ **Catálogo** | Las categorías y proveedores deben contar con identificadores únicos. |
| 📥 **Recepción** | Todo ingreso de mercancía debe relacionarse con una compra válida. Las diferencias deben justificarse. |
| 💵 **Caja** | No se deben realizar ventas sin una apertura formal de caja. |
| 💾 **Seguridad** | Las contraseñas deben almacenarse mediante mecanismos seguros de hash. Los respaldos deben estar restringidos al Administrador. |

[⬆ Volver arriba](#encabezado)

---

## <a id="casos-de-uso"></a>🔄 Casos de uso

Los casos de uso representan las interacciones entre los actores y las funcionalidades del sistema.

| Código | Caso de uso | Módulo | Actor principal | RF asociados |
|:-:|---|---|---|---|
| `CU-01` | Autenticarse | Autenticación | Administrador / Cajero | RF-01, RF-02, RF-04 |
| `CU-02` | Gestionar usuarios | Usuarios | Administrador | RF-05 a RF-08 |
| `CU-03` | Gestionar categorías | Categorías | Administrador | RF-09 a RF-12 |
| `CU-04` | Gestionar proveedores | Proveedores | Administrador | RF-13 a RF-16 |
| `CU-05` | Gestionar productos | Productos | Administrador | RF-17 a RF-20 |
| `CU-06` | Gestionar compras | Compras | Administrador | RF-21 a RF-24 |
| `CU-07` | Recepcionar mercancía | Recepción | Administrador | RF-25 a RF-28 |
| `CU-08` | Gestionar inventario | Inventario | Administrador | RF-29 a RF-33 |
| `CU-09` | Gestionar ventas | Ventas | Cajero | RF-34 a RF-40 |
| `CU-10` | Gestionar caja | Caja | Cajero / Administrador | RF-41 a RF-46 |
| `CU-11` | Consultar reportes | Reportes | Administrador | RF-47 a RF-58 |

[⬆ Volver arriba](#encabezado)

---

## <a id="especificacion-de-casos-de-uso"></a>📋 Especificación de casos de uso

Cada caso de uso cuenta con una especificación que permite describir detalladamente el comportamiento esperado del sistema.

### Elementos de especificación

- **Identificador:** Código único del caso de uso.
- **Nombre:** Nombre de la operación.
- **Actor principal:** Usuario que inicia la operación.
- **Precondiciones:** Condiciones necesarias para comenzar.
- **Flujo principal:** Secuencia normal de acciones.
- **Flujos alternativos:** Situaciones diferentes al comportamiento principal.
- **Postcondiciones:** Resultado esperado después de ejecutar la operación.
- **Criterios de aceptación:** Condiciones que determinan si la funcionalidad cumple lo solicitado.

[⬆ Volver arriba](#encabezado)

---

# 03. DISEÑO E INGENIERÍA

## <a id="arquitectura"></a>🏗️ Arquitectura

El sistema plantea una arquitectura organizada por capas, con el propósito de separar las responsabilidades de presentación, procesamiento y almacenamiento de información.

### Estructura arquitectónica

```text
┌─────────────────────────────────────────────┐
│           CAPA DE PRESENTACIÓN              │
│                                             │
│             Interfaz de usuario             │
│                 FRONTEND                    │
└──────────────────────┬──────────────────────┘
                       │
                       │ Solicitudes
                       ▼
┌─────────────────────────────────────────────┐
│           CAPA DE NEGOCIO                   │
│                                             │
│         Procesamiento y validaciones        │
│              BACKEND - JAVA                 │
└──────────────────────┬──────────────────────┘
                       │
                       │ JDBC / SQL
                       ▼
┌─────────────────────────────────────────────┐
│           CAPA DE PERSISTENCIA              │
│                                             │
│           Base de datos relacional          │
│                  MYSQL                      │
└─────────────────────────────────────────────┘
```

### Responsabilidades por capa

| Capa | Responsabilidad |
|---|---|
| Presentación | Mostrar información y permitir la interacción con los usuarios. |
| Negocio | Procesar operaciones, ejecutar validaciones y aplicar reglas de negocio. |
| Persistencia | Almacenar, consultar y mantener la integridad de los datos. |

[⬆ Volver arriba](#encabezado)

---

## <a id="base-de-datos"></a>🗄️ Base de datos

SurtiEsquina utiliza una base de datos relacional desarrollada en **MySQL**, diseñada para organizar la información comercial y mantener relaciones entre las diferentes entidades del sistema.

### Entidades principales

| Entidad | Descripción |
|---|---|
| `usuarios` | Credenciales, información personal y roles. |
| `categorias` | Clasificación de productos. |
| `proveedores` | Información de contacto y datos comerciales. |
| `productos` | Precios, costos, referencias y control de existencias. |
| `compras` | Registro de órdenes de abastecimiento. |
| `detalle_compra` | Productos y cantidades asociados a compras. |
| `recepciones` | Registro de entradas físicas de mercancía. |
| `novedades_recepcion` | Incidencias, daños y faltantes detectados. |
| `movimientos_inventario` | Registro de entradas, salidas, ajustes y mermas. |
| `cajas` | Aperturas y cierres de caja. |
| `movimientos_caja` | Ingresos y egresos de efectivo. |
| `ventas` | Información de las transacciones comerciales. |
| `detalle_venta` | Productos, cantidades y valores de cada venta. |

### Vistas de consulta

Entre las vistas contempladas en el modelo se encuentran:

- `vw_inventario_actual`
- `vw_productos_bajo_stock`
- `vw_productos_vencidos`
- `vw_ventas_detalladas`
- `vw_reporte_proveedores`
- `vw_ganancias_productos`

[⬆ Volver arriba](#encabezado)

---

## <a id="modelos-y-diagramas"></a>📐 Modelos y diagramas

La documentación de ingeniería contempla los siguientes modelos para representar la estructura, comportamiento y organización del sistema.

| Artefacto | Propósito | Estado |
|---|---|---|
| Modelo Entidad-Relación | Representar entidades y relaciones de la base de datos. | Pendiente de adjuntar |
| Modelo relacional | Definir tablas, atributos y relaciones. | Documentado en SQL |
| Diagrama de casos de uso | Representar interacciones entre actores y sistema. | Pendiente de adjuntar |
| Diagrama de clases | Representar estructura y relaciones entre clases. | Pendiente de adjuntar |
| Diagrama de actividades | Representar los flujos de los procesos. | Pendiente de adjuntar |
| Diagrama de arquitectura | Representar las capas y componentes. | Pendiente de adjuntar |

### Recursos gráficos

> En esta sección se incorporarán las imágenes y documentos PDF de los diagramas desarrollados durante el proceso de ingeniería de software.

```text
Database/
└── diagrams/
    ├── modelo-entidad-relacion.png
    └── modelo-relacional.png

Documentation/
└── diagrams/
    ├── casos-de-uso.png
    ├── diagrama-clases.png
    ├── actividades.png
    └── arquitectura.png
```

[⬆ Volver arriba](#encabezado)

---

## <a id="mapa-de-navegacion"></a>🧭 Mapa de navegación

El mapa de navegación representa la organización de las interfaces y las opciones disponibles según el rol autenticado.

```text
                    ┌─────────────────┐
                    │     LOGIN       │
                    │ Autenticación   │
                    └────────┬────────┘
                             │
                ┌────────────┴────────────┐
                │                         │
                ▼                         ▼
       ┌────────────────┐        ┌────────────────┐
       │ ADMINISTRADOR  │        │    CAJERO      │
       └───────┬────────┘        └───────┬────────┘
               │                         │
               ▼                         ▼
       ┌────────────────┐        ┌────────────────┐
       │   DASHBOARD    │        │   DASHBOARD    │
       │   GERENCIAL    │        │   OPERATIVO    │
       └───────┬────────┘        └───────┬────────┘
               │                         │
       ┌───────┼────────┐         ┌───────┼────────┐
       │       │        │         │       │        │
       ▼       ▼        ▼         ▼       ▼        ▼
    Usuarios Productos Compras  Buscar  Ventas   Caja
    Categorías Invent. Recepción productos
    Reportes   Caja    Auditoría
    Backup
```

[⬆ Volver arriba](#encabezado)

---

## <a id="flujos-principales"></a>🔄 Flujos principales

Los flujos principales describen la secuencia de actividades que permiten ejecutar los procesos comerciales más importantes.

### 🛒 Flujo de compra y abastecimiento

```text
Alerta de stock bajo
        ↓
Creación de orden de compra
        ↓
Solicitud al proveedor
        ↓
Recepción física de mercancía
        ↓
Verificación de cantidades
        ↓
Registro de novedades
        ↓
Confirmación de recepción
        ↓
Actualización del inventario
```

### 💰 Flujo de venta

```text
Inicio de sesión del cajero
        ↓
Búsqueda o lectura del producto
        ↓
Validación de existencias
        ↓
Cálculo del total
        ↓
Procesamiento del pago
        ↓
Emisión del comprobante
        ↓
Descuento automático del inventario
        ↓
Finalización de la venta
```

[⬆ Volver arriba](#encabezado)

---

# 04. OPERACIÓN DEL SISTEMA

## <a id="gestion-de-caja"></a>💵 Gestión de caja

El módulo de caja permite controlar las operaciones de efectivo mediante aperturas, movimientos y cierres de turno.

Su objetivo es comparar el saldo esperado por el sistema con el dinero físico contado al finalizar la jornada.

### Ejemplo demostrativo de arqueo

| Concepto | Valor |
|---|---:|
| Fondo inicial de caja | $120.000 |
| Ventas en efectivo | $350.000 |
| **Saldo esperado en sistema** | **$470.000** |
| Saldo efectivo arqueado | $450.000 |
| **Diferencia / Faltante** | **-$20.000** |

### Fórmula de cálculo

\[
\text{Faltante} = \text{Saldo Esperado} - \text{Saldo Real}
\]

\[
470.000 - 450.000 = 20.000
\]

### Controles contemplados

- Registro del fondo inicial.
- Control de ingresos y egresos.
- Registro del dinero físico al cierre.
- Cálculo automático de diferencias.
- Identificación de faltantes y sobrantes.
- Consulta del historial de cierres.
- Notificación al Administrador sobre las diferencias encontradas.
- Restricción de operaciones una vez cerrado el turno.

[⬆ Volver arriba](#encabezado)

---

## <a id="reportes-y-dashboard"></a>📊 Reportes y Dashboard

El sistema contempla un Dashboard gerencial que permite consultar información relevante para evaluar el comportamiento comercial del establecimiento.

### Indicadores principales

| Indicador | Información |
|---|---|
| 💰 Ventas | Total de ventas por periodo. |
| 📦 Inventario | Existencias disponibles y valoración. |
| ⚠️ Stock bajo | Productos que requieren abastecimiento. |
| ⏳ Vencimientos | Productos próximos a vencer o vencidos. |
| 🚚 Compras | Historial de abastecimiento por proveedor. |
| 💵 Caja | Estado de aperturas, cierres y diferencias. |
| 📈 Rentabilidad | Información de ganancias y pérdidas. |

[⬆ Volver arriba](#encabezado)

---

## <a id="seguridad"></a>🔐 Seguridad

La seguridad del sistema busca proteger la información comercial y garantizar que las operaciones sean realizadas únicamente por usuarios autorizados.

### Mecanismos contemplados

- **Hash de contraseñas:** Almacenamiento seguro de credenciales sin texto plano.
- **Control de acceso basado en roles (RBAC):** Restricción de funcionalidades según el perfil del usuario.
- **Gestión de sesiones:** Control de acceso y cierre seguro de sesiones.
- **Validación de operaciones:** Verificación de permisos antes de ejecutar acciones administrativas.
- **Integridad de información:** Protección de los datos mediante validaciones y transacciones.

[⬆ Volver arriba](#encabezado)

---

## <a id="copias-de-seguridad"></a>💾 Copias de seguridad

El sistema contempla mecanismos para proteger la información almacenada mediante copias de seguridad y procedimientos de restauración.

| Código | Funcionalidad | Descripción |
|---|---|---|
| `RF-57` | Respaldo | Generación de copias de seguridad de la base de datos. |
| `RF-58` | Restauración | Recuperación de información mediante respaldos existentes. |

Las operaciones de respaldo y restauración se encuentran restringidas al Administrador.

[⬆ Volver arriba](#encabezado)

---

## <a id="auditoria"></a>🧾 Auditoría

La auditoría permite mantener trazabilidad sobre las operaciones realizadas dentro del sistema.

### Información registrada

| Campo | Descripción |
|---|---|
| Usuario | Persona que ejecuta la operación. |
| Fecha y hora | Momento en que se realiza la acción. |
| Módulo | Sección del sistema involucrada. |
| Acción | Operación realizada. |
| Registro afectado | Elemento sobre el cual se ejecutó la operación. |

El propósito es facilitar la supervisión administrativa, identificar cambios y mantener un historial de las actividades relevantes.

[⬆ Volver arriba](#encabezado)

---

## <a id="requisitos-no-funcionales"></a>⚡ Requisitos no funcionales

Los requisitos no funcionales establecen las condiciones de calidad, rendimiento, seguridad y disponibilidad que debe cumplir el sistema.

| Categoría | Código | Requerimiento |
|---|:-:|---|
| Rendimiento | `RNF-01` | Consultas y operaciones comunes en un tiempo máximo de 3 segundos. |
| Rendimiento | `RNF-02` | Carga del Dashboard en un tiempo máximo de 5 segundos. |
| Usabilidad | `RNF-04` | Interfaz clara y orientada a usuarios con conocimientos técnicos básicos. |
| Seguridad | `RNF-06` | Protección de credenciales mediante mecanismos seguros. |
| Fiabilidad | `RNF-09` | Integridad transaccional ante fallos de conexión. |
| Auditoría | `RNF-17` | Registro continuo de eventos y operaciones relevantes. |

[⬆ Volver arriba](#encabezado)

---

# 05. DESARROLLO E IMPLEMENTACIÓN

## <a id="tecnologias"></a>🛠️ Tecnologías

El proyecto contempla herramientas y tecnologías orientadas al desarrollo de aplicaciones, administración de bases de datos y control de versiones.

### Stack tecnológico

| Componente | Tecnología | Función |
|---|---|---|
| Backend | Java | Lógica de negocio y procesamiento. |
| Base de datos | MySQL | Almacenamiento y administración de información. |
| IDE | Apache NetBeans | Entorno de desarrollo. |
| Frontend | Por completar | Construcción de la interfaz gráfica. |
| Conectividad | JDBC | Comunicación entre Java y MySQL. |
| Control de versiones | Git | Seguimiento de cambios. |
| Repositorio | GitHub | Almacenamiento y documentación del proyecto. |

### Identidad tecnológica

<p align="center">
<img src="https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white" alt="Java"/>
<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL"/>
<img src="https://img.shields.io/badge/NetBeans-1B6AC6?style=for-the-badge&logo=apache-netbeans&logoColor=white" alt="NetBeans"/>
<img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Git"/>
<img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub"/>
</p>

[⬆ Volver arriba](#encabezado)

---

## <a id="estructura-del-repositorio"></a>📁 Estructura del repositorio

El repositorio organiza los componentes del sistema y sus respectivos recursos de documentación.

```text
SurtiEsquina/
│
├── Backend/
│   └── Código fuente y lógica de negocio Java
│
├── Frontend/
│   └── Interfaces y componentes visuales
│
├── Database/
│   ├── Scripts SQL
│   ├── Tablas y relaciones
│   ├── Vistas
│   └── Procedimientos
│
├── Documentation/
│   ├── Requerimientos/
│   ├── Diagramas/
│   ├── Modelos/
│   └── Manuales/
│
├── Tests/
│   └── Pruebas funcionales y de integración
│
└── README.md
```

*La estructura representa la organización documental propuesta y deberá ajustarse a las carpetas definitivas del repositorio.*

[⬆ Volver arriba](#encabezado)

---

## <a id="artefactos-de-ingenieria"></a>📚 Artefactos de ingeniería

Los artefactos de ingeniería documentan las diferentes etapas del análisis, diseño, construcción y validación del sistema.

| Artefacto | Descripción | Ubicación |
|---|---|---|
| SRS / Matriz de requerimientos | Requisitos funcionales y no funcionales. | `Documentation/Requerimientos/` |
| Modelo ER | Diagrama Entidad-Relación. | `Documentation/Diagramas/` |
| Modelo relacional | Estructura de tablas y relaciones. | `Database/` |
| Casos de uso | Interacciones entre actores y sistema. | `Documentation/Diagramas/` |
| Diagrama de clases | Estructura de clases del software. | `Documentation/Diagramas/` |
| Código Backend | Componentes desarrollados en Java. | `Backend/` |
| Código Frontend | Interfaces del sistema. | `Frontend/` |
| Pruebas | Evidencias y resultados de validación. | `Tests/` |

[⬆ Volver arriba](#encabezado)

---

## <a id="instalacion"></a>🚀 Instalación

### Requisitos previos

Antes de ejecutar el proyecto, se deben disponer de las siguientes herramientas:

- Java Development Kit (JDK).
- Apache NetBeans.
- MySQL Server.
- MySQL Workbench.
- Git.

### 1. Clonar el repositorio

```bash
git clone https://github.com/USUARIO/SurtiEsquina.git
```

### 2. Ingresar al directorio

```bash
cd SurtiEsquina
```

### 3. Configurar la base de datos

Ejecutar los scripts SQL ubicados en la carpeta `Database/` mediante MySQL Workbench.

### 4. Configurar el Backend

Abrir el proyecto desde Apache NetBeans y configurar la conexión a MySQL.

### 5. Ejecutar el sistema

Iniciar la aplicación desde el entorno de desarrollo una vez configuradas las dependencias y la conexión.

> **Importante:** Los pasos definitivos de compilación y ejecución deberán actualizarse según la estructura y configuración final del proyecto.

[⬆ Volver arriba](#encabezado)

---

## <a id="configuracion"></a>⚙️ Configuración

La conexión con la base de datos requiere definir los parámetros correspondientes al entorno local.

### Ejemplo de configuración

```properties
# ======================================
# CONFIGURACIÓN DE BASE DE DATOS
# ======================================

db.url=jdbc:mysql://localhost:3306/surtiesquina
db.user=TU_USUARIO
db.password=TU_CONTRASEÑA
```

### Recomendaciones

- No publicar credenciales reales en GitHub.
- Utilizar variables de entorno o archivos locales de configuración.
- Mantener protegidos los datos de acceso.
- Verificar que MySQL Server esté activo antes de iniciar la aplicación.

[⬆ Volver arriba](#encabezado)

---

## <a id="pruebas"></a>🧪 Pruebas

Las pruebas permiten verificar el correcto funcionamiento de los módulos y garantizar que las operaciones respondan a los requerimientos establecidos.

### Tipos de pruebas contempladas

| Tipo | Objetivo |
|---|---|
| Pruebas unitarias | Validar componentes y funciones individuales. |
| Pruebas de integración | Comprobar la comunicación entre módulos y base de datos. |
| Pruebas funcionales | Verificar el cumplimiento de los requisitos. |
| Pruebas de seguridad | Evaluar permisos y controles de acceso. |
| Pruebas de rendimiento | Comprobar tiempos de respuesta. |
| Pruebas de aceptación | Validar que el sistema responda a las necesidades del negocio. |

*Las evidencias y resultados se incorporarán conforme avance la validación del software.*

[⬆ Volver arriba](#encabezado)

---

# 06. SEGUIMIENTO DEL PROYECTO

## <a id="estado-de-requisitos"></a>✅ Estado de requisitos

El cumplimiento de los requerimientos se controla mediante una matriz de seguimiento que permite identificar su estado de análisis, desarrollo y validación.

### Seguimiento general

| Tipo | Identificación | Estado |
|---|---|---|
| Funcionales | RF-01 a RF-63 | 🟡 En proceso de desarrollo |
| No funcionales | RNF-01 a RNF-20 | 🟡 En proceso de validación |

### Convenciones de estado

- [x] Completado y validado.
- [ ] Pendiente de implementación o validación.

*El estado definitivo debe actualizarse utilizando la matriz oficial de requerimientos y las evidencias de desarrollo.*

[⬆ Volver arriba](#encabezado)

---

## <a id="trazabilidad"></a>🔗 Trazabilidad

La trazabilidad permite relacionar las necesidades identificadas en el negocio con los elementos de ingeniería que permiten construir y validar la solución.

### Cadena de trazabilidad

```text
PROBLEMA IDENTIFICADO
        │
        ▼
OBJETIVOS DEL PROYECTO
        │
        ▼
REQUERIMIENTOS
        │
        ▼
HISTORIAS DE USUARIO
        │
        ▼
CASOS DE USO
        │
        ▼
DISEÑO Y MODELADO
        │
        ▼
IMPLEMENTACIÓN
        │
        ▼
PRUEBAS Y VALIDACIÓN
```

Esta relación facilita comprobar que las funcionalidades desarrolladas responden a necesidades reales del establecimiento.

[⬆ Volver arriba](#encabezado)

---

## <a id="metricas"></a>📈 Métricas

Las métricas permiten observar la dimensión documental y funcional del proyecto.

### Indicadores generales

| Indicador | Cantidad documentada |
|---|:-:|
| Requisitos funcionales declarados | 63 |
| Requisitos no funcionales declarados | 20 |
| Casos de uso | 11 |
| Módulos | 11 |
| Tecnologías principales | Por completar |
| Pruebas ejecutadas | Por completar |

### Métricas de desarrollo

Se podrán incorporar indicadores como:

- Porcentaje de requisitos implementados.
- Porcentaje de pruebas aprobadas.
- Cantidad de incidencias detectadas.
- Cantidad de funcionalidades finalizadas.
- Actividad y contribuciones del equipo en GitHub.

[⬆ Volver arriba](#encabezado)

---

## <a id="estado-del-proyecto"></a>🚧 Estado del proyecto

<blockquote>
<strong>Fase actual:</strong> 🚧 Desarrollo e integración.

El proyecto se encuentra en proceso de construcción y consolidación de sus componentes funcionales, técnicos y documentales.
</blockquote>

| Etapa | Estado |
|---|---|
| Levantamiento de requerimientos | Completado según documentación |
| Diseño de base de datos | Completado según documentación |
| Diseño de interfaces | En desarrollo |
| Desarrollo Backend | En desarrollo |
| Integración | Pendiente de consolidación |
| Pruebas | Pendiente de validación final |
| Implementación | Pendiente |

[⬆ Volver arriba](#encabezado)

---

## <a id="roadmap"></a>🗺️ Roadmap

El roadmap representa las etapas generales contempladas para el desarrollo de SurtiEsquina.

```text
[01] Levantamiento
       │
       ▼
[02] Diseño de base de datos
       │
       ▼
[03] Desarrollo Frontend
       │
       ▼
[04] Desarrollo Backend
       │
       ▼
[05] Integración y pruebas
       │
       ▼
[06] Implementación
       │
       ▼
[07] Documentación final
```

### Seguimiento de etapas

- [x] Levantamiento de requerimientos.
- [x] Diseño de base de datos.
- [ ] Desarrollo de interfaces.
- [ ] Desarrollo de lógica de negocio.
- [ ] Integración de componentes.
- [ ] Pruebas funcionales.
- [ ] Implementación.
- [ ] Documentación final.

[⬆ Volver arriba](#encabezado)

---

## <a id="demostracion"></a>🖥️ Demostración

En esta sección se incorporarán capturas de pantalla y evidencias visuales que permitan conocer la interfaz y el funcionamiento de los diferentes módulos.

### Vistas del sistema

| Interfaz | Descripción |
|---|---|
| Login | Autenticación de usuarios. |
| Dashboard | Resumen de información administrativa. |
| Productos | Gestión del catálogo comercial. |
| Inventario | Consulta de existencias y movimientos. |
| Ventas | Registro de operaciones comerciales. |
| Caja | Apertura, movimientos y cierre de turno. |
| Reportes | Consulta de información gerencial. |

**Capturas de pantalla:** Pendientes de incorporar.

[⬆ Volver arriba](#encabezado)

---

# 07. INFORMACIÓN COMPLEMENTARIA

## <a id="antecedentes"></a>📚 Antecedentes

Como parte del proceso de investigación y contextualización se consideran referencias relacionadas con la gestión de inventarios y los procesos comerciales de establecimientos minoristas.

### Referentes identificados

- **Calzado & Bolsos Rose:** Referencia académica para el diseño de sistemas de control de inventarios en microempresas comerciales.
- **Retail San Pedro (Valle del Cauca):** Referencia relacionada con estrategias de abastecimiento y administración comercial.
- **Supermercado El Autoservicio Valparaíso:** Referencia sobre control de inventarios y tratamiento de mermas.

Estos antecedentes permiten contextualizar la problemática y reconocer soluciones aplicadas a negocios comerciales con necesidades similares.

[⬆ Volver arriba](#encabezado)

---

## <a id="equipo"></a>👨‍💻 Equipo de desarrollo

SurtiEsquina es desarrollado como un proyecto académico y colaborativo por un equipo de formación en desarrollo de software.

### Integrantes

| Integrante | Rol |
|---|---|
| **Isaac David Polo Molina** | Por definir |
| **Juan Esteban Arboleda Serrano** | Por definir |
| **Johan Yesid Urbina Muñoz** | Por definir |

### Perfil técnico destacado

**Isaac David Polo Molina**

*Desarrollador de Software en Formación | Análisis de Sistemas | Bases de Datos*

Estudiante enfocado en análisis de sistemas, desarrollo Backend y Frontend, bases de datos SQL, Java, Python, Django, Git, GitHub y modelado de software mediante UML.

### Áreas de conocimiento

- Desarrollo de software.
- Análisis y diseño de sistemas.
- Modelado de bases de datos.
- Programación orientada a objetos.
- Desarrollo de aplicaciones.
- Control de versiones.
- Documentación técnica.

[⬆ Volver arriba](#encabezado)

---

## <a id="referencias"></a>📖 Referencias

La documentación del proyecto toma como referencia los siguientes recursos:

1. Documentos de formación del SENA.
2. Ficha de caracterización del proyecto.
3. Matriz de requerimientos funcionales y no funcionales.
4. Estándares y especificaciones de UML para el modelado de software.
5. Documentación oficial de Java.
6. Documentación oficial de MySQL.
7. Documentación oficial de Apache NetBeans.

*Las referencias bibliográficas específicas deberán completarse con sus autores, fechas, títulos y enlaces correspondientes.*

[⬆ Volver arriba](#encabezado)

---

## <a id="licencia"></a>📄 Licencia

**Licencia del proyecto:** Pendiente de definición.

La licencia determinará las condiciones de uso, distribución, modificación y atribución del software desarrollado.

---

<div align="center">

---

### 🛒 SurtiEsquina

**Sistema de Información y Gestión Comercial**

*Tecnología para optimizar la gestión de los pequeños establecimientos comerciales.*

Desarrollado como proyecto académico en el marco del proceso de formación del SENA.

📍 Comuna 9 — Medellín, Colombia.

<br>

<a href="#encabezado">
<img src="https://img.shields.io/badge/⬆%20VOLVER%20AL%20INICIO-1F6A4C?style=for-the-badge" alt="Volver al inicio"/>
</a>

<br><br>

<sub>Desarrollo de software · Análisis de sistemas · Gestión de bases de datos</sub>

</div>
