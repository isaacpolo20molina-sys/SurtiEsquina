<div align="center">

# 🛒 SurtiEsquina

### Sistema de Información y Gestión Comercial
*Proyecto académico y de formación en desarrollo de software (SENA) — Comuna 9 de Medellín, Colombia*

[![Estado del Proyecto](https://img.shields.io/badge/Estado-En%20Desarrollo-3FAF7A?style=flat-square)](https://github.com/)
[![Tipo](https://img.shields.io/badge/Tipo-Proyecto%20Académico-1F6A4C?style=flat-square)](https://github.com/)
[![Lenguaje](https://img.shields.io/badge/Backend-Java-6ED7B7?style=flat-square&logo=java&logoColor=black)](https://github.com/)
[![Base de Datos](https://img.shields.io/badge/Database-MySQL-1F6A4C?style=flat-square&logo=mysql&logoColor=white)](https://github.com/)
[![IDE](https://img.shields.io/badge/IDE-NetBeans-3FAF7A?style=flat-square&logo=apache-netbeans&logoColor=white)](https://github.com/)

</div>

---

## 📋 Tabla de Contenidos

- [Sobre el proyecto](#sobre-el-proyecto)
- [Problema identificado](#problema-identificado)
- [Justificación](#justificación)
- [Objetivos](#objetivos)
- [Alcance](#alcance)
- [Actores del sistema](#actores-del-sistema)
- [Módulos](#módulos)
- [Funcionalidades](#funcionalidades)
- [Historias de usuario](#historias-de-usuario)
- [Reglas de negocio](#reglas-de-negocio)
- [Casos de uso](#casos-de-uso)
- [Especificación de casos de uso](#especificación-de-casos-de-uso)
- [Arquitectura](#arquitectura)
- [Base de datos](#base-de-datos)
- [Modelos y diagramas](#modelos-y-diagramas)
- [Mapa de navegación](#mapa-de-navegación)
- [Flujos principales](#flujos-principales)
- [Gestión de caja](#gestión-de-caja)
- [Reportes y Dashboard](#reportes-y-dashboard)
- [Seguridad](#seguridad)
- [Copias de seguridad](#copias-de-seguridad)
- [Auditoría](#auditoría)
- [Requisitos no funcionales](#requisitos-no-funcionales)
- [Tecnologías](#tecnologías)
- [Estructura del repositorio](#estructura-del-repositorio)
- [Artefactos de ingeniería](#artefactos-de-ingeniería)
- [Instalación](#instalación)
- [Configuración](#configuración)
- [Pruebas](#pruebas)
- [Estado de requisitos](#estado-de-requisitos)
- [Trazabilidad](#trazabilidad)
- [Métricas](#métricas)
- [Estado del proyecto](#estado-del-proyecto)
- [Roadmap](#roadmap)
- [Demostración](#demostración)
- [Antecedentes](#antecedentes)
- [Equipo](#equipo)
- [Referencias](#referencias)
- [Licencia](#licencia)

---

## <a id="sobre-el-proyecto"></a>📌 Sobre el proyecto

**SurtiEsquina** es un sistema de información y gestión comercial desarrollado para optimizar la administración operativa de una tienda de barrio ubicada en la Comuna 9 de Medellín, Colombia. El proyecto se enmarca dentro del proceso de formación en desarrollo y análisis de software del SENA.

La solución centraliza y automatiza los procesos comerciales y administrativos de la tienda, reduciendo la dependencia de registros manuales y mejorando el control sobre los recursos del establecimiento. Sus principales áreas de gestión incluyen:
- Inventario y control de stock en tiempo real.
- Registro y control de ventas y transacciones de caja.
- Gestión de compras y proveedores.
- Recepción y verificación de mercancía.
- Administración de usuarios, roles, categorías y productos.
- Generación de reportes operativos y gerenciales.

---

## ## <a id="problema-identificado"></a>❗ Problema identificado

La operación tradicional de la tienda presenta múltiples dificultades derivadas de la gestión manual de la información:

- **Gestión manual:** Los registros de entradas, salidas y existencias se realizan de manera manual, propiciando errores humanos y demoras operativas.
- **Dificultades en inventario:** Falta de precisión para conocer las cantidades reales disponibles en bodega y estantería.
- **Inventarios fantasma:** Existencia de registros en papel o sistemas desconectados que no reflejan el stock físico real debido a mermas, robos o errores de digitación.
- **Registro de ventas:** Ausencia de un mecanismo ágil y centralizado para registrar transacciones de venta de manera inmediata.
- **Control de proveedores:** Dificultades para llevar trazabilidad de las compras, los pedidos solicitados y la mercancía que ingresa al establecimiento.
- **Productos perecederos y papelería:** La sección de verdulería requiere un seguimiento constante por el deterioro rápido de los productos, mientras que la sección de papelería presenta problemas para controlar existencias fraccionadas o de alta rotación.
- **Pérdidas operativas:** Incidencias no controladas por vencimiento, deterioro, diferencias de inventario, productos agotados o baja rotación comercial.
- **Información administrativa limitada:** Dificultad para conocer con exactitud la rentabilidad, ganancias, pérdidas, disponibilidad real, movimientos de caja y comportamiento de compras y ventas.

---

## 💡 Justificación

El desarrollo de SurtiEsquina se justifica por la necesidad de dotar a la tienda de barrio de herramientas tecnológicas accesibles y estructuradas que permitan:
- **Automatizar y centralizar** los procesos comerciales y de control de mercancía.
- **Reducir registros manuales** y minimizar la probabilidad de errores humanos.
- **Mejorar el control de inventario y ventas**, identificando oportunamente productos agotados o próximos a vencer.
- **Optimizar las compras** a partir de datos reales de rotación y stock mínimo.
- **Apoyar la toma de decisiones gerenciales** mediante reportes claros de rentabilidad y flujos de caja.
- **Aportar viabilidad técnica y económica** a través de una arquitectura basada en tecnologías accesibles (Java, MySQL) y despliegue local de bajo costo.

---

## 🎯 Objetivos

### Objetivo general
Desarrollar e implementar un sistema de información y gestión comercial para SurtiEsquina que permita automatizar los procesos de control de inventarios, ventas y gestión de proveedores, con el fin de mejorar la administración del negocio, reducir inconsistencias en el inventario y facilitar el control de pérdidas y ganancias.

### Objetivos específicos
1. Levantar y analizar requerimientos funcionales y no funcionales del negocio.
2. Diseñar la arquitectura del sistema y el modelo relacional de base de datos.
3. Desarrollar los módulos funcionales requeridos por la operación comercial.
4. Realizar pruebas funcionales y de integración para garantizar la calidad del software.
5. Implementar el sistema y capacitar al personal de la tienda para su uso operativo.

---

## 🎯 Alcance

El alcance inicial del sistema comprende las siguientes capacidades operativas básicas:
1. Registrar nuevos productos en el catálogo.
2. Actualizar la información de productos existentes.
3. Registrar entradas de mercancía por compras o ingresos extraordinarios.
4. Registrar salidas por ventas, pérdidas, deterioros o ajustes de inventario.
5. Visualizar las cantidades disponibles de productos en tiempo real.
6. Generar alertas automáticas cuando un producto alcance sus niveles mínimos de stock.
7. Realizar búsquedas eficientes por nombre, categoría o código de barras/identificador.
8. Gestión completa de usuarios, roles, proveedores, categorías, compras, recepción, caja y reportes según la matriz de requerimientos.

---

## 👥 Actores del sistema

- **Administrador:** Actor principal con privilegios totales sobre el sistema. Gestiona usuarios, proveedores, categorías, productos, compras, recepción, configuración de seguridad, copias de seguridad, auditoría y reportes gerenciales.
- **Cajero:** Actor encargado de la ejecución de ventas, consulta de precios y productos, apertura, movimientos y cierre de caja.
- **Sistema:** Actor secundario automatizado responsable de procesar validaciones, cálculos, actualizaciones de stock y generación de alertas.
- **Proveedor:** Actor externo que interviene en los procesos de suministro, recepción de pedidos y entrega de mercancía.
- **Cliente:** Actor asociado al proceso de compra y generación de comprobantes de venta.

---

## 🧩 Módulos del sistema

El sistema se organiza en 11 módulos funcionales:

1. 🔐 **Autenticación**
2. 👥 **Gestión de usuarios**
3. 🗂️ **Gestión de categorías**
4. 🚚 **Gestión de proveedores**
5. 📦 **Gestión de productos**
6. 🛒 **Compras / solicitud de mercancía**
7. 📥 **Recepción de mercancía**
8. 📊 **Inventario**
9. 💰 **Ventas**
10. 💵 **Caja**
11. 📈 **Reportes y análisis**

<details>
<summary><b>Ver tabla de Módulos y Actores Principales</b></summary>

| Módulo | Actor Principal | Propósito |
| :--- | :--- | :--- |
| **Autenticación** | Administrador / Cajero | Validar credenciales de acceso al sistema y control de sesiones. |
| **Gestión de usuarios** | Administrador | Crear, modificar, activar y asignar roles a los usuarios del sistema. |
| **Gestión de categorías** | Administrador | Organizar y clasificar la taxonomía de productos de la tienda. |
| **Gestión de proveedores** | Administrador | Mantener el directorio y datos de contacto de los proveedores. |
| **Gestión de productos** | Administrador | Administrar el catálogo general de artículos, precios y stock mínimo. |
| **Compras** | Administrador | Planificar y registrar solicitudes de mercancía a proveedores. |
| **Recepción** | Administrador | Validar la entrada física de mercancía frente a las órdenes de compra. |
| **Inventario** | Administrador / Sistema | Monitorear existencias, entradas, salidas, mermas y ajustes. |
| **Ventas** | Cajero | Registrar transacciones comerciales de salida de productos y cobro. |
| **Caja** | Cajero / Administrador | Controlar el fondo inicial, ingresos, egresos y arqueo de cierre. |
| **Reportes** | Administrador | Consultar indicadores de gestión, ventas, inventario y finanzas. |

</details>

---

## ✨ Funcionalidades

El sistema implementa 63 requisitos funcionales (RF-01 a RF-63) distribuidos en sus diferentes módulos.

<details>
<summary><b>Ver desglose completo de Funcionalidades por Módulo</b></summary>

### 🔐 Autenticación
- **RF-01:** Iniciar sesión con credenciales válidas.
- **RF-02:** Controlar acceso a vistas y funciones según el rol asignado.
- **RF-03:** Solicitar y procesar recuperación de contraseña de forma segura.
- **RF-04:** Cerrar sesión de usuario de manera segura.

### 👥 Gestión de usuarios
- **RF-05:** Registrar nuevos usuarios en el sistema.
- **RF-06:** Modificar datos de usuarios existentes.
- **RF-07:** Activar o inactivar usuarios del sistema.
- **RF-08:** Consultar lista de usuarios registrados.

### 🗂️ Gestión de categorías
- **RF-09:** Registrar nuevas categorías de productos.
- **RF-10:** Modificar categorías existentes.
- **RF-11:** Consultar listado de categorías activas.
- **RF-12:** Cambiar estado de categorías (activo/inactivo).

### 🚚 Gestión de proveedores
- **RF-13:** Registrar nuevos proveedores.
- **RF-14:** Actualizar información de proveedores.
- **RF-15:** Consultar directorio de proveedores.
- **RF-16:** Inactivar proveedores comerciales.

### 📦 Gestión de productos
- **RF-17:** Registrar nuevos productos en el catálogo con precio, costo y stock mínimo.
- **RF-18:** Modificar datos e información de productos.
- **RF-19:** Consultar productos por código, nombre o categoría.
- **RF-20:** Cambiar estado de productos (activo/inactivo/suspendido).

### 🛒 Compras / Solicitud de mercancía
- **RF-21:** Crear órdenes de compra a proveedores.
- **RF-22:** Consultar historial de compras realizadas.
- **RF-23:** Cancelar órdenes de compra pendientes.
- **RF-24:** Detallar artículos y cantidades solicitadas en la orden.

### 📥 Recepción de mercancía
- **RF-25:** Registrar la llegada de pedidos de proveedores.
- **RF-26:** Comparar cantidades solicitadas frente a cantidades recibidas físicamente.
- **RF-27:** Registrar novedades o diferencias en la recepción (faltantes o averías).
- **RF-28:** Confirmar la recepción de mercancía para actualizar el stock.

### 📊 Inventario
- **RF-29:** Consultar stock actual de productos en tiempo real.
- **RF-30:** Registrar entradas manuales de inventario por ajustes o devoluciones.
- **RF-31:** Registrar salidas manuales por merma, daño o pérdida.
- **RF-32:** Generar alertas automáticas de stock mínimo.
- **RF-33:** Consultar productos próximos a vencer o vencidos.

### 💰 Ventas
- **RF-34:** Registrar nuevas transacciones de venta.
- **RF-35:** Buscar productos por código de barras o descripción durante la venta.
- **RF-36:** Calcular subtotales, impuestos y total a pagar de la venta.
- **RF-37:** Aplicar medios de pago registrados.
- **RF-38:** Generar comprobante o ticket de venta.
- **RF-39:** Anular ventas autorizadas bajo reglas de negocio específicas.
- **RF-40:** Consultar historial de ventas realizadas.

### 💵 Caja
- **RF-41:** Registrar apertura de caja con fondo inicial.
- **RF-42:** Registrar ingresos manuales de efectivo en caja.
- **RF-43:** Registrar egresos o retiros manuales de efectivo.
- **RF-44:** Consultar movimientos de caja en la sesión actual.
- **RF-45:** Realizar el cierre de caja con arqueo físico y cálculo de diferencias (faltante/sobrante).
- **RF-46:** Consultar historial de cierres de caja anteriores.

### 📈 Reportes y análisis
- **RF-47:** Generar reporte de ventas por período.
- **RF-48:** Generar reporte de inventario actual y valoración.
- **RF-49:** Generar reporte de compras a proveedores.
- **RF-50:** Generar reporte de productos con stock bajo.
- **RF-51:** Generar reporte de productos vencidos o deteriorados.
- **RF-52:** Generar reporte de ganancias y pérdidas.
- **RF-53:** Generar reporte de actividad por proveedor.
- **RF-54:** Generar reporte de movimientos de inventario.
- **RF-55:** Generar reporte de movimientos y arqueos de caja.
- **RF-56:** Visualizar indicadores clave (Dashboard gerencial).
- **RF-57:** Generar copia de seguridad (Backup) de la base de datos.
- **RF-58:** Restaurar copia de seguridad de la base de datos.

*(Nota: Los requisitos funcionales del RF-59 al RF-63 complementan funciones administrativas y de auditoría del sistema).*

</details>

---

## 📝 Historias de usuario

El proyecto formaliza sus requerimientos funcionales mediante historias de usuario codificadas desde `[HU-001]` hasta `[HU-063]`, estructuradas bajo el estándar ágil (*Como [rol], quiero [acción] para [beneficio]*), garantizando la trazabilidad entre el problema del usuario y la implementación técnica.

---

## 📏 Reglas de negocio

El sistema aplica estrictas reglas de negocio (`RN-01` a `RN-63`) para mantener la integridad operativa:
- **Usuarios y Roles:** Todo usuario debe contar con un estado activo y un rol único (Administrador o Cajero) que restrinja su acceso a los módulos autorizados.
- **Catálogo:** Las categorías y proveedores deben contar con identificadores únicos. Los productos inactivos no pueden ser seleccionados en procesos de venta.
- **Inventario y Stock:** Ninguna venta puede superar el stock físico disponible. Las alertas de stock mínimo se activan automáticamente al cruzar el umbral configurado.
- **Compras y Recepción:** Las recepciones de mercancía deben estar amparadas por una orden de compra válida; cualquier discrepancia entre lo solicitado y lo recibido debe registrarse como novedad con justificación.
- **Caja:** No se permite registrar ventas si la caja del día se encuentra cerrada. El cierre de caja exige el conteo físico del efectivo para determinar automáticamente faltantes o sobrantes.
- **Seguridad y Respaldo:** Las contraseñas se almacenan mediante cifrado seguro (hash). Las copias de seguridad y restauraciones de base de datos son operaciones exclusivas del rol Administrador bajo confirmación explícita.

---

## 🔄 Casos de uso

El diseño del sistema comprende 11 casos de uso principales documentados en la matriz del proyecto:

| Código | Caso de uso | Módulo | Actor principal | RF asociados |
| :--- | :--- | :--- | :--- | :--- |
| **CU-01** | Autenticarse | Autenticación | Administrador / Cajero | RF-01, RF-02, RF-04 |
| **CU-02** | Gestionar usuarios | Usuarios | Administrador | RF-05, RF-06, RF-07, RF-08 |
| **CU-03** | Gestionar categorías | Categorías | Administrador | RF-09, RF-10, RF-11, RF-12 |
| **CU-04** | Gestionar proveedores | Proveedores | Administrador | RF-13, RF-14, RF-15, RF-16 |
| **CU-05** | Gestionar productos | Productos | Administrador | RF-17, RF-18, RF-19, RF-20 |
| **CU-06** | Gestionar compras | Compras | Administrador | RF-21, RF-22, RF-23, RF-24 |
| **CU-07** | Recepcionar mercancía | Recepción | Administrador | RF-25, RF-26, RF-27, RF-28 |
| **CU-08** | Gestionar inventario | Inventario | Administrador | RF-29, RF-30, RF-31, RF-32, RF-33 |
| **CU-09** | Gestionar ventas | Ventas | Cajero | RF-34, RF-35, RF-36, RF-37, RF-38, RF-39, RF-40 |
| **CU-10** | Gestionar caja | Caja | Cajero / Administrador | RF-41, RF-42, RF-43, RF-44, RF-45, RF-46 |
| **CU-11** | Consultar reportes | Reportes | Administrador | RF-47 al RF-58 |

---

## 📋 Especificación de casos de uso

Cada caso de uso cuenta con su respectiva especificación técnica que detalla propósito, precondiciones, postcondiciones, flujos principales y flujos alternativos (excepciones operativas). Los procesos críticos documentados incluyen: *Autenticarse, Gestionar usuarios, Gestionar productos, Gestionar inventario, Gestionar ventas, Gestionar caja y Consultar reportes*.

---

## 🏗️ Arquitectura

El repositorio se encuentra estructurado bajo una arquitectura modular clara:

```text
SurtiEsquina/
│
├── Backend/
├── Database/
├── Frontend/
└── README.md
