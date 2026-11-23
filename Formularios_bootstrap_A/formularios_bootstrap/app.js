//Tarjeta para registrar producto con JS
document.addEventListener("DOMContentLoaded", () => {

  const formulario = document.getElementById("formRegistrarProducto");
  const modalElemento = document.getElementById("modalRegistrarProducto");
  const contenedorProductos = document.getElementById("productosGrid");

  if (!formulario || !modalElemento || !contenedorProductos) {
    return;
  }

  formulario.addEventListener("submit", function (event) {

    event.preventDefault();

    // Validación de Bootstrap / navegador
    if (!formulario.checkValidity()) {
      formulario.reportValidity();
      return;
    }

    // Obtener valores de el formulario
    const nombre = document.getElementById("nombreProducto").value.trim();
    const categoria = document.getElementById("categoriaProducto").value;
    const marca = document.getElementById("marcaProducto").value.trim();

    const compra = Number(document.getElementById("precioCompra").value);
    const venta = Number(document.getElementById("precioVenta").value);

    const stock = Number(document.getElementById("stockInicial").value);
    const minimo = Number(document.getElementById("stockMinimo").value);

    const imagen = document.getElementById("imagenProducto").value.trim();
    const vencimiento = document.getElementById("fechaVencimiento").value;

    // Validar precio
    if (venta <= 0 || compra < 0) {
      Swal.fire({
        icon: "error",
        title: "Precios inválidos",
        text: "Verifica los precios ingresados.",
        confirmButtonColor: "#0B624B"
      });
      return;
    }

    // Validar existencias
    if (
      !Number.isInteger(stock) ||
      !Number.isInteger(minimo) ||
      stock < 0 ||
      minimo < 0
    ) {
      Swal.fire({
        icon: "error",
        title: "Existencias inválidas",
        text: "Las existencias deben ser números enteros positivos o cero.",
        confirmButtonColor: "#0B624B"
      });
      return;
    }

    // Evitar nombres duplicados en la demostración
    const productosExistentes = [
      ...contenedorProductos.querySelectorAll(".product-card")
    ];

    const duplicado = productosExistentes.some(producto =>
      producto.dataset.nombre.toLowerCase() === nombre.toLowerCase()
    );

    if (duplicado) {
      Swal.fire({
        icon: "warning",
        title: "Producto existente",
        text: "Ya existe un producto con ese nombre.",
        confirmButtonColor: "#0B624B"
      });
      return;
    }

    // Crear tarjeta
    const tarjeta = document.createElement("article");
    tarjeta.className = "product-card";

    tarjeta.dataset.nombre = nombre;
    tarjeta.dataset.categoria = categoria;
    tarjeta.dataset.estado = "activo";
    tarjeta.dataset.stock = stock;
    tarjeta.dataset.minimo = minimo;

    const formatoMoneda = new Intl.NumberFormat("es-CO", {
      style: "currency",
      currency: "COP",
      maximumFractionDigits: 2
    });

    const imagenContenedor = document.createElement("div");
    imagenContenedor.className = "product-image";

    const estado = document.createElement("span");
    estado.className = "product-status";
    estado.textContent = "Activo";
    imagenContenedor.appendChild(estado);

    if (imagen) {
      const foto = document.createElement("img");
      foto.src = imagen;
      foto.alt = nombre;
      foto.style.width = "100%";
      foto.style.height = "100%";
      foto.style.objectFit = "contain";
      foto.style.padding = "15px";

      foto.onerror = () => {
        foto.remove();
        const placeholder = document.createElement("div");
        placeholder.className = "image-placeholder";
        placeholder.textContent = "Sin imagen";
        imagenContenedor.appendChild(placeholder);
      };

      imagenContenedor.appendChild(foto);

    } else {
      const placeholder = document.createElement("div");
      placeholder.className = "image-placeholder";
      placeholder.textContent = "Sin imagen";
      imagenContenedor.appendChild(placeholder);
    }

    const informacion = document.createElement("div");
    informacion.className = "product-info";

    const categoriaTexto = document.createElement("span");
    categoriaTexto.className = "product-category";
    categoriaTexto.textContent = categoria.toUpperCase();

    const titulo = document.createElement("h2");
    titulo.textContent = nombre;

    const detalles = document.createElement("div");
    detalles.className = "product-details";

    const detallePrecio = document.createElement("div");
    const etiquetaPrecio = document.createElement("span");
    etiquetaPrecio.className = "detail-label";
    etiquetaPrecio.textContent = "Precio de venta";

    const valorPrecio = document.createElement("strong");
    valorPrecio.textContent = formatoMoneda.format(venta);

    detallePrecio.append(etiquetaPrecio, valorPrecio);

    const detalleStock = document.createElement("div");
    const etiquetaStock = document.createElement("span");
    etiquetaStock.className = "detail-label";
    etiquetaStock.textContent = "Existencias";

    const valorStock = document.createElement("strong");
    valorStock.textContent = `${stock} unidades`;

    detalleStock.append(etiquetaStock, valorStock);
    detalles.append(detallePrecio, detalleStock);

    const acciones = document.createElement("div");
    acciones.className = "product-actions";

    const botonEditar = document.createElement("button");
    botonEditar.type = "button";
    botonEditar.className = "btn-edit";
    botonEditar.textContent = "Editar producto";

    acciones.appendChild(botonEditar);

    informacion.append(categoriaTexto, titulo, detalles, acciones);
    tarjeta.append(imagenContenedor, informacion);

    // Guardar información adicional en memoria de la tarjeta
    tarjeta.dataset.marca = marca;
    tarjeta.dataset.precioCompra = compra;
    tarjeta.dataset.precioVenta = venta;
    tarjeta.dataset.imagen = imagen;
    tarjeta.dataset.vencimiento = vencimiento;

    // Agregar producto
    contenedorProductos.appendChild(tarjeta);
    //Actualiza la grafica
    document.dispatchEvent(new Event("catalogoActualizado"));

    // Actualizar contador de categoría
    const botonesCategoria = document.querySelectorAll(
      "#filtrosCategorias .filter-item"
    );

    botonesCategoria.forEach(boton => {
      const esTodas = boton.dataset.categoria === "Todas";
      const esCategoria = boton.dataset.categoria === categoria;

      if (esTodas || esCategoria) {
        const contador = boton.querySelector(".filter-count");

        if (contador) {
          contador.textContent = Number(contador.textContent) + 1;
        }
      }
    });

    // Actualizar contador de stock bajo
    if (stock <= minimo) {
      const contadorStock = document.querySelector(
        "#filtroStock .filter-count"
      );

      if (contadorStock) {
        contadorStock.textContent =
          Number(contadorStock.textContent) + 1;
      }
    }

    // Actualizar resultados visibles
    document.getElementById("buscarProducto")
      .dispatchEvent(new Event("input"));

    // Cerrar modal
    const instancia = bootstrap.Modal.getInstance(modalElemento);
    instancia?.hide();

    // Limpiar formulario
    formulario.reset();

    // Confirmación
    Swal.fire({
      icon: "success",
      title: "Producto registrado",
      text: `${nombre} fue agregado al catálogo.`,
      confirmButtonColor: "#0B624B"
    });

  });

});


