# 🧩 NiBel Core 1.0

**Framework PHP minimalista y modular desarrollado por [NiBel](https://nibel.pe)**  
**Autor:** Weimar  
**© 2025 NiBel — Todos los derechos reservados**

---

## 🚀 Descripción

**NiBel Core** es un framework PHP moderno, ligero y estructurado bajo el patrón **MVC (Model–View–Controller)**.  
Diseñado para proyectos empresariales, SaaS y sistemas web de propósito general, ofrece una base sólida y limpia que puedes extender fácilmente.

Su objetivo es combinar la **simplicidad de CodeIgniter** con la **organización de Laravel**, manteniendo el control total del código y las dependencias.

---

## 📂 Estructura del Proyecto

NiBelCore/
├── app/
│ ├── api/ → Endpoints backend para consultas AJAX o fetch
│ ├── config/ → Configuración general, conexión y entorno (.env)
│ ├── controllers/ → Controladores del sistema
│ ├── models/ → Modelos (incluye Master.php como clase base)
│ ├── routes/ → Definición de rutas y asignación de controladores
│ └── views/ → Plantillas de presentación (HTML/PHP)
│
├── public/ → Carpeta pública (document root del servidor)
│ ├── build/ → Archivos compilados: CSS, JS, imágenes, etc.
│ ├── uploads/ → Archivos cargados por los usuarios
│ ├── .htaccess → Reescritura de URLs y configuración de servidor
│ ├── 404.html → Página de error personalizada
│ └── index.php → Punto de entrada del sistema
│
├── vendor/ → Dependencias de Composer (no se versiona)
│
├── Router.php → Enrutador principal del framework
├── composer.json → Configuración de dependencias PHP
├── package.json → Configuración de Node.js y dependencias frontend
├── gulpfile.js → Automatización de tareas frontend (build, minificación, etc.)
├── .env.example → Archivo de entorno de ejemplo
├── .gitignore → Reglas de exclusión para Git
└── README.md → Documentación principal del framework


---

## ⚙️ Requisitos

- **PHP** 8.1 o superior  
- **MySQL** 5.7 / MariaDB 10.4 o superior  
- **Composer** (instalado globalmente)  
- **Node.js + npm** *(opcional para herramientas frontend)*  
- Servidor local (XAMPP, Laragon, WAMP, etc.)

---

## 🔧 Instalación

```bash
# 1️⃣ Clona el repositorio
git clone https://github.com/nibel/NiBelCore.git

# 2️⃣ Entra a la carpeta
cd NiBelCore

# 3️⃣ Instala las dependencias de PHP
composer install

# 4️⃣ (Opcional) Instala dependencias de Node.js
npm install

# 5️⃣ Copia el archivo de entorno de ejemplo
cp app/config/.env.example app/config/.env

# 6️⃣ Configura tus credenciales de base de datos en .env
# 7️⃣ Levanta el servidor local
php -S localhost:8000 -t public


🌱 Variables de Entorno (.env)

El archivo .env define las credenciales y configuraciones globales del sistema.
Por motivos de seguridad no se versiona.
Se incluye un .env.example como plantilla:

# Archivo: .env.example

DB_HOST = host
DB_USER = user
DB_PASS = password
DB_NAME = database

EMAIL_HOST = host
EMAIL_PORT = port
EMAIL_USER = username
EMAIL_PASS = password

👉 El framework usa Dotenv para cargar estas variables automáticamente desde
app/config/bootstrap.php.

🧠 Arquitectura MVC
Componente	Ubicación	Descripción
Modelos	app/models/	Heredan de Model\Master y manejan consultas a la BD.
Vistas	app/views/	Plantillas HTML/PHP que muestran el contenido al usuario.
Controladores	app/controllers/	Contienen la lógica de negocio y control de flujo.
🌍 Enrutamiento

El sistema utiliza un router propio (core/Router.php) para mapear rutas HTTP de forma limpia:

$router->get('/inicio', [InicioController::class, 'index']);
$router->post('/login', [AuthController::class, 'login']);

El router se encarga de ejecutar el controlador correcto y renderizar la vista dentro del layout base del sistema.

🔌 Bootstrap del Sistema

El archivo app/config/bootstrap.php se ejecuta automáticamente al iniciar el proyecto.

Responsabilidades principales:

Cargar Composer (autoload)

Cargar variables del entorno (.env)

Conectar a la base de datos (MySQLi)

Asignar la conexión a la clase base Master

🧩 Autoload y Namespaces

NiBel Core utiliza PSR-4 autoloading gracias a Composer.
Esto permite crear clases bajo namespaces y cargarlas automáticamente:

namespace Model;

class Usuario extends Master {
    // Lógica del modelo de usuarios
}

💡 Filosofía de Diseño

“Simplicidad, claridad y control total del código.”

NiBel Core evita dependencias innecesarias y promueve un flujo limpio:

Código 100% entendible y modificable.

Arquitectura MVC real y modular.

Carga automática sin configuraciones complejas.

Ideal para proyectos empresariales o frameworks derivados.

🔒 Buenas Prácticas

✅ No subir al repositorio:

.env

/vendor

/node_modules

✅ Sí subir:

.env.example

Estructura completa del framework

✅ Recomendado:

Usar controladores específicos por módulo

Mantener nombres claros en rutas y clases

Documentar tus modelos y controladores

📜 Licencia

NiBel Core Framework es software de código abierto bajo la licencia MIT.
Puedes usarlo, modificarlo y redistribuirlo libremente, manteniendo la referencia al autor original.

👨‍💻 Autor

Desarrollado por: Weimar
Empresa: NiBel
Sitio Web: https://nibel.pe
 (en desarrollo)
Correo: contacto@nibel.pe

🧭 Versión

NiBel Core Framework — v1.0
📅 Lanzamiento: Noviembre 2025

🚀 Construido con pasión por la simplicidad, pensado para desarrolladores que aman entender su código al 100%.