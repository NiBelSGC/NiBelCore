─────────────────────────────────────────────────────────────
🧩 NIBEL CORE 1.0
─────────────────────────────────────────────────────────────
Framework PHP desarrollado por NiBel
Autor: Weimar Muro Almeida
© 2025 NiBel — Todos los derechos reservados
─────────────────────────────────────────────────────────────

NiBel Core es un framework PHP moderno, minimalista y modular
diseñado para el desarrollo rápido y estructurado de aplicaciones
web empresariales, SaaS y sistemas MVC (Model-View-Controller).

El objetivo de NiBel Core es ofrecer una base sólida, limpia y
100% personalizable, con un núcleo ligero y componentes
claramente separados.

─────────────────────────────────────────────────────────────
📂 ESTRUCTURA PRINCIPAL DEL PROYECTO
─────────────────────────────────────────────────────────────

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

─────────────────────────────────────────────────────────────
⚙️  REQUISITOS MÍNIMOS
─────────────────────────────────────────────────────────────

- PHP 8.1 o superior
- MySQL 5.7 / MariaDB 10.4 o superior
- Composer instalado globalmente
- Node.js y npm (para utilidades opcionales del frontend)
- Servidor local como XAMPP, Laragon, WAMP o similar

─────────────────────────────────────────────────────────────
🚀  INSTALACIÓN
─────────────────────────────────────────────────────────────

1️⃣ Clonar el repositorio desde GitHub:

    git clone https://github.com/nibel/NiBelCore.git

2️⃣ Ingresar a la carpeta del proyecto:

    cd NiBelCore

3️⃣ Instalar las dependencias de PHP:

    composer install

4️⃣ Instalar dependencias frontend (opcional):

    npm install

5️⃣ Copiar el archivo de entorno de ejemplo y configurarlo:

    cp app/config/.env.example app/config/.env

6️⃣ Editar el archivo .env y colocar tus credenciales:

    DB_HOST=localhost
    DB_USER=root
    DB_PASS=
    DB_NAME=nibelcore

7️⃣ Levantar el servidor local (ejemplo con PHP embebido):

    php -S localhost:8000 -t public

─────────────────────────────────────────────────────────────
⚡  COMPILACIÓN CON GULP
─────────────────────────────────────────────────────────────

NiBel Core integra un flujo de trabajo moderno mediante Gulp para
compilar y optimizar recursos front-end (SCSS, JavaScript e imágenes),
manteniendo el proyecto limpio y eficiente en producción.

Instalación de dependencias:
-------------------------------------------------------------
npm install
-------------------------------------------------------------

Ejecución en modo desarrollo:
-------------------------------------------------------------
npx gulp dev
-------------------------------------------------------------
O si está configurado en package.json:
-------------------------------------------------------------
npm run gulp dev
-------------------------------------------------------------

Ubicación de archivos:
-------------------------------------------------------------
src/scss/   → Archivos fuente SCSS
src/js/     → Archivos JavaScript
src/img/    → Imágenes fuente (PNG/JPG)
public/build/ → Salida compilada (CSS, JS, imágenes optimizadas)
-------------------------------------------------------------

Tareas incluidas (gulpfile.js):
-------------------------------------------------------------
const { src, dest, watch, parallel } = require('gulp');

// Compilar SCSS → CSS minificado con sourcemaps
function css() { ... }

// Convertir imágenes a WebP y AVIF
function versionWebp() { ... }
function versionAvif() { ... }

// Combinar y minificar JS
function javascript() { ... }

// Modo desarrollo (watch)
function dev() { ... }

exports.dev = parallel(versionWebp, versionAvif, javascript, dev);
-------------------------------------------------------------

Salida generada:
-------------------------------------------------------------
public/build/css/  → Archivos .css compilados y minificados
public/build/js/   → Archivos .js concatenados y minificados
public/build/img/  → Imágenes optimizadas en WebP y AVIF
-------------------------------------------------------------

Dependencias utilizadas:
-------------------------------------------------------------
gulp-sass, gulp-plumber, gulp-concat, gulp-rename,
autoprefixer, cssnano, gulp-postcss, gulp-sourcemaps,
gulp-cache, gulp-webp, gulp-avif, gulp-terser-js
-------------------------------------------------------------

Estas herramientas garantizan un flujo de trabajo ágil y
compatible con navegadores modernos. El sistema puede ampliarse
fácilmente agregando nuevas tareas al archivo gulpfile.js.