//EDITAR PRODUCTOS


document.addEventListener("DOMContentLoaded", () => {

  const grid = document.getElementById("productosGrid");
  const formulario = document.getElementById("formEditarProducto");
  const modalElemento = document.getElementById("modalEditarProducto");

  if (!grid || !formulario || !modalElemento) return;

  const modalEditar = bootstrap.Modal.getOrCreateInstance(modalElemento);

  let productoSeleccionado = null;

  const obtener = id => document.getElementById(id);

  // Formatear precios
  const formatoCOP = new Intl.NumberFormat("es-CO", {
    style: "currency",
    currency: "COP",
    maximumFractionDigits: 2
  });

  // Convertir precio de texto a número
  function convertirPrecio(texto) {
    if (!texto) return 0;

    return Number(
      texto.replace(/[^\d,]/g, "").replace(",", ".")
    ) || 0;
  }

  // Abrir modal con los datos del producto
  grid.addEventListener("click", event => {

    const boton = event.target.closest(".btn-edit");
    if (!boton) return;

    productoSeleccionado = boton.closest(".product-card");
    if (!productoSeleccionado) return;

    const producto = productoSeleccionado;
    const detalles = producto.querySelectorAll(".product-details strong");

    obtener("editarNombre").value = producto.dataset.nombre || "";
    obtener("editarCategoria").value = producto.dataset.categoria || "";
    obtener("editarMarca").value = producto.dataset.marca || "";

    obtener("editarCompra").value =
      producto.dataset.precioCompra || 0;

    obtener("editarVenta").value =
      producto.dataset.precioVenta ||
      convertirPrecio(detalles[0]?.textContent);

    obtener("editarStock").value =
      producto.dataset.stock || 0;

    obtener("editarMinimo").value =
      producto.dataset.minimo || 0;

    obtener("editarImagen").value =
      producto.dataset.imagen || "";

    obtener("editarVencimiento").value =
      producto.dataset.vencimiento || "";

    obtener("editarEstado").value =
      producto.dataset.estado || "activo";

    modalEditar.show();
  });

  // Guardar cambios
  formulario.addEventListener("submit", event => {

    event.preventDefault();

    if (!productoSeleccionado) return;

    if (!formulario.checkValidity()) {
      formulario.reportValidity();
      return;
    }

    const nombre = obtener("editarNombre").value.trim();
    const categoria = obtener("editarCategoria").value;
    const marca = obtener("editarMarca").value.trim();

    const compra = Number(obtener("editarCompra").value);
    const venta = Number(obtener("editarVenta").value);
    const stock = Number(obtener("editarStock").value);
    const minimo = Number(obtener("editarMinimo").value);

    const imagen = obtener("editarImagen").value.trim();
    const vencimiento = obtener("editarVencimiento").value;
    const estado = obtener("editarEstado").value;

    if (
      !nombre ||
      compra < 0 ||
      venta <= 0 ||
      !Number.isInteger(stock) ||
      !Number.isInteger(minimo) ||
      stock < 0 ||
      minimo < 0
    ) {
      Swal.fire({
        icon: "error",
        title: "Datos inválidos",
        text: "Revisa los valores ingresados.",
        confirmButtonColor: "#0B624B"
      });
      return;
    }

    // Comprobar nombre duplicado
    const duplicado = [...grid.querySelectorAll(".product-card")]
      .some(producto =>
        producto !== productoSeleccionado &&
        producto.dataset.nombre.toLowerCase() === nombre.toLowerCase()
      );

    if (duplicado) {
      Swal.fire({
        icon: "warning",
        title: "Nombre duplicado",
        text: "Ya existe otro producto con ese nombre.",
        confirmButtonColor: "#0B624B"
      });
      return;
    }

    // Actualizar atributos
    const producto = productoSeleccionado;

    producto.dataset.nombre = nombre;
    producto.dataset.categoria = categoria;
    producto.dataset.marca = marca;
    producto.dataset.precioCompra = compra;
    producto.dataset.precioVenta = venta;
    producto.dataset.stock = stock;
    producto.dataset.minimo = minimo;
    producto.dataset.imagen = imagen;
    producto.dataset.vencimiento = vencimiento;
    producto.dataset.estado = estado;

    // Actualizar textos
    producto.querySelector(".product-category").textContent =
      categoria.toUpperCase();

    producto.querySelector(".product-info h2").textContent = nombre;

    const detalles = producto.querySelectorAll(".product-details strong");

    if (detalles[0]) {
      detalles[0].textContent = formatoCOP.format(venta);
    }

    if (detalles[1]) {
      detalles[1].textContent = `${stock} unidades`;
    }

    // Actualizar estado
    const etiquetaEstado = producto.querySelector(".product-status");

    etiquetaEstado.textContent =
      estado === "activo" ? "Activo" : "Inactivo";

    etiquetaEstado.classList.toggle(
      "inactivo",
      estado === "inactivo"
    );

    // Actualizar imagen
    const contenedorImagen = producto.querySelector(".product-image");

    contenedorImagen.querySelectorAll(
      "img, .image-placeholder"
    ).forEach(elemento => elemento.remove());

    if (imagen) {
      const foto = document.createElement("img");
      foto.src = imagen;
      foto.alt = nombre;
      foto.style.width = "100%";
      foto.style.height = "100%";
      foto.style.objectFit = "contain";
      foto.style.padding = "15px";

      foto.onerror = () => {
        foto.remove();
        const placeholder = document.createElement("div");
        placeholder.className = "image-placeholder";
        placeholder.textContent = "Sin imagen";
        contenedorImagen.appendChild(placeholder);
      };

      contenedorImagen.appendChild(foto);

    } else {
      const placeholder = document.createElement("div");
      placeholder.className = "image-placeholder";
      placeholder.textContent = "Sin imagen";
      contenedorImagen.appendChild(placeholder);
    }

    // Actualizar estadísticas y filtros
    document.dispatchEvent(new Event("catalogoActualizado"));

    // Cerrar modal
    modalEditar.hide();
    productoSeleccionado = null;

    Swal.fire({
      icon: "success",
      title: "Producto actualizado",
      text: "Los cambios se aplicaron correctamente.",
      confirmButtonColor: "#0B624B"
    });

  });

});


