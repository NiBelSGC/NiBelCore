<?php
/**
 * ───────────────────────────────────────────────
 * 🧱 NiBel Core - ModeloEjemplo.php
 * ───────────────────────────────────────────────
 * Modelo genérico de ejemplo que hereda de la clase
 * base `Master` e implementa los métodos esenciales
 * del patrón Active Record (CRUD + validación).
 *
 * Este archivo sirve como plantilla base para crear
 * nuevos modelos dentro del framework NiBel Core.
 *
 * © NiBel Core Framework | Desarrollado por Weimar — 2025
 * ───────────────────────────────────────────────
 */

namespace Model;

class ModeloEjemplo extends Master
{
    /**
     * 🧩 Propiedades del modelo
     * ------------------------------------------------
     * Cada propiedad debe coincidir con una columna
     * existente en la tabla de base de datos.
     */
    protected static $tabla = 'tabla_ejemplo'; // Nombre de la tabla asociada
    protected static $columnasDB = ['id', 'nombre', 'descripcion', 'fecha_creacion'];

    public $id;
    public $nombre;
    public $descripcion;
    public $fecha_creacion;

    /**
     * 🏗️ Constructor del modelo
     * ------------------------------------------------
     * Permite crear objetos desde un arreglo de datos.
     */
    public function __construct($args = [])
    {
        $this->id = $args['id'] ?? null;
        $this->nombre = $args['nombre'] ?? '';
        $this->descripcion = $args['descripcion'] ?? '';
        $this->fecha_creacion = $args['fecha_creacion'] ?? date('Y-m-d');
    }

    /**
     * 🧾 validar()
     * ------------------------------------------------
     * Realiza las validaciones básicas antes de guardar
     * o actualizar el registro.
     *
     * @return array Arreglo de errores (vacío si todo OK)
     */
    public function validar()
    {
        static::$errores = [];

        if (!$this->nombre) {
            static::$errores[] = "El campo 'nombre' es obligatorio.";
        }

        if (strlen($this->descripcion) > 255) {
            static::$errores[] = "La descripción no puede superar los 255 caracteres.";
        }

        return static::$errores;
    }

    /**
     * 💾 guardar()
     * ------------------------------------------------
     * Inserta o actualiza el registro según corresponda.
     */
    public function guardar()
    {
        if (isset($this->id) && $this->id !== null) {
            $this->actualizar();
        } else {
            $this->crear();
        }
    }

    /**
     * ➕ crear()
     * ------------------------------------------------
     * Inserta un nuevo registro en la base de datos.
     */
    protected function crear()
    {
        $atributos = $this->sanitizarAtributos();
        $columnas = join(', ', array_keys($atributos));
        $valores = join("', '", array_values($atributos));

        $query = "INSERT INTO " . static::$tabla . " ($columnas) VALUES ('$valores')";
        self::$db->query($query);
    }

    /**
     * ✏️ actualizar()
     * ------------------------------------------------
     * Actualiza un registro existente en la base de datos.
     */
    protected function actualizar()
    {
        $atributos = $this->sanitizarAtributos();
        $valores = [];

        foreach ($atributos as $key => $value) {
            $valores[] = "{$key} = '{$value}'";
        }

        $query = "UPDATE " . static::$tabla . " SET ";
        $query .= join(', ', $valores);
        $query .= " WHERE id = '" . self::$db->escape_string($this->id) . "' LIMIT 1";

        self::$db->query($query);
    }

    /**
     * ❌ eliminar()
     * ------------------------------------------------
     * Elimina el registro actual de la base de datos.
     */
    public function eliminar()
    {
        $query = "DELETE FROM " . static::$tabla . " WHERE id = '" . self::$db->escape_string($this->id) . "' LIMIT 1";
        self::$db->query($query);
    }

    /**
     * 🔍 find()
     * ------------------------------------------------
     * Busca un registro por su ID y devuelve un objeto
     * del modelo correspondiente.
     */
    public static function find($id)
    {
        $query = "SELECT * FROM " . static::$tabla . " WHERE id = '" . self::$db->escape_string($id) . "' LIMIT 1";
        $resultado = self::consultarSQL($query);
        return array_shift($resultado);
    }

    /**
     * 📋 all()
     * ------------------------------------------------
     * Devuelve todos los registros de la tabla.
     */
    public static function all()
    {
        $query = "SELECT * FROM " . static::$tabla;
        return self::consultarSQL($query);
    }

    /**
     * 🧱 atributos()
     * ------------------------------------------------
     * Retorna un arreglo asociativo con las columnas
     * y valores actuales del objeto.
     */
    public function atributos()
    {
        $atributos = [];
        foreach (static::$columnasDB as $columna) {
            if ($columna === 'id') continue; // omite ID en inserciones
            $atributos[$columna] = $this->$columna;
        }
        return $atributos;
    }

    /**
     * 🧼 sanitizarAtributos()
     * ------------------------------------------------
     * Limpia los valores del objeto antes de enviarlos
     * a la base de datos para evitar inyecciones SQL.
     */
    public function sanitizarAtributos()
    {
        $atributos = $this->atributos();
        $sanitizado = [];

        foreach ($atributos as $key => $value) {
            $sanitizado[$key] = self::$db->escape_string($value);
        }

        return $sanitizado;
    }
}