─────────────────────────────────────────────────────────────
🔧  ESTRUCTURA MVC
─────────────────────────────────────────────────────────────

- **MODELOS**  
  Todos los modelos extienden de `Model\Master`, que gestiona
  la conexión global a la base de datos mediante MySQLi.

- **VISTAS**  
  Las vistas se almacenan en `app/views/` y pueden incluir
  código PHP embebido, o cargarse desde el router.

- **CONTROLADORES**  
  Se ubican en `app/controllers/` y definen la lógica del
  negocio. Cada método puede renderizar una vista o devolver
  datos JSON.

─────────────────────────────────────────────────────────────
🛠️  VARIABLES DE ENTORNO (.env)
─────────────────────────────────────────────────────────────

El archivo `.env` define las variables clave del sistema.
Por seguridad NO se incluye en el repositorio.

Se incluye un archivo `.env.example` como plantilla.

Ejemplo:
-------------------------------------------------------------
DB_HOST = localhost
DB_USER = root
DB_PASS = 
DB_NAME = nibelcore

EMAIL_HOST = smtp.host.mail
EMAIL_PORT = 2525
EMAIL_USER = username
EMAIL_PASS = password
-------------------------------------------------------------

─────────────────────────────────────────────────────────────
🌍  ENRUTAMIENTO
─────────────────────────────────────────────────────────────

El archivo `Router.php` es el núcleo del enrutamiento MVC.
Permite registrar rutas GET y POST de forma sencilla:

-------------------------------------------------------------
$router->get('/inicio', [InicioController::class, 'index']);
$router->post('/login', [AuthController::class, 'login']);
-------------------------------------------------------------

El router resuelve las rutas, ejecuta el controlador y renderiza
las vistas correspondientes, enviando el contenido dinámico al
layout principal.

─────────────────────────────────────────────────────────────
📦 AUTOLOAD Y NAMESPACES
─────────────────────────────────────────────────────────────

NiBel Core utiliza PSR-4 Autoloading gracias a Composer.
Esto permite declarar clases con namespaces y cargarlas
automáticamente sin requires manuales.

Ejemplo:
-------------------------------------------------------------
namespace Model;

class Usuario extends Master {
  // Lógica del modelo de usuarios
}
-------------------------------------------------------------

─────────────────────────────────────────────────────────────
🧠 BOOTSTRAP DEL SISTEMA
─────────────────────────────────────────────────────────────

El archivo app/config/bootstrap.php se ejecuta al inicio del
proyecto. Su función es:

- Cargar Composer (autoload)
- Cargar variables del entorno (.env)
- Establecer la conexión global a la base de datos
- Asignar dicha conexión a la clase base Master

─────────────────────────────────────────────────────────────
💡 FILOSOFÍA DE DISEÑO
─────────────────────────────────────────────────────────────

NiBel Core se inspira en la simplicidad de frameworks como
CodeIgniter y la estructura limpia de Laravel, pero sin
dependencias pesadas. Su prioridad es la claridad, la velocidad
de carga y la facilidad de extensión.

─────────────────────────────────────────────────────────────
🔒 BUENAS PRÁCTICAS
─────────────────────────────────────────────────────────────

- No subas tu archivo .env al repositorio.
- No subas las carpetas /vendor ni /node_modules.
- Usa .env.example para compartir variables genéricas.
- Mantén una arquitectura MVC clara.
- Usa controladores específicos por módulo.
- Documenta tus rutas y modelos.

─────────────────────────────────────────────────────────────
📜 LICENCIA
─────────────────────────────────────────────────────────────

NiBel Core es software de código abierto bajo licencia MIT.
Puede ser utilizado, modificado y distribuido libremente,
manteniendo la referencia al autor original.

─────────────────────────────────────────────────────────────
🌐 AUTOR Y CONTACTO
─────────────────────────────────────────────────────────────

Desarrollado por: Weimar Muro Almeida 
Empresa: NiBel Sistemas Gestión & Consultoría 
Sitio web: https://nibel.online (en desarrollo)  
Correo: hola@nibel.online  

─────────────────────────────────────────────────────────────
🚀 VERSIÓN ACTUAL
─────────────────────────────────────────────────────────────

NiBel Core Framework — v1.0  
Lanzamiento: Noviembre 2025
─────────────────────────────────────────────────────────────