/* =====================================
   GRÁFICA DE PRODUCTOS POR CATEGORÍA
===================================== */

document.addEventListener("DOMContentLoaded", () => {

  const canvas = document.getElementById("graficaCategorias");
  const grid = document.getElementById("productosGrid");

  if (!canvas || !grid || typeof Chart === "undefined") return;

  const categorias = [
    "Abarrotes",
    "Bebidas",
    "Snacks y mecato",
    "Aseo del hogar",
    "Lácteos y refrigerados"
  ];

  const colores = [
    "#0B624B",
    "#4BCBA5",
    "#A5D6A7",
    "#F0B86E",
    "#86A8C9"
  ];

  const lista = document.getElementById("listaCategoriasGrafica");
  const total = document.getElementById("totalGrafica");

  // Crear gráfica
  const grafica = new Chart(canvas, {
    type: "doughnut",

    data: {
      labels: categorias,
      datasets: [{
        data: [0, 0, 0, 0, 0],
        backgroundColor: colores,
        borderColor: "#FFFEFA",
        borderWidth: 4,
        hoverOffset: 8
      }]
    },

    options: {
      responsive: true,
      maintainAspectRatio: false,
      cutout: "65%",

      plugins: {
        legend: {
          display: false
        },

        tooltip: {
          callbacks: {
            label: function(context) {
              return `${context.label}: ${context.parsed} productos`;
            }
          }
        }
      }
    }
  });

  // Actualizar gráfica
  function actualizarGrafica() {

    const productos = [
      ...grid.querySelectorAll(".product-card")
    ];

    const cantidades = categorias.map(categoria => {
      return productos.filter(producto =>
        producto.dataset.categoria === categoria
      ).length;
    });

    // Actualizar datos
    grafica.data.datasets[0].data = cantidades;
    grafica.update();

    // Actualizar total
    total.textContent = productos.length;

    // Actualizar lista lateral
    lista.replaceChildren();

    categorias.forEach((categoria, indice) => {

      const fila = document.createElement("div");
      fila.className = "categoria-estadistica";

      const info = document.createElement("div");
      info.className = "categoria-estadistica-info";

      const color = document.createElement("span");
      color.className = "categoria-color";
      color.style.backgroundColor = colores[indice];

      const nombre = document.createElement("span");
      nombre.className = "categoria-nombre";
      nombre.textContent = categoria;

      const cantidad = document.createElement("strong");
      cantidad.className = "categoria-cantidad";
      cantidad.textContent = cantidades[indice];

      info.append(color, nombre);
      fila.append(info, cantidad);
      lista.appendChild(fila);
    });

    // Actualizar contadores del sidebar
    document.querySelectorAll(
      "#filtrosCategorias .filter-item"
    ).forEach(boton => {

      const categoria = boton.dataset.categoria;
      const contador = boton.querySelector(".filter-count");

      if (!contador) return;

      contador.textContent = categoria === "Todas"
        ? productos.length
        : productos.filter(p =>
            p.dataset.categoria === categoria
          ).length;
    });

    // Actualizar stock bajo
    const contadorStock = document.querySelector(
      "#filtroStock .filter-count"
    );

    if (contadorStock) {
      contadorStock.textContent = productos.filter(p =>
        Number(p.dataset.stock) <= Number(p.dataset.minimo)
      ).length;
    }

    // Actualizar filtros visibles
    document.getElementById("buscarProducto")
      ?.dispatchEvent(new Event("input"));
  }

  // Primera carga
  actualizarGrafica();

  // Escuchar cambios del catálogo
  document.addEventListener(
    "catalogoActualizado",
    actualizarGrafica
  );

});
