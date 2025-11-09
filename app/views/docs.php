<?php
// -----------------------------------------------------------------------------
// NiBel Core - Documentación
// Este archivo se inserta dentro de la variable $contenido del layout.php
// -----------------------------------------------------------------------------
?>

<div class="docs">
    <aside class="docs-sidebar">
        <div class="docs-brand">
            <img src="build/img/logo.png" alt="NiBel" />
            <h2>NiBel Core <span>Docs</span></h2>
        </div>

        <nav class="docs-nav">
            <a href="#intro">Introducción</a>
            <a href="#instalacion">Instalación</a>
            <a href="#estructura">Estructura</a>
            <a href="#requisitos">Requisitos</a>
            <a href="#bootstrap">Bootstrap</a>
            <a href="#env">Variables .env</a>
            <a href="#autoload">Autoload / PSR-4</a>
            <a href="#routing">Enrutamiento</a>
            <a href="#mvc">MVC (Model - View - Controller)</a>
            <a href="#gulp">Compilación con Gulp</a>
            <a href="#api">API / Endpoints</a>
            <a href="#ejemplos">Ejemplos rápidos</a>
            <a href="#licencia">Licencia</a>
            <a href="#changelog">Changelog</a>
        </nav>

        <div class="docs-footer">
            <a class="btn btn-primary" href="inicio">Volver a Inicio</a>
        </div>
    </aside>

    <section class="docs-content">
        <header class="docs-hero">
            <h1>NiBel Core <small>Documentación completa</small></h1>
            <p class="muted">Guía rápida y referencia técnica — v1.0 • © 2025 NiBel</p>
        </header>

        <article class="docs-body">
            <section id="intro" class="docs-section">
                <h2>Introducción</h2>
                <p>NiBel Core es un micro-framework PHP modular y minimalista que implementa el patrón MVC. Está pensado para proyectos empresariales y SaaS que requieren control total del código sin sobrecarga de dependencias.</p>
            </section>

            <section id="instalacion" class="docs-section">
                <h2>Instalación</h2>
                <pre><code># Clona el repositorio
git clone https://github.com/nibel/NiBelCore.git
cd NiBelCore
composer install
npm install (opcional)
cp app/config/.env.example app/config/.env
# Levanta servidor local (ejemplo)
php -S localhost:8000 -t public
</code></pre>
                <p>Si usas XAMPP/Laragon coloca la carpeta <code>public/</code> como document root.</p>
            </section>

            <section id="estructura" class="docs-section">
                <h2>Estructura del proyecto</h2>
                <pre><code>NiBelCore/
├── app/
│   ├── api/
│   ├── config/
│   ├── controllers/
│   ├── models/
│   └── views/
├── public/
│   └── build/
├── src/
│   ├── scss/
│   ├── js/
│   └── img/
├── vendor/
├── gulpfile.js
├── Router.php
└── README.md
</code></pre>
                <p>La estructura está pensada para mantener separación clara entre capas y facilitar despliegues en producción.</p>
            </section>

            <section id="requisitos" class="docs-section">
                <h2>Requisitos</h2>
                <ul>
                    <li>PHP 8.1+</li>
                    <li>MySQL 5.7 / MariaDB 10.4+</li>
                    <li>Composer</li>
                    <li>Node.js + npm (para tareas de Gulp y assets)</li>
                </ul>
            </section>

            <section id="bootstrap" class="docs-section">
                <h2>Bootstrap del sistema</h2>
                <p>El archivo <code>app/config/bootstrap.php</code> se ejecuta al inicio. Sus responsabilidades:</p>
                <ul>
                    <li>Cargar composer's autoload</li>
                    <li>Cargar variables de entorno (.env)</li>
                    <li>Establecer conexión a BD (MySQLi)</li>
                    <li>Asignar conexión a la clase base <code>Master</code></li>
                </ul>

                <h3>Ejemplo (simplificado)</h3>
                <pre><code>// Autoload
require_once __DIR__ . '/../../vendor/autoload.php';

// Cargar .env usando vlucas/phpdotenv
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

// Conexión a DB (MySQLi)
$mysqli = new mysqli($_ENV['DB_HOST'], $_ENV['DB_USER'], $_ENV['DB_PASS'], $_ENV['DB_NAME']);
if ($mysqli->connect_errno) {
  die('DB connection failed: '. $mysqli->connect_error);
}

// Asignar a Master
Model\Master::setConnection($mysqli);
</code></pre>
            </section>

            <section id="env" class="docs-section">
                <h2>Variables de entorno (.env)</h2>
                <p>El archivo <code>app/config/.env</code> contiene credenciales y configuraciones sensibles (no versionar).</p>
                <pre><code># .env.example
DB_HOST=localhost
DB_USER=root
DB_PASS=
DB_NAME=nibel_db

