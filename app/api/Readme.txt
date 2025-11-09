───────────────────────────────────────────────
📁  NiBel Core - Carpeta /api
───────────────────────────────────────────────

📌 DESCRIPCIÓN GENERAL
──────────────────────
La carpeta /api contiene todos los archivos PHP que gestionan 
las solicitudes asíncronas del lado del cliente.  
Estos archivos actúan como puntos de acceso (endpoints) para 
intercambiar datos entre el frontend y el backend mediante 
consultas Fetch (antes conocidas como AJAX).

Cada archivo dentro de /api representa una función o acción 
específica del sistema, como por ejemplo:
- api/guardar_usuario.php
- api/obtener_inventario.php
- api/eliminar_registro.php

El objetivo principal de esta carpeta es mantener 
una separación clara entre:
→ Lógica de interfaz (Views)
→ Controladores principales (Controllers)
→ Llamadas directas de datos (API)

───────────────────────────────────────────────
⚙️  FUNCIONAMIENTO
───────────────────────────────────────────────
1. Desde el frontend (HTML, JS o una vista del framework), 
   se realiza una llamada Fetch a un archivo dentro de /api.

   Ejemplo:
   fetch('/api/obtener_inventario.php', {
       method: 'POST',
       body: new FormData(form)
   })

2. El archivo PHP procesa la solicitud, ejecuta las consultas
   necesarias (a través de los modelos o directamente en la BD),
   y retorna una respuesta en formato JSON.

3. El frontend recibe la respuesta y actualiza la interfaz 
   sin recargar la página.

───────────────────────────────────────────────
🧩  BUENAS PRÁCTICAS
───────────────────────────────────────────────
- Usar nombres descriptivos para cada endpoint.
- Validar siempre los datos recibidos (POST/GET).
- Retornar respuestas en formato JSON.
- Evitar incluir lógica visual (HTML, echo, etc.).
- Mantener esta carpeta limpia y solo con archivos
  orientados a comunicación asíncrona.

───────────────────────────────────────────────
🔒  SEGURIDAD
───────────────────────────────────────────────
- Todos los endpoints deben validar la sesión o el token 
  de autenticación antes de ejecutar acciones sensibles.
- Sanitizar entradas para evitar inyecciones SQL.
- Responder con mensajes estructurados y controlados.

───────────────────────────────────────────────
📄  EJEMPLO DE RESPUESTA JSON
───────────────────────────────────────────────
{
    "status": "success",
    "message": "Datos obtenidos correctamente",
    "data": [...]
}

───────────────────────────────────────────────
🧠  NOTA FINAL
───────────────────────────────────────────────
Esta carpeta es el núcleo de la comunicación entre 
el cliente y el servidor dentro de NiBel Core.

Todo lo que implique intercambio de datos dinámicos 
(Fetch, AJAX, JSON) debe ubicarse aquí.
───────────────────────────────────────────────
© NiBel Core Framework
Desarrollado por Weimar — 2025
───────────────────────────────────────────────
