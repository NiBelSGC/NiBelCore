<?php
/**
 * ───────────────────────────────────────────────
 * 🗺️ NiBel Core - routes_modulo.php
 * ───────────────────────────────────────────────
 * Definición de rutas específicas del módulo base.
 * 
 * Cada archivo de rutas debe corresponder a un solo
 * controlador. Esto mantiene el proyecto ordenado y
 * modular.
 *
 * Ejemplo:
 *  /routes_modulo.php  → BaseController
 *  /routes_clientes.php → ClienteController
 *  /routes_ventas.php   → VentaController
 *
 * © NiBel Core Framework | Desarrollado por Weimar — 2025
 * ───────────────────────────────────────────────
 */

// Página inicial del módulo
$router->get('/', [BaseController::class, 'inicio']);
$router->get('/inicio', [BaseController::class, 'inicio']);

// Crear nuevo registro
$router->get('/modulo/crear', [BaseController::class, 'crear']);
$router->post('/modulo/crear', [BaseController::class, 'crear']);

// Editar registro existente
$router->get('/modulo/editar', [BaseController::class, 'editar']);
$router->post('/modulo/editar', [BaseController::class, 'editar']);

// Eliminar registro
$router->post('/modulo/eliminar', [BaseController::class, 'eliminar']);