EMAIL_HOST=smtp.example.com
EMAIL_PORT=587
EMAIL_USER=user
EMAIL_PASS=secret
</code></pre>
            </section>

            <section id="autoload" class="docs-section">
                <h2>Autoloading (PSR-4)</h2>
                <p>NiBel Core usa PSR-4 mediante Composer. Define tus namespaces en <code>composer.json</code> y usa <code>namespace</code> en clases. Esto facilita la carga automática de controladores, modelos y helpers.</p>
            </section>

            <section id="routing" class="docs-section">
                <h2>Enrutamiento</h2>
                <p>El router central (Router.php) permite declarar rutas limpias:</p>
                <pre><code>$router->get('/inicio', [InicioController::class, 'index']);
$router->post('/login', [AuthController::class, 'login']);
</code></pre>
                <p>El router ejecuta el controlador y renderiza la vista dentro del layout base (<code>layout.php</code>), inyectando la variable <code>$contenido</code>.</p>
            </section>

            <section id="mvc" class="docs-section">
                <h2>MVC</h2>
                <h3>Controladores</h3>
                <p>Los controladores se encuentran en <code>app/controllers/</code>. Un controlador típico:</p>
                <pre><code>namespace Controller;

class InicioController {
  public function index() {
    $data = ['titulo' => 'Bienvenido'];
    echo view('inicio', $data);
  }
}
</code></pre>

                <h3>Modelos</h3>
                <p>Los modelos heredan de <code>Model\Master</code> y contienen lógica de acceso a datos.</p>

                <h3>Vistas</h3>
                <p>Las vistas van en <code>app/views/</code>. El layout principal es <code>layout.php</code> y cada vista se inyecta vía <code>$contenido</code>.</p>
            </section>

            <section id="gulp" class="docs-section">
                <h2>Compilación con Gulp</h2>
                <p>NiBel Core integra un flujo de trabajo moderno mediante <strong>Gulp</strong> para compilar y optimizar recursos front-end (SCSS, JavaScript e imágenes). Esto mantiene el proyecto limpio y rápido en producción.</p>

                <h3>Instalación de dependencias</h3>
                <pre><code>npm install</code></pre>

                <h3>Ejecutar compilación en modo desarrollo</h3>
                <pre><code>npx gulp dev</code></pre>
                <p>O si lo tienes configurado en <code>package.json</code>:</p>
                <pre><code>npm run gulp dev</code></pre>

                <h3>Ubicación de archivos</h3>
                <ul>
                    <li><code>src/scss/</code> → Archivos fuente SCSS</li>
                    <li><code>src/js/</code> → Archivos JavaScript</li>
                    <li><code>src/img/</code> → Imágenes fuente (PNG/JPG)</li>
                    <li><code>public/build/</code> → Salida compilada</li>
                </ul>

                <h3>Tareas incluidas</h3>
                <pre><code>const { src, dest, watch, parallel } = require('gulp');

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
</code></pre>

                <h3>Salida generada</h3>
                <ul>
                    <li><code>public/build/css/</code> → Archivos <code>.css</code> compilados y minificados</li>
                    <li><code>public/build/js/</code> → Archivos <code>.js</code> concatenados y minificados</li>
                    <li><code>public/build/img/</code> → Imágenes optimizadas en formatos WebP y AVIF</li>
                </ul>

                <h3>Dependencias utilizadas</h3>
                <pre><code>gulp-sass, gulp-plumber, gulp-concat, gulp-rename,
autoprefixer, cssnano, gulp-postcss, gulp-sourcemaps,
gulp-cache, gulp-webp, gulp-avif, gulp-terser-js</code></pre>

                <p>Estas herramientas garantizan un flujo de trabajo ágil y compatible con navegadores modernos. El sistema puede ampliarse fácilmente agregando nuevas tareas al archivo <code>gulpfile.js</code>.</p>
            </section>

            <section id="api" class="docs-section">
                <h2>API / Endpoints</h2>
                <p>Coloca endpoints REST o AJAX dentro de <code>app/api/</code>. Recomendada respuesta en JSON y manejo de cabeceras:</p>
                <pre><code>header('Content-Type: application/json; charset=utf-8');
echo json_encode($response);
</code></pre>
            </section>

            <section id="ejemplos" class="docs-section">
                <h2>Ejemplos rápidos</h2>

                <h3>Conexión a Base de Datos</h3>
                <pre><code>$mysqli = new mysqli($_ENV['DB_HOST'], $_ENV['DB_USER'], $_ENV['DB_PASS'], $_ENV['DB_NAME']);
Model\Master::setConnection($mysqli);
</code></pre>

                <h3>Respuesta JSON</h3>
                <pre><code>public function apiUsers() {
  $users = UserModel::all();
  header('Content-Type: application/json');
  echo json_encode($users);
}
</code></pre>
            </section>

            <section id="licencia" class="docs-section">
                <h2>Licencia</h2>
                <p>NiBel Core — MIT License. Puedes usar, modificar y redistribuir manteniendo atribución.</p>
            </section>

            <section id="changelog" class="docs-section">
                <h2>Changelog</h2>
                <p><strong>v1.0 — Noviembre 2025</strong><br>Versión inicial pública. Bootstrap, router, arquitectura MVC, carga PSR-4, estructura de carpetas y flujo de compilación con Gulp.</p>
            </section>
        </article>
    </section>
</div>