-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2025 a las 19:37:50
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vecinity`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradora`
--

CREATE TABLE `administradora` (
  `id_ui` int(1) NOT NULL,
  `raz_soc_admin` varchar(80) NOT NULL,
  `ruc_admin` varchar(20) NOT NULL,
  `dir_fiscal_admin` varchar(100) NOT NULL,
  `dir_op_admin` varchar(100) NOT NULL,
  `telef_fijo_admin` varchar(20) NOT NULL,
  `telef_movil_admin` varchar(20) NOT NULL,
  `per_contact` varchar(70) NOT NULL,
  `web_admin` varchar(50) NOT NULL,
  `logo_admin` varchar(60) NOT NULL,
  `id_moneda` int(1) NOT NULL,
  `pie_firma_admin` varchar(60) NOT NULL,
  `email_remit_admin` varchar(60) NOT NULL,
  `nom_remit_admin` varchar(60) NOT NULL,
  `email_resp_admin` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administradora`
--

INSERT INTO `administradora` (`id_ui`, `raz_soc_admin`, `ruc_admin`, `dir_fiscal_admin`, `dir_op_admin`, `telef_fijo_admin`, `telef_movil_admin`, `per_contact`, `web_admin`, `logo_admin`, `id_moneda`, `pie_firma_admin`, `email_remit_admin`, `nom_remit_admin`, `email_resp_admin`) VALUES
(1, 'Empresa Administradora S.A.C.', '20202020202', 'Calle administradora 123 Administración', 'Calle operativa administradora 123 Administración', '+51 1234545', '951951951', 'Frank Nava', 'https://administradora.com', 'logo.png', 1, 'piefirmacorreo.png', 'administradora@admin.com', 'Empresa Administradora', 'administradorarespuesta@admin.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bancos_prov`
--

CREATE TABLE `bancos_prov` (
  `id_cta_ban_prov` int(11) NOT NULL,
  `id_prov` int(11) NOT NULL,
  `id_tipo_cta` int(1) NOT NULL,
  `banco_prov` varchar(60) NOT NULL,
  `cta_ban_prov` varchar(30) NOT NULL,
  `cci_prov` varchar(30) NOT NULL,
  `id_mon` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bancos_prov`
--

INSERT INTO `bancos_prov` (`id_cta_ban_prov`, `id_prov`, `id_tipo_cta`, `banco_prov`, `cta_ban_prov`, `cci_prov`, `id_mon`) VALUES
(1, 1, 2, 'BCP', '191-1234567-0-12', '002-191-001234567012-56', 1),
(2, 1, 1, 'Interbank', '300-5678901-1', '003-300-005678901123-45', 2),
(5, 1, 2, 'BBVA', '001-200-2122452-11', '00012000021224521145', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos_personal`
--

CREATE TABLE `cargos_personal` (
  `id_cargo` int(11) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `funciones` varchar(400) NOT NULL,
  `id_activo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargos_personal`
--

INSERT INTO `cargos_personal` (`id_cargo`, `cargo`, `funciones`, `id_activo`) VALUES
(1, 'Administrador General', 'Dirigir y coordinar todas las operaciones del inmueble; gestionar personal, proveedores, mantenimiento y finanzas; representar legalmente a la unidad ante autoridades o juntas de propietarios.', 1),
(2, 'Asistente Administrativo', 'Apoyar al administrador en tareas de gestión documental, atención de residentes o locatarios, emisión de comunicados y control de pagos y cobranzas.', 1),
(3, 'Contador / Responsable de Finanzas', 'Llevar la contabilidad, control presupuestal, estados financieros, cobranzas, pagos y reportes mensuales a propietarios o gerencia.', 0),
(4, 'Jefe de Seguridad', 'Supervisar al personal de vigilancia, establecer protocolos de seguridad y emergencias, coordinar con la policía o empresas de seguridad.', 1),
(5, 'Agente / Guardia de Seguridad', 'Controlar accesos, rondas internas, registro de visitas, reporte de incidencias y cumplimiento de normas internas.', 1),
(6, 'Jefe de Mantenimiento', 'Coordinar, supervisar y ejecutar planes de mantenimiento preventivo y correctivo de instalaciones eléctricas, sanitarias, mecánicas y estructurales.', 1),
(7, 'Técnico de Mantenimiento', 'Realizar reparaciones, mantenimientos programados, atención de fallas eléctricas, sanitarias, bombas, ascensores, etc.', 1),
(8, 'Supervisor de Limpieza', 'Planificar y coordinar al personal de limpieza, supervisar cumplimiento de rutinas y control de insumos.', 1),
(9, 'Personal de Limpieza / Aseo', 'Mantener la limpieza y orden de áreas comunes, oficinas o locales; manejo de residuos y reciclaje.', 1),
(10, 'Conserje / Portero', 'Vigilar el ingreso y salida de personas, manejo de llaves, atención a residentes, apoyo logístico en correspondencia y emergencias.', 1),
(11, 'Recepcionista', 'Atender visitas, llamadas y solicitudes; administrar correspondencia y agendas de reuniones o eventos.', 1),
(12, 'Jefe de Operaciones / Facility Manager', 'Supervisar la infraestructura general, contratos de servicios, cumplimiento de normas técnicas y operativas.', 0),
(13, 'Encargado de Estacionamientos', 'Control de accesos vehiculares, asignación de espacios, cobro de estacionamientos y mantenimiento del área.', 0),
(14, 'Supervisor de Jardinería / Áreas Verdes', 'Coordinar la conservación y mantenimiento de jardines, áreas verdes y sistemas de riego.', 1),
(15, 'Jardinero', 'Cuidado, poda, riego y limpieza de jardines, plantas y áreas exteriores.', 1),
(16, 'Electricista', 'Mantenimiento y reparación de sistemas eléctricos, alumbrado, tableros y bombas.', 0),
(17, 'Plomero / Sanitario', 'Revisión, mantenimiento y reparación de tuberías, baños, cisternas y sistemas hidráulicos.', 1),
(18, 'Técnico HVAC / Aire Acondicionado', 'Mantener sistemas de climatización, ventilación y extracción de aire en óptimas condiciones.', 1),
(19, 'Supervisor de Limpieza de Fachadas / Alturas', 'Coordinar mantenimiento de vidrios y estructuras externas con empresas especializadas.', 1),
(20, 'Coordinador de Comunicación / Relaciones con Propi', 'Manejar canales de comunicación interna, boletines, reuniones y atención a reclamos.', 0),
(21, 'Jefe de Compras / Logística', 'Gestionar adquisiciones, cotizaciones, inventarios y control de suministros.', 0),
(22, 'Almacenero / Responsable de Bodega', 'Control de insumos, herramientas y materiales de mantenimiento o limpieza.', 0),
(23, 'Encargado de Residuos / Medio Ambiente', 'Gestionar recolección, segregación y disposición de residuos conforme a normativas ambientales.', 0),
(24, 'Inspector de Seguridad y Salud en el Trabajo (SST)', 'Verificar cumplimiento de normas de seguridad, uso de EPP, simulacros y capacitación del personal.', 0),
(25, 'Jefe de Emergencias / Coordinador de Brigadas', 'Organizar brigadas de emergencia, planes de evacuación y simulacros.', 1),
(26, 'Supervisor de Ascensores / Sistemas Críticos', 'Monitorear mantenimiento de ascensores, bombas, tableros eléctricos y sistemas automáticos.', 1),
(27, 'Técnico de Sistemas / CCTV', 'Mantenimiento de cámaras de seguridad, red de datos, alarmas, sensores y sistemas automatizados.', 1),
(28, 'Jefe de Servicios Generales', 'Supervisar las áreas de limpieza, mantenimiento, jardinería y vigilancia en conjunto.', 0),
(29, 'Coordinador de Eventos / Áreas Comunes', 'Administrar reservas, mantenimiento y uso de áreas comunes o auditorios.', 1),
(30, 'Encargado de Correspondencia / Mensajería', 'Recepción, clasificación y entrega de documentos o paquetes dentro de la unidad.', 0),
(31, 'Supervisor de Contratistas', 'Controlar acceso, desempeño y cumplimiento de normas por parte de empresas externas.', 1),
(32, 'Jefe de Alquileres / Comercialización', 'Gestionar contratos de arrendamiento, locales disponibles y atención a inquilinos comerciales.', 0),
(33, 'Supervisor de Tiendas / Locales Comerciales', 'Coordinar mantenimiento y cumplimiento de normas de operación con locatarios.', 0),
(34, 'Gerente del Centro Comercial / Plaza', 'Dirigir la gestión integral del centro comercial: administración, seguridad, marketing y arrendamientos.', 0),
(35, 'Jefe de Marketing / Comunicaciones (Centros Comerc', 'Planificar eventos, campañas y promociones en espacios comerciales.', 0),
(36, 'Jefe de Parque Industrial / Zonas Productivas', 'Supervisar la seguridad, mantenimiento y cumplimiento normativo de las áreas industriales.', 0),
(37, 'Supervisor de Transporte / Movilidad Interna', 'Coordinar rutas internas, transporte de personal o logística de vehículos dentro del complejo.', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos_prov`
--

CREATE TABLE `contactos_prov` (
  `id_contact_prov` int(11) NOT NULL,
  `id_prov` int(11) NOT NULL,
  `nombre_contact_prov` varchar(70) NOT NULL,
  `area_contact_prov` varchar(50) NOT NULL,
  `cargo_contact_prov` varchar(50) NOT NULL,
  `telef_contact_prov` varchar(15) NOT NULL,
  `email_contact_prov` varchar(50) NOT NULL,
  `estado_contact_prov` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contactos_prov`
--

INSERT INTO `contactos_prov` (`id_contact_prov`, `id_prov`, `nombre_contact_prov`, `area_contact_prov`, `cargo_contact_prov`, `telef_contact_prov`, `email_contact_prov`, `estado_contact_prov`) VALUES
(1, 1, 'Miguel Fernandez', 'Compras', 'Supervisor de compras', '956956956', 'miguelf@apccorporacion.com', 'A'),
(2, 1, 'Felicita Chavez', 'Finanzas', 'Analista financiero', '987999999', 'fchavez@gmail.com', 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id_dep` int(11) NOT NULL,
  `id_torre` int(11) NOT NULL,
  `cod_dep` varchar(20) NOT NULL,
  `num_piso` int(3) NOT NULL,
  `area_dep` decimal(4,2) NOT NULL,
  `num_hab` int(3) NOT NULL,
  `num_banio` int(3) NOT NULL,
  `id_tipo_dep` int(1) NOT NULL,
  `estado_ocup` int(1) NOT NULL,
  `tipo_asign_dep` int(1) NOT NULL,
  `id_tipo_prop` int(1) NOT NULL,
  `id_sujeto` int(1) NOT NULL,
  `fecha_entrega_dep` datetime DEFAULT NULL,
  `id_residente` int(11) NOT NULL,
  `fecha_alquiler_dep` datetime DEFAULT NULL,
  `obs_dep` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id_dep`, `id_torre`, `cod_dep`, `num_piso`, `area_dep`, `num_hab`, `num_banio`, `id_tipo_dep`, `estado_ocup`, `tipo_asign_dep`, `id_tipo_prop`, `id_sujeto`, `fecha_entrega_dep`, `id_residente`, `fecha_alquiler_dep`, `obs_dep`) VALUES
(1, 2, '802', 8, 79.00, 3, 2, 1, 2, 1, 2, 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', ''),
(2, 3, '101', 1, 65.00, 2, 1, 1, 1, 1, 1, 2, '0000-00-00 00:00:00', 2, NULL, 'Es el único departamento del primer piso'),
(3, 1, '702', 7, 89.00, 3, 2, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', 0, NULL, ''),
(4, 4, '504', 5, 89.00, 4, 2, 1, 2, 2, 1, 1, '0000-00-00 00:00:00', 3, '2025-01-28 00:00:00', 'Alquilado desde la entrega'),
(5, 1, '201', 0, 79.00, 0, 0, 1, 2, 1, 1, 0, '0000-00-00 00:00:00', 0, NULL, ''),
(6, 1, '803', 8, 99.99, 4, 3, 2, 2, 2, 1, 1, '2024-07-11 00:00:00', 3, '2025-10-02 00:00:00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos_peru`
--

CREATE TABLE `departamentos_peru` (
  `id_departamento` varchar(2) NOT NULL,
  `nom_departamento` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `departamentos_peru`
--

INSERT INTO `departamentos_peru` (`id_departamento`, `nom_departamento`) VALUES
('01', 'Amazonas'),
('02', 'Áncash'),
('03', 'Apurímac'),
('04', 'Arequipa'),
('05', 'Ayacucho'),
('06', 'Cajamarca'),
('07', 'Callao'),
('08', 'Cusco'),
('09', 'Huancavelica'),
('10', 'Huánuco'),
('11', 'Ica'),
('12', 'Junín'),
('13', 'La Libertad'),
('14', 'Lambayeque'),
('15', 'Lima'),
('16', 'Loreto'),
('17', 'Madre de Dios'),
('18', 'Moquegua'),
('19', 'Pasco'),
('20', 'Piura'),
('21', 'Puno'),
('22', 'San Martín'),
('23', 'Tacna'),
('24', 'Tumbes'),
('25', 'Ucayali');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `depositos`
--

CREATE TABLE `depositos` (
  `id_deposit` int(11) NOT NULL,
  `nom_deposit` varchar(30) NOT NULL,
  `id_torre` int(11) NOT NULL,
  `area_deposit` decimal(10,2) NOT NULL,
  `estado_actual` int(1) NOT NULL,
  `id_sujeto` int(11) NOT NULL,
  `id_dep` int(11) NOT NULL,
  `tipo_asign_deposit` int(1) NOT NULL,
  `id_usuario_deposit` int(11) NOT NULL,
  `fecha_entrega_deposit` date DEFAULT NULL,
  `fecha_alquiler_deposit` date DEFAULT NULL,
  `obs_deposit` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `depositos`
--

INSERT INTO `depositos` (`id_deposit`, `nom_deposit`, `id_torre`, `area_deposit`, `estado_actual`, `id_sujeto`, `id_dep`, `tipo_asign_deposit`, `id_usuario_deposit`, `fecha_entrega_deposit`, `fecha_alquiler_deposit`, `obs_deposit`) VALUES
(1, 'D-1', 1, 18.00, 1, 0, 0, 1, 0, '0000-00-00', '0000-00-00', ''),
(2, 'D-2', 2, 18.00, 2, 1, 2, 1, 1, '2024-02-06', '0000-00-00', ''),
(3, 'D-3', 3, 18.00, 2, 4, 5, 2, 3, '2023-07-01', '2025-10-16', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos_financieros`
--

CREATE TABLE `documentos_financieros` (
  `id_doc_fin` int(10) NOT NULL,
  `doc_fin` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `documentos_financieros`
--

INSERT INTO `documentos_financieros` (`id_doc_fin`, `doc_fin`) VALUES
(1, 'Factura'),
(2, 'Boleta simple'),
(3, 'Invoice'),
(4, 'Boleta electrónica'),
(5, 'Recibo por Honorarios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doc_pagos_prov`
--

CREATE TABLE `doc_pagos_prov` (
  `id_doc_pag_prov` int(11) NOT NULL,
  `id_prov` int(11) NOT NULL,
  `id_doc_fin` int(2) NOT NULL,
  `num_doc_fin_prov` varchar(30) NOT NULL,
  `fecha_doc_fin_prov` date DEFAULT NULL,
  `id_mon` int(1) NOT NULL,
  `monto` decimal(11,2) NOT NULL,
  `fecha_ven` date DEFAULT NULL,
  `detalle_compra` varchar(300) NOT NULL,
  `id_ui` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `doc_pagos_prov`
--

INSERT INTO `doc_pagos_prov` (`id_doc_pag_prov`, `id_prov`, `id_doc_fin`, `num_doc_fin_prov`, `fecha_doc_fin_prov`, `id_mon`, `monto`, `fecha_ven`, `detalle_compra`, `id_ui`) VALUES
(2, 1, 1, '001-45556', '2025-09-01', 1, 500.00, '2025-09-23', 'Compra de materiales', 4),
(3, 1, 4, 'B001-987', '2025-09-25', 1, 155.00, '2025-09-25', 'Compra de insumos de limpieza', 1),
(4, 1, 4, 'B001-499', '2025-09-01', 2, 250.00, '2025-09-30', 'Compra de luminarias', 4),
(7, 1, 4, 'B005-4444', '2025-11-01', 1, 500.00, '2025-11-03', 'Compra de insumos para decoración', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doi`
--

CREATE TABLE `doi` (
  `id_doc` int(2) NOT NULL,
  `nom_doc` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `doi`
--

INSERT INTO `doi` (`id_doc`, `nom_doc`) VALUES
(1, 'RUC'),
(2, 'DNI'),
(3, 'Carnet de Extranjería'),
(4, 'Carné de Permiso Temporal de Permanencia (CPP/PTP)'),
(5, 'Pasaporte'),
(6, 'Carné Diplomático u organismos'),
(7, 'Carné militar/policial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estacionamientos`
--

CREATE TABLE `estacionamientos` (
  `id_est` int(11) NOT NULL,
  `id_torre` int(11) NOT NULL,
  `num_est` varchar(5) NOT NULL,
  `ubic` varchar(50) NOT NULL,
  `area_est` decimal(4,2) NOT NULL,
  `id_tipo_est` int(2) NOT NULL,
  `estado_actual` int(1) NOT NULL,
  `id_sujeto` int(1) NOT NULL,
  `tipo_asign_est` int(1) NOT NULL,
  `id_usuario_est` int(11) DEFAULT NULL,
  `fecha_alquiler_est` date DEFAULT NULL,
  `id_dep` int(11) DEFAULT NULL,
  `fecha_entrega_est` date DEFAULT NULL,
  `obs_est` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estacionamientos`
--

INSERT INTO `estacionamientos` (`id_est`, `id_torre`, `num_est`, `ubic`, `area_est`, `id_tipo_est`, `estado_actual`, `id_sujeto`, `tipo_asign_est`, `id_usuario_est`, `fecha_alquiler_est`, `id_dep`, `fecha_entrega_est`, `obs_est`) VALUES
(1, 1, 'E-1', 'Sótano 3', 18.00, 1, 2, 1, 1, 1, '0000-00-00', 1, '2024-02-28', ' '),
(2, 1, 'E-2', 'Sótano 3', 18.00, 1, 1, 0, 1, 0, '0000-00-00', 0, '0000-00-00', ' '),
(3, 2, 'E-11', 'Frente exterior - Rivadavia', 36.00, 2, 2, 4, 2, 3, '2025-10-02', 5, '0000-00-00', '   ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `img_visitas`
--

CREATE TABLE `img_visitas` (
  `id_img_visita` int(11) NOT NULL,
  `id_visita` int(11) NOT NULL,
  `tipo_img_visita` int(1) NOT NULL,
  `img_visita` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `img_visitas`
--

INSERT INTO `img_visitas` (`id_img_visita`, `id_visita`, `tipo_img_visita`, `img_visita`) VALUES
(21, 2, 1, '8vPfm3yiWG.jpg'),
(22, 2, 1, 'OqexRILQ80.jpg'),
(23, 2, 1, 'XYOrHjlyRp.jpg'),
(24, 2, 2, 'NKLnHMxe0Y.jpg'),
(25, 2, 2, 'eGOCz6JAPa.jpg'),
(26, 2, 2, 'SOlDAuB37K.webp'),
(27, 1, 1, 'WrJY3KkMLy.jpg'),
(28, 1, 1, '98qTDsR1jX.jpg'),
(29, 1, 1, 'YSjapTD6Ul.jpg'),
(30, 1, 2, 'w8uQULZ3WE.jpg'),
(31, 1, 2, 'qo20XGwnsC.jpg'),
(32, 1, 2, 't2W69rBIYS.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencias_prov`
--

CREATE TABLE `incidencias_prov` (
  `id_inc_prov` int(11) NOT NULL,
  `id_prov` int(11) NOT NULL,
  `fecha_reg_inc` date NOT NULL,
  `fecha_inc` date NOT NULL,
  `detalle_inc` varchar(300) NOT NULL,
  `sol_inc` varchar(300) NOT NULL,
  `fecha_sol` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `incidencias_prov`
--

INSERT INTO `incidencias_prov` (`id_inc_prov`, `id_prov`, `fecha_reg_inc`, `fecha_inc`, `detalle_inc`, `sol_inc`, `fecha_sol`) VALUES
(1, 1, '2025-09-19', '2025-09-14', 'Retraso en la entrega de materiales de importación', 'Se amplió el rango de tiempos de entrega.', '2025-09-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medio_pago`
--

CREATE TABLE `medio_pago` (
  `id_medio_pago` int(11) NOT NULL,
  `medio_pago` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medio_pago`
--

INSERT INTO `medio_pago` (`id_medio_pago`, `medio_pago`) VALUES
(1, 'Transferencia bancaria'),
(2, 'Depósito en cuenta'),
(3, 'Cheque'),
(4, 'Cheque de Gerencia'),
(5, 'Efectivo'),
(6, 'Tarjeta de crédito / débito'),
(7, 'Yape / Plin (billeteras digitales)'),
(8, 'Letra de cambio / pagaré'),
(9, 'Pago contra entrega (C.O.D.)'),
(10, 'Pago interbancario (CCI)'),
(11, 'Otro medio de pago');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajeria_conversacion`
--

CREATE TABLE `mensajeria_conversacion` (
  `id_conv` int(11) NOT NULL,
  `id_sujeto` int(11) NOT NULL,
  `titulo_conv` varchar(150) NOT NULL,
  `fecha_conv` datetime NOT NULL,
  `lectura_conv` varchar(2) NOT NULL,
  `estado_sujeto` int(1) DEFAULT NULL,
  `estado_admin` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mensajeria_conversacion`
--

INSERT INTO `mensajeria_conversacion` (`id_conv`, `id_sujeto`, `titulo_conv`, `fecha_conv`, `lectura_conv`, `estado_sujeto`, `estado_admin`) VALUES
(1, 1, 'Solicitud de información', '2025-10-08 07:13:08', 'NL', 1, 1),
(2, 2, 'Entrega de documentos', '2025-10-09 13:28:20', 'NL', 1, 1),
(3, 3, 'Consulta sobre facturación', '2025-10-10 17:31:34', 'NL', 1, 1),
(4, 3, 'Probando la creación de una conversación nueva', '2025-10-13 19:40:10', 'NL', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajeria_mensajes`
--

CREATE TABLE `mensajeria_mensajes` (
  `id_mensaje` int(11) NOT NULL,
  `id_conv` int(11) NOT NULL,
  `autor` int(1) NOT NULL,
  `fecha_hora_mensaje` datetime NOT NULL,
  `mensaje` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mensajeria_mensajes`
--

INSERT INTO `mensajeria_mensajes` (`id_mensaje`, `id_conv`, `autor`, `fecha_hora_mensaje`, `mensaje`) VALUES
(1, 1, 2, '2025-10-10 12:54:40', 'Estimado administrador, quisiera saber si ya está disponible el informe de inventario del mes pasado.'),
(2, 1, 1, '2025-10-10 14:54:40', 'Hola Juan, el informe ya se encuentra disponible en la sección de reportes. Puedes descargarlo con tu usuario habitual.'),
(3, 1, 2, '2025-10-10 20:54:40', 'Perfecto, muchas gracias por la información. Ya lo descargué sin problemas.'),
(4, 2, 2, '2025-10-09 12:56:13', 'Estimado administrador, por favor indicar donde debo presentar los documentos solicitados'),
(5, 2, 1, '2025-10-09 15:56:13', 'Buenas tardes Jhon, por favor presentarlos de manera virtual por la plataforma de subida de documentos del sistema, gracias.'),
(6, 3, 2, '2025-10-08 12:57:46', 'Hola Administrador, buenas tardes. Por favor necesito que me envíe el detalle de la facturación a la fecha lo más pronto posible.'),
(7, 3, 1, '2025-10-08 15:57:46', 'Buenas tardes Andrea, sí claro, sin problemas. En breve estaré colgando la información en la plataforma para que la puedas visualizar. De igual manera te la estaré enviando vía email.'),
(8, 3, 2, '2025-10-08 18:57:46', 'Muchas gracias. Estaré atenta a la recepción de la información.'),
(9, 4, 1, '2025-10-13 19:40:10', 'Hola Administrador, probando la creación de una conversación nueva.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meses`
--

CREATE TABLE `meses` (
  `id_mes` int(11) NOT NULL,
  `mes` varchar(30) NOT NULL,
  `num_mes` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `meses`
--

INSERT INTO `meses` (`id_mes`, `mes`, `num_mes`) VALUES
(1, 'Enero', '01'),
(2, 'Febrero', '02'),
(3, 'Marzo', '03'),
(4, 'Abril', '04'),
(5, 'Mayo', '05'),
(6, 'Junio', '06'),
(7, 'Julio', '07'),
(8, 'Agosto', '08'),
(9, 'Setiembre', '09'),
(10, 'Octubre', '10'),
(11, 'Noviembre', '11'),
(12, 'Diciembre', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moneda`
--

CREATE TABLE `moneda` (
  `id_mon` int(1) NOT NULL,
  `nom_mon` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `moneda`
--

INSERT INTO `moneda` (`id_mon`, `nom_mon`) VALUES
(1, 'Soles'),
(2, 'Dólares'),
(3, 'Euros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operadores`
--

CREATE TABLE `operadores` (
  `id_operador` int(11) NOT NULL,
  `operador` varchar(80) NOT NULL,
  `id_tipo_operador` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `operadores`
--

INSERT INTO `operadores` (`id_operador`, `operador`, `id_tipo_operador`) VALUES
(1, 'Sedapal', 1),
(2, 'Pluz Energía Perú S.A.A.', 2),
(3, 'Luz del Sur S.A.A.', 2),
(4, 'ADINELSA', 2),
(5, 'Calidda', 3),
(6, 'Movistar', 4),
(7, 'Claro', 4),
(8, 'Entel Perú S.A.', 4),
(9, 'Bitel', 4),
(10, 'WOW Perú', 5),
(11, 'WIN', 5),
(12, 'DirectTV', 5),
(13, 'Movistar', 5),
(14, 'Claro', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos_prov`
--

CREATE TABLE `pagos_prov` (
  `id_pago_prov` int(11) NOT NULL,
  `id_doc_pag_prov` int(11) NOT NULL,
  `fecha_pago` date NOT NULL,
  `id_medio_pago` int(11) NOT NULL,
  `monto_pagado` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos_prov`
--

INSERT INTO `pagos_prov` (`id_pago_prov`, `id_doc_pag_prov`, `fecha_pago`, `id_medio_pago`, `monto_pagado`) VALUES
(1, 1, '2025-09-05', 1, 250.00),
(2, 2, '2025-09-18', 2, 250.00),
(3, 2, '2025-09-23', 2, 250.00),
(4, 3, '2025-09-25', 5, 155.00),
(5, 4, '2025-11-01', 5, 250.00),
(6, 7, '2025-11-01', 5, 250.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id_per` int(11) NOT NULL,
  `id_doc` varchar(50) NOT NULL,
  `num_doc_per` varchar(20) NOT NULL,
  `nombres_per` varchar(50) NOT NULL,
  `apellidos_per` varchar(50) NOT NULL,
  `imagen_per` varchar(60) NOT NULL,
  `telef_per` varchar(11) NOT NULL,
  `email_per` varchar(20) NOT NULL,
  `direccion_per` varchar(100) NOT NULL,
  `horario_per` varchar(50) NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_fin_contrato` date DEFAULT NULL,
  `emp_contratant` varchar(80) DEFAULT NULL,
  `id_regimen` int(1) DEFAULT NULL,
  `id_tipo_contratat` int(2) NOT NULL,
  `sctr` int(1) DEFAULT NULL,
  `fecha_cad_sctr` date DEFAULT NULL,
  `obs_per` varchar(500) NOT NULL,
  `estado_per_activ` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`id_per`, `id_doc`, `num_doc_per`, `nombres_per`, `apellidos_per`, `imagen_per`, `telef_per`, `email_per`, `direccion_per`, `horario_per`, `fecha_ingreso`, `fecha_fin_contrato`, `emp_contratant`, `id_regimen`, `id_tipo_contratat`, `sctr`, `fecha_cad_sctr`, `obs_per`, `estado_per_activ`) VALUES
(1, '1', '12345678', 'Juan', 'Pérez Ramírez', 'ad455fds.jpg', '987654321', 'juanperez@email.com', 'Av. Siempre Viva 742', 'Lun - Vie, 08:00 - 18:00', '2025-01-12', '2025-12-15', '', 0, 2, 1, '2025-09-30', '   ', 'A'),
(2, '1', '40409529', 'Francisca Julia', 'Valverde Fernandez', '0hlnxrvjk0.jpg', '941434183', 'wmuroa@gmail.com', 'Ca. Rivadavia 172 dpto. 802 Pueblo Libre', 'Lunes a Viernes 8:00am a 06:00pm', '2023-02-07', '2025-12-31', 'ADECO', 4, 1, 1, '2025-10-06', '           ', 'A'),
(3, '1', '25252525', 'Juan', 'Perez García', '', '998789983', 'juanperez@gmail.com', 'Av. Siempre Viva 242', 'Lunes a Domingo 8pm a 6am - Descanso sábados', '2025-06-11', '2026-06-10', 'PROSEGUR', 4, 13, 1, '2025-09-30', ' No se tienen Observaciones', 'A'),
(4, '2', '25831632', 'Weimar', 'Muro Almeida', 'kdjk0uacht.png', '941434183', 'wmuroa@gmail.com', 'Ca. Rivadavia 172 dpto. 802 Pueblo Libre', 'Libre', '2025-01-02', '2026-06-16', '', 0, 3, 1, '2025-11-05', ' ', 'A'),
(5, '2', '50505050', 'Felicia Alberta', 'Chavez Morales', 'u13ai8vvrs.jpg\n', '987987987', 'fchavez@gmail.com', 'Av. Lopez de Ayala 122 San Juan de Lurigancho', 'Lunes a Viernes 8:00am a 06:00pm', '2025-10-01', '2026-10-01', 'APC Corporación S.A.', 4, 2, 1, '2025-10-09', '   Sin observaciones', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_ui`
--

CREATE TABLE `personal_ui` (
  `id_per_ui` int(11) NOT NULL,
  `id_ui` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `id_per` int(11) NOT NULL,
  `fecha_ing_per_ui` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personal_ui`
--

INSERT INTO `personal_ui` (`id_per_ui`, `id_ui`, `id_cargo`, `id_per`, `fecha_ing_per_ui`) VALUES
(1, 4, 1, 4, '2024-06-05'),
(2, 4, 9, 2, '2025-01-13'),
(3, 4, 10, 3, '2025-04-18'),
(4, 4, 5, 1, '2025-02-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_prov` int(11) NOT NULL,
  `raz_soc` varchar(60) NOT NULL,
  `nom_com` varchar(60) NOT NULL,
  `id_doc` int(2) NOT NULL,
  `num_doc_prov` varchar(15) NOT NULL,
  `id_tipo_prov` int(1) NOT NULL,
  `id_rubro_prov` int(1) NOT NULL,
  `rep_legal` varchar(60) NOT NULL,
  `cargo_rep_legal` varchar(60) NOT NULL,
  `rep_ventas` varchar(70) NOT NULL,
  `telf1_prov` varchar(20) NOT NULL,
  `telf2_prov` varchar(20) NOT NULL,
  `email_prov` varchar(40) NOT NULL,
  `direccionf_prov` varchar(200) NOT NULL,
  `direcciono_prov` varchar(200) NOT NULL,
  `web_prov` varchar(50) NOT NULL,
  `cond_pag` varchar(50) NOT NULL,
  `fecha_ini_rel_prov` date NOT NULL,
  `prod_serv` varchar(200) NOT NULL,
  `certificados` varchar(100) NOT NULL,
  `homologado` int(1) NOT NULL,
  `calif_prov` varchar(20) NOT NULL,
  `obs_prov` varchar(500) NOT NULL,
  `estado_prov_activ` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_prov`, `raz_soc`, `nom_com`, `id_doc`, `num_doc_prov`, `id_tipo_prov`, `id_rubro_prov`, `rep_legal`, `cargo_rep_legal`, `rep_ventas`, `telf1_prov`, `telf2_prov`, `email_prov`, `direccionf_prov`, `direcciono_prov`, `web_prov`, `cond_pag`, `fecha_ini_rel_prov`, `prod_serv`, `certificados`, `homologado`, `calif_prov`, `obs_prov`, `estado_prov_activ`) VALUES
(1, 'Servicios Generales Andinos S.A.C.', 'Andinos Servicios', 7, '20547896541', 5, 19, 'José Luis Carranza Veg', 'Gerente General', 'Ricardo Palma', '(01) 456-7890', '987 654 321', 'contacto@andinoservicios.com.pe', 'Av. Arequipa 2450, Lince, Lima', 'Jr. Grau 1325, La Victoria, Lima', 'https://andinoservicios.com.pe', '30 días', '2019-05-15', 'Limpieza, fumigación, mantenimiento eléctrico', 'ISO 9001, Certificado de fumigación DIGESA', 1, 'excelente', 'Responde rápido a emergencias, buena relación costo-beneficio', 'A'),
(2, 'Inmobiliaria Torres & Asociados E.I.R.L.', 'Torres Inmobiliaria', 7, '20657894312', 3, 8, 'Carla Milagros Torres Huamán', 'Directora General', '', '(01) 387-1122', '999 888 777', 'ctorres@torresinmobiliaria.pe', 'Av. Javier Prado Este 1589, San Borja, Lima', 'Oficina 505, Edificio Empresarial Lima, San Isidro', 'https://www.torresinmobiliaria.pe', 'Contado', '2020-03-22', 'Alquiler de oficinas, gestión de inmuebles', 'Registro SUNARP, Licencia Municipal vigente', 0, 'Bueno', 'Puntual en contratos, buena asesoría legal', 'A'),
(3, 'Grupo Alimentario El Buen Sabor S.A.', 'El Buen Sabor', 7, '20458965477', 3, 19, 'Julio César Medina Alarcón', 'Administrador', '', '(01) 445-2211', '990 112 233', 'ventas@elbuensabor.pe', 'Av. Benavides 3500, Miraflores, Lima', 'Taller Central – Surquillo, Lima', 'www.elbuensabor.pe', '50% adelanto – 50% contra entrega', '2024-07-17', 'Catering para eventos, coffee breaks, almuerzos corporativos', 'Manipulación de alimentos, BPM', 0, 'Bueno', 'Muy buena calidad de productos, alta satisfacción de clientes', 'A'),
(4, 'Weicraft Tech & Design E.I.R.L.', 'NiBel Sistemas Gestión & Consultoría', 1, '20607556084', 4, 15, 'Weimar Muro', 'Gerente General', '', '(01) 4515927', '941434183', 'hola@nibel.online', 'Ca. Rivadavia 172 Dpto. 802 Pueblo Libre', 'Ca. Rivadavia 172 Dpto. 802 Pueblo Libre', 'https://nibel.online', 'Crédito 30 días', '2025-09-01', 'Servicios de desarrollo de sistemas web, páginas web, apps, etc.', '', 0, 'Excelente', '', 'A'),
(5, 'APC Corporación S.A.', 'APC Corporación', 1, '2020202020202', 6, 19, 'Felipe Salaverry', 'Gerente General', 'Ricardo Palma', '(01) 456-7890', '956956956', 'rpalma@email.com', 'Sanchez Carrión 234 San Isidro', 'Grimanesa 123 Callao', 'https://apc.com.pe', 'Factura 30 días', '2018-02-06', 'Servicio de alimentación y catering', 'BPM, HACCP', 0, 'Excelente', '', 'A'),
(6, 'Del Ande S.A.C.', 'Del Ande', 1, '206050505050', 5, 19, 'Jose Antonio Lizarraga Gutherz', 'Gerente General', 'Alexis Villanueva', '4515252', '984545654', 'avillanueva@gmail.com', 'Av. La Marina 1225 San Miguel', 'Pasaje Villegas 988 Callao', 'https://delande.pe', 'Factura 30 días', '2024-06-11', 'Papas congeladas', 'BPM y Haccp', 1, 'Bueno', 'Sin Observaciones', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibo_operadores`
--

CREATE TABLE `recibo_operadores` (
  `id_rec_oper` int(11) NOT NULL,
  `id_ui` int(11) NOT NULL,
  `id_operador` int(2) NOT NULL,
  `id_mes` int(11) NOT NULL,
  `sistema` int(1) DEFAULT NULL,
  `titular` varchar(60) NOT NULL,
  `suministro` varchar(40) NOT NULL,
  `num_rec_oper` varchar(50) DEFAULT NULL,
  `tarifa` varchar(40) DEFAULT NULL,
  `categoria` varchar(40) DEFAULT NULL,
  `fecha_em_rec_oper` date DEFAULT NULL,
  `fecha_ven_rec_oper` date DEFAULT NULL,
  `fecha_sig_lec_rec_oper` date DEFAULT NULL,
  `lectura_anterior` varchar(30) DEFAULT NULL,
  `fecha_lectura_ant` date DEFAULT NULL,
  `lectura_actual` varchar(30) DEFAULT NULL,
  `fecha_lectura_actual` date DEFAULT NULL,
  `consumo` varchar(30) DEFAULT NULL,
  `imp_pagar` decimal(10,2) DEFAULT NULL,
  `archivo_rec` varchar(60) NOT NULL,
  `id_estado_rec` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regimen_empresa`
--

CREATE TABLE `regimen_empresa` (
  `id_regimen` int(1) NOT NULL,
  `regimen` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `regimen_empresa`
--

INSERT INTO `regimen_empresa` (`id_regimen`, `regimen`) VALUES
(1, 'Nuevo RUS'),
(2, 'Régimen Especial de Renta (RER)'),
(3, 'Régimen MYPE Tributario (RMT)'),
(4, 'Régimen General');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubro_prov`
--

CREATE TABLE `rubro_prov` (
  `id_rubro_prov` int(11) NOT NULL,
  `rubro_prov` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rubro_prov`
--

INSERT INTO `rubro_prov` (`id_rubro_prov`, `rubro_prov`) VALUES
(1, 'Limpieza y mantenimiento general'),
(2, 'Seguridad privada'),
(3, 'Jardinería y paisajismo'),
(4, 'Mantenimiento de ascensores'),
(5, 'Electricidad y electrónica'),
(6, 'Gasfitería'),
(7, 'Pintura y remodelaciones'),
(8, 'Administración y consultoría'),
(9, 'Sistemas de climatización (aires acondicionados, calefacción)'),
(10, 'Lavandería'),
(11, 'Control de plagas'),
(12, 'Portería y conserjería'),
(13, 'Reciclaje y manejo de residuos'),
(14, 'Suministro de mobiliario y equipamiento'),
(15, 'Tecnología y telecomunicaciones'),
(16, 'Decoración y diseño interior'),
(17, 'Servicios legales y contables'),
(18, 'Transporte y logística interna'),
(19, 'Alimentos y cafetería'),
(20, 'Extintores y sistemas contra incendios'),
(21, 'Porteros eléctricos y videoporteros'),
(22, 'Detectores de humo y alarmas'),
(23, 'Puertas levadizas y cocheras automáticas'),
(24, 'Cercos eléctricos'),
(25, 'Instalación y mantenimiento de cámaras de seguridad'),
(26, 'Porteros virtuales y control de accesos inteligentes'),
(27, 'Limpieza y mantenimiento de tanques de agua');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones`
--

CREATE TABLE `sesiones` (
  `id_sesion` int(11) NOT NULL,
  `identificador` int(5) NOT NULL,
  `id_user` int(11) NOT NULL,
  `estado_sesion` int(1) NOT NULL,
  `sesion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sesiones`
--

INSERT INTO `sesiones` (`id_sesion`, `identificador`, `id_user`, `estado_sesion`, `sesion`) VALUES
(1, 1, 1, 1, 'Visualizar administradores'),
(2, 2, 1, 1, 'Crear, editar o eliminar administradores'),
(3, 3, 1, 1, 'Visualizar unidades inmobiliarias'),
(4, 4, 1, 1, 'Crear, editar o eliminar unidades inmobiliarias'),
(5, 5, 1, 1, 'Otorgar permisos a administradores'),
(6, 6, 1, 1, 'Actualizar contraseñas'),
(7, 7, 1, 1, 'Visualizar cargos y personal'),
(8, 8, 1, 1, 'Crear, editar o eliminar personal'),
(9, 9, 1, 1, 'Visualizar proveedores'),
(10, 10, 1, 1, 'Crear, editar o eliminar proveedores'),
(11, 11, 1, 1, 'Crear, editar o eliminar cuentas bancarias'),
(12, 12, 1, 1, 'Crear, editar o eliminar historial de facturas y pagos'),
(13, 13, 1, 1, 'Crear, editar o eliminar pagos'),
(14, 14, 1, 1, 'Crear, editar o eliminar incidencias'),
(15, 15, 1, 1, 'Crear, editar o eliminar torres'),
(16, 16, 1, 1, 'Crear, editar o eliminar departamentos'),
(17, 17, 1, 1, 'Crear, editar o eliminar estacionamientos'),
(18, 18, 1, 1, 'Crear, editar o eliminar depósitos'),
(19, 19, 1, 1, 'Crear, editar o eliminar propietarios/rendatarios'),
(20, 20, 1, 1, 'Crear, editar o eliminar cargos'),
(21, 21, 1, 1, 'Visualizar configuración'),
(22, 22, 1, 1, 'Modificar configuración'),
(23, 23, 1, 1, 'Crear, editar o eliminar personal en la UI'),
(24, 24, 1, 1, 'Crear, editar o eliminar visitas'),
(25, 25, 1, 1, 'Visualizar servicios'),
(26, 26, 1, 1, 'Crear, editar o eliminar recibo de servicios'),
(27, 27, 1, 1, 'Pagar recibo de servicios'),
(28, 1, 2, 1, 'Visualizar administradores'),
(29, 2, 2, 1, 'Crear, editar o eliminar administradores'),
(30, 3, 2, 1, 'Visualizar unidades inmobiliarias'),
(31, 4, 2, 1, 'Crear, editar o eliminar unidades inmobiliarias'),
(32, 5, 2, 1, 'Otorgar permisos a administradores'),
(33, 6, 2, 1, 'Actualizar contraseñas'),
(34, 7, 2, 1, 'Visualizar cargos personal'),
(35, 8, 2, 1, 'Crear, editar o eliminar personal'),
(36, 9, 2, 1, 'Visualizar proveedores'),
(37, 10, 2, 1, 'Crear, editar o eliminar proveedores'),
(38, 11, 2, 1, 'Crear, editar o eliminar cuentas bancarias'),
(39, 12, 2, 1, 'Crear, editar o eliminar historial de facturas y pagos'),
(40, 13, 2, 1, 'Crear, editar o eliminar pagos'),
(41, 14, 2, 1, 'Crear, editar o eliminar incidencias'),
(42, 15, 2, 1, 'Crear, editar o eliminar torres'),
(43, 16, 2, 1, 'Crear, editar o eliminar departamentos'),
(44, 17, 2, 1, 'Crear, editar o eliminar estacionamientos'),
(45, 18, 2, 1, 'Crear, editar o eliminar depósitos'),
(46, 19, 2, 1, 'Crear, editar o eliminar propietarios/rendatarios'),
(47, 20, 2, 1, 'Crear, editar o eliminar cargos'),
(48, 21, 2, 1, 'Visualizar configuración'),
(49, 22, 2, 1, 'Modificar configuración'),
(50, 23, 2, 1, 'Crear, editar o eliminar personal en la UI'),
(51, 24, 2, 1, 'Crear, editar o eliminar visitas'),
(52, 25, 2, 1, 'Visualizar servicios'),
(53, 26, 2, 1, 'Crear, editar o eliminar recibo de servicios'),
(54, 27, 2, 1, 'Pagar recibo de servicios'),
(55, 1, 3, 1, 'Visualizar administradores'),
(56, 2, 3, 1, 'Crear, editar o eliminar administradores'),
(57, 3, 3, 1, 'Visualizar unidades inmobiliarias'),
(58, 4, 3, 1, 'Crear, editar o eliminar unidades inmobiliarias'),
(59, 5, 3, 1, 'Otorgar permisos a administradores'),
(60, 6, 3, 1, 'Actualizar contraseñas'),
(61, 7, 3, 1, 'Visualizar cargos y personal'),
(62, 8, 3, 1, 'Crear, editar o eliminar personal'),
(63, 9, 3, 1, 'Visualizar proveedores'),
(64, 10, 3, 1, 'Crear, editar o eliminar proveedores'),
(65, 11, 3, 1, 'Crear, editar o eliminar cuentas bancarias'),
(66, 12, 3, 1, 'Crear, editar o eliminar historial de facturas y pagos'),
(67, 13, 3, 1, 'Crear, editar o eliminar pagos'),
(68, 14, 3, 1, 'Crear, editar o eliminar incidencias'),
(69, 15, 3, 1, 'Crear, editar o eliminar torres'),
(70, 16, 3, 1, 'Crear, editar o eliminar departamentos'),
(71, 17, 3, 1, 'Crear, editar o eliminar estacionamientos'),
(72, 18, 3, 1, 'Crear, editar o eliminar depósitos'),
(73, 19, 3, 1, 'Crear, editar o eliminar propietarios/rendatarios'),
(74, 20, 3, 1, 'Crear, editar o eliminar cargos'),
(75, 21, 3, 1, 'Visualizar configuración'),
(76, 22, 3, 1, 'Modificar configuración'),
(77, 23, 3, 1, 'Crear, editar o eliminar personal en la UI'),
(78, 24, 3, 1, 'Crear, editar o eliminar visitas'),
(79, 25, 3, 1, 'Visualizar servicios'),
(80, 26, 3, 1, 'Crear, editar o eliminar recibo de servicios'),
(81, 27, 3, 1, 'Pagar recibo de servicios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sujetos`
--

CREATE TABLE `sujetos` (
  `id_sujeto` int(11) NOT NULL,
  `id_ui` int(11) NOT NULL,
  `tipo_persona` int(1) NOT NULL,
  `nom_sujeto` varchar(50) NOT NULL,
  `apellidos_sujeto` varchar(60) NOT NULL,
  `id_doc` int(11) NOT NULL,
  `num_doi_sujeto` varchar(20) NOT NULL,
  `email_sujeto` varchar(50) NOT NULL,
  `telef_sujeto` varchar(20) NOT NULL,
  `direccion_sujeto` varchar(200) NOT NULL,
  `tipo_sujeto` int(1) NOT NULL,
  `estado_sujeto` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sujetos`
--

INSERT INTO `sujetos` (`id_sujeto`, `id_ui`, `tipo_persona`, `nom_sujeto`, `apellidos_sujeto`, `id_doc`, `num_doi_sujeto`, `email_sujeto`, `telef_sujeto`, `direccion_sujeto`, `tipo_sujeto`, `estado_sujeto`) VALUES
(1, 4, 1, 'Weimar', 'Muro Almeida', 2, '25831632', 'wmuroa@gmail.com', '941434183', 'Ca. Edmundo Zapatel 188 Urb. San Joaquín Bellavista', 1, 'A'),
(2, 4, 1, 'Jhon', 'Castillo Medrano', 2, '20202020', 'jhonm@ercasac.com.pe', '954954954', 'Rivadavia 172 Dpto. 803 Pueblo Libre', 1, 'A'),
(3, 4, 1, 'Andrea', 'Dominguez Rodriguez', 2, '15151515', 'adominguez@email.com', '654654654', 'Av. La Marina 1233 San Miguel', 2, 'A'),
(4, 4, 1, 'Carlos', 'Lopez Ramirez', 2, '25252525', 'clopez@email.email', '941941941', '', 1, 'A'),
(5, 4, 1, 'Marlon', 'Rodriguez Peña', 2, '25252525', 'mrodriguez@email.com', '946946946', 'No aplica', 1, 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_ui`
--

CREATE TABLE `tipos_ui` (
  `id_tipo_ui` int(2) NOT NULL,
  `tipo_ui` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_ui`
--

INSERT INTO `tipos_ui` (`id_tipo_ui`, `tipo_ui`) VALUES
(1, 'Edificio multifamiliar / de departamentos'),
(2, 'Condominio de casas'),
(3, 'Residencial cerrada'),
(4, 'Vivienda unifamiliar independiente'),
(5, 'Conjunto habitacional social'),
(6, 'Centro comercial / mall'),
(7, 'Galería comercial'),
(8, 'Locales independientes'),
(9, 'Mercados'),
(10, 'Edificio de oficinas corporativas'),
(11, 'Business Center'),
(12, 'Coworking / espacios compartidos'),
(13, 'Naves industriales'),
(14, 'Plantas de producción'),
(15, 'Parques industriales'),
(16, 'Almacenes / depósitos logísticos'),
(17, 'Centros logísticos / hubs de distribución'),
(18, 'Almacenes aduaneros'),
(19, 'Depósitos simples'),
(20, 'Hoteles'),
(21, 'Hostales'),
(22, 'Apart-hoteles'),
(23, 'Airbnb / alquileres temporales'),
(24, 'Colegios / centros educativos'),
(25, 'Universidades / institutos'),
(26, 'Academias privadas'),
(27, 'Clínicas'),
(28, 'Centros médicos'),
(29, 'Postas de salud'),
(30, 'Consultorios / policlínicos'),
(31, 'Edificios mixtos'),
(32, 'Condominios con áreas de negocio internas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_contrataciones`
--

CREATE TABLE `tipo_contrataciones` (
  `id_tipo_contratat` int(2) NOT NULL,
  `tipo_contratat` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_contrataciones`
--

INSERT INTO `tipo_contrataciones` (`id_tipo_contratat`, `tipo_contratat`) VALUES
(1, 'Contrato Indefinido'),
(2, 'Contrato a plazo fijo'),
(3, 'Contrato por inicio o incremento de actividad'),
(4, 'Contrato por necesidad de mercado'),
(5, 'Contrato de suplencia'),
(6, 'Contrato intermitente'),
(7, 'Contrato de temporada'),
(8, 'Contrato a tiempo parcial'),
(9, 'Convenio prácticas pre-profesionales'),
(10, 'Convenio prácticas profesionales'),
(11, 'Contrato de pasantía'),
(12, 'Contrato locación de servicios'),
(13, 'Tercerización de servicios'),
(14, 'Intermediación laboral'),
(15, 'Contratación de cooperativa de trabajadores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cta_bancos`
--

CREATE TABLE `tipo_cta_bancos` (
  `id_tipo_cta` int(1) NOT NULL,
  `tipo_cta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_cta_bancos`
--

INSERT INTO `tipo_cta_bancos` (`id_tipo_cta`, `tipo_cta`) VALUES
(1, 'Cuenta de Ahorros'),
(2, 'Cuenta Corriente'),
(3, 'Cuenta Empresarial'),
(4, 'Cuenta CTS'),
(5, 'Cuenta a Plazo Fijo'),
(6, 'Cuenta Sueldo'),
(7, 'Cuenta Conjunta'),
(8, 'Otro tipo de cuenta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_dep_unid`
--

CREATE TABLE `tipo_dep_unid` (
  `id_tipo_dep` int(11) NOT NULL,
  `tipo_dep` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_dep_unid`
--

INSERT INTO `tipo_dep_unid` (`id_tipo_dep`, `tipo_dep`) VALUES
(1, 'Dpto. Flat'),
(2, 'Dpto. Duplex'),
(3, 'Dpto. Triplex'),
(4, 'Dpto. Penthouose'),
(5, 'Casa'),
(6, 'Oficina'),
(7, 'Consultorio'),
(8, 'Tienda'),
(9, 'Puesto'),
(10, 'Local'),
(11, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_estacionamiento`
--

CREATE TABLE `tipo_estacionamiento` (
  `id_tipo_est` int(1) NOT NULL,
  `tipo_est` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_estacionamiento`
--

INSERT INTO `tipo_estacionamiento` (`id_tipo_est`, `tipo_est`) VALUES
(1, 'Auto-Simple'),
(2, 'Auto-Doble'),
(3, 'Moto'),
(4, 'Bicicleta'),
(5, 'Visitas'),
(6, 'Discapacitados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_operador`
--

CREATE TABLE `tipo_operador` (
  `id_tipo_operador` int(2) NOT NULL,
  `tipo_operador` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_operador`
--

INSERT INTO `tipo_operador` (`id_tipo_operador`, `tipo_operador`) VALUES
(1, 'Agua'),
(2, 'Electricidad'),
(3, 'Gas'),
(4, 'Telefonía Movil'),
(5, 'Internet/Cable/Telefonía Fija');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_proveedor`
--

CREATE TABLE `tipo_proveedor` (
  `id_tipo_prov` int(11) NOT NULL,
  `tipo_prov` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_proveedor`
--

INSERT INTO `tipo_proveedor` (`id_tipo_prov`, `tipo_prov`) VALUES
(1, 'Persona Natural sin negocio'),
(2, 'Persona natural con negocio'),
(3, 'Microempresa'),
(4, 'Pequeña empresa'),
(5, 'Mediana Empresa'),
(6, 'Gran empresa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_visitas_ui`
--

CREATE TABLE `tipo_visitas_ui` (
  `id_tipo_visita` int(1) NOT NULL,
  `tipo_visita` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_visitas_ui`
--

INSERT INTO `tipo_visitas_ui` (`id_tipo_visita`, `tipo_visita`) VALUES
(1, 'Mantenimiento Preventivo'),
(2, 'Mantenimiento Correctivo'),
(3, 'Inspección'),
(4, 'Mediciones'),
(5, 'Otras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torres`
--

CREATE TABLE `torres` (
  `id_torre` int(11) NOT NULL,
  `id_ui` int(11) NOT NULL,
  `nom_torre` varchar(60) NOT NULL,
  `junta_prop_torre` int(1) DEFAULT NULL,
  `pres_junt_torre` varchar(70) DEFAULT NULL,
  `direccion_torre` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `torres`
--

INSERT INTO `torres` (`id_torre`, `id_ui`, `nom_torre`, `junta_prop_torre`, `pres_junt_torre`, `direccion_torre`) VALUES
(1, 4, 'Torre Central', 0, '', ''),
(2, 4, 'Torre Norte', 0, '', ''),
(3, 4, 'Torre Sur', 0, '', ''),
(4, 4, 'Torre Oeste', 0, '', ''),
(5, 4, 'Torre Este', 0, '', ''),
(6, 7, 'Torre Los Álamos', 0, '', ''),
(7, 8, 'Torre UI de prueba', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubigeo_peru_districts`
--

CREATE TABLE `ubigeo_peru_districts` (
  `id_distrito` varchar(6) NOT NULL,
  `nom_distrito` varchar(45) DEFAULT NULL,
  `id_provincia` varchar(4) DEFAULT NULL,
  `id_departamento` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `ubigeo_peru_districts`
--

INSERT INTO `ubigeo_peru_districts` (`id_distrito`, `nom_distrito`, `id_provincia`, `id_departamento`) VALUES
('010101', 'Chachapoyas', '0101', '01'),
('010102', 'Asunción', '0101', '01'),
('010103', 'Balsas', '0101', '01'),
('010104', 'Cheto', '0101', '01'),
('010105', 'Chiliquin', '0101', '01'),
('010106', 'Chuquibamba', '0101', '01'),
('010107', 'Granada', '0101', '01'),
('010108', 'Huancas', '0101', '01'),
('010109', 'La Jalca', '0101', '01'),
('010110', 'Leimebamba', '0101', '01'),
('010111', 'Levanto', '0101', '01'),
('010112', 'Magdalena', '0101', '01'),
('010113', 'Mariscal Castilla', '0101', '01'),
('010114', 'Molinopampa', '0101', '01'),
('010115', 'Montevideo', '0101', '01'),
('010116', 'Olleros', '0101', '01'),
('010117', 'Quinjalca', '0101', '01'),
('010118', 'San Francisco de Daguas', '0101', '01'),
('010119', 'San Isidro de Maino', '0101', '01'),
('010120', 'Soloco', '0101', '01'),
('010121', 'Sonche', '0101', '01'),
('010201', 'Bagua', '0102', '01'),
('010202', 'Aramango', '0102', '01'),
('010203', 'Copallin', '0102', '01'),
('010204', 'El Parco', '0102', '01'),
('010205', 'Imaza', '0102', '01'),
('010206', 'La Peca', '0102', '01'),
('010301', 'Jumbilla', '0103', '01'),
('010302', 'Chisquilla', '0103', '01'),
('010303', 'Churuja', '0103', '01'),
('010304', 'Corosha', '0103', '01'),
('010305', 'Cuispes', '0103', '01'),
('010306', 'Florida', '0103', '01'),
('010307', 'Jazan', '0103', '01'),
('010308', 'Recta', '0103', '01'),
('010309', 'San Carlos', '0103', '01'),
('010310', 'Shipasbamba', '0103', '01'),
('010311', 'Valera', '0103', '01'),
('010312', 'Yambrasbamba', '0103', '01'),
('010401', 'Nieva', '0104', '01'),
('010402', 'El Cenepa', '0104', '01'),
('010403', 'Río Santiago', '0104', '01'),
('010501', 'Lamud', '0105', '01'),
('010502', 'Camporredondo', '0105', '01'),
('010503', 'Cocabamba', '0105', '01'),
('010504', 'Colcamar', '0105', '01'),
('010505', 'Conila', '0105', '01'),
('010506', 'Inguilpata', '0105', '01'),
('010507', 'Longuita', '0105', '01'),
('010508', 'Lonya Chico', '0105', '01'),
('010509', 'Luya', '0105', '01'),
('010510', 'Luya Viejo', '0105', '01'),
('010511', 'María', '0105', '01'),
('010512', 'Ocalli', '0105', '01'),
('010513', 'Ocumal', '0105', '01'),
('010514', 'Pisuquia', '0105', '01'),
('010515', 'Providencia', '0105', '01'),
('010516', 'San Cristóbal', '0105', '01'),
('010517', 'San Francisco de Yeso', '0105', '01'),
('010518', 'San Jerónimo', '0105', '01'),
('010519', 'San Juan de Lopecancha', '0105', '01'),
('010520', 'Santa Catalina', '0105', '01'),
('010521', 'Santo Tomas', '0105', '01'),
('010522', 'Tingo', '0105', '01'),
('010523', 'Trita', '0105', '01'),
('010601', 'San Nicolás', '0106', '01'),
('010602', 'Chirimoto', '0106', '01'),
('010603', 'Cochamal', '0106', '01'),
('010604', 'Huambo', '0106', '01'),
('010605', 'Limabamba', '0106', '01'),
('010606', 'Longar', '0106', '01'),
('010607', 'Mariscal Benavides', '0106', '01'),
('010608', 'Milpuc', '0106', '01'),
('010609', 'Omia', '0106', '01'),
('010610', 'Santa Rosa', '0106', '01'),
('010611', 'Totora', '0106', '01'),
('010612', 'Vista Alegre', '0106', '01'),
('010701', 'Bagua Grande', '0107', '01'),
('010702', 'Cajaruro', '0107', '01'),
('010703', 'Cumba', '0107', '01'),
('010704', 'El Milagro', '0107', '01'),
('010705', 'Jamalca', '0107', '01'),
('010706', 'Lonya Grande', '0107', '01'),
('010707', 'Yamon', '0107', '01'),
('020101', 'Huaraz', '0201', '02'),
('020102', 'Cochabamba', '0201', '02'),
('020103', 'Colcabamba', '0201', '02'),
('020104', 'Huanchay', '0201', '02'),
('020105', 'Independencia', '0201', '02'),
('020106', 'Jangas', '0201', '02'),
('020107', 'La Libertad', '0201', '02'),
('020108', 'Olleros', '0201', '02'),
('020109', 'Pampas Grande', '0201', '02'),
('020110', 'Pariacoto', '0201', '02'),
('020111', 'Pira', '0201', '02'),
('020112', 'Tarica', '0201', '02'),
('020201', 'Aija', '0202', '02'),
('020202', 'Coris', '0202', '02'),
('020203', 'Huacllan', '0202', '02'),
('020204', 'La Merced', '0202', '02'),
('020205', 'Succha', '0202', '02'),
('020301', 'Llamellin', '0203', '02'),
('020302', 'Aczo', '0203', '02'),
('020303', 'Chaccho', '0203', '02'),
('020304', 'Chingas', '0203', '02'),
('020305', 'Mirgas', '0203', '02'),
('020306', 'San Juan de Rontoy', '0203', '02'),
('020401', 'Chacas', '0204', '02'),
('020402', 'Acochaca', '0204', '02'),
('020501', 'Chiquian', '0205', '02'),
('020502', 'Abelardo Pardo Lezameta', '0205', '02'),
('020503', 'Antonio Raymondi', '0205', '02'),
('020504', 'Aquia', '0205', '02'),
('020505', 'Cajacay', '0205', '02'),
('020506', 'Canis', '0205', '02'),
('020507', 'Colquioc', '0205', '02'),
('020508', 'Huallanca', '0205', '02'),
('020509', 'Huasta', '0205', '02'),
('020510', 'Huayllacayan', '0205', '02'),
('020511', 'La Primavera', '0205', '02'),
('020512', 'Mangas', '0205', '02'),
('020513', 'Pacllon', '0205', '02'),
('020514', 'San Miguel de Corpanqui', '0205', '02'),
('020515', 'Ticllos', '0205', '02'),
('020601', 'Carhuaz', '0206', '02'),
('020602', 'Acopampa', '0206', '02'),
('020603', 'Amashca', '0206', '02'),
('020604', 'Anta', '0206', '02'),
('020605', 'Ataquero', '0206', '02'),
('020606', 'Marcara', '0206', '02'),
('020607', 'Pariahuanca', '0206', '02'),
('020608', 'San Miguel de Aco', '0206', '02'),
('020609', 'Shilla', '0206', '02'),
('020610', 'Tinco', '0206', '02'),
('020611', 'Yungar', '0206', '02'),
('020701', 'San Luis', '0207', '02'),
('020702', 'San Nicolás', '0207', '02'),
('020703', 'Yauya', '0207', '02'),
('020801', 'Casma', '0208', '02'),
('020802', 'Buena Vista Alta', '0208', '02'),
('020803', 'Comandante Noel', '0208', '02'),
('020804', 'Yautan', '0208', '02'),
('020901', 'Corongo', '0209', '02'),
('020902', 'Aco', '0209', '02'),
('020903', 'Bambas', '0209', '02'),
('020904', 'Cusca', '0209', '02'),
('020905', 'La Pampa', '0209', '02'),
('020906', 'Yanac', '0209', '02'),
('020907', 'Yupan', '0209', '02'),
('021001', 'Huari', '0210', '02'),
('021002', 'Anra', '0210', '02'),
('021003', 'Cajay', '0210', '02'),
('021004', 'Chavin de Huantar', '0210', '02'),
('021005', 'Huacachi', '0210', '02'),
('021006', 'Huacchis', '0210', '02'),
('021007', 'Huachis', '0210', '02'),
('021008', 'Huantar', '0210', '02'),
('021009', 'Masin', '0210', '02'),
('021010', 'Paucas', '0210', '02'),
('021011', 'Ponto', '0210', '02'),
('021012', 'Rahuapampa', '0210', '02'),
('021013', 'Rapayan', '0210', '02'),
('021014', 'San Marcos', '0210', '02'),
('021015', 'San Pedro de Chana', '0210', '02'),
('021016', 'Uco', '0210', '02'),
('021101', 'Huarmey', '0211', '02'),
('021102', 'Cochapeti', '0211', '02'),
('021103', 'Culebras', '0211', '02'),
('021104', 'Huayan', '0211', '02'),
('021105', 'Malvas', '0211', '02'),
('021201', 'Caraz', '0212', '02'),
('021202', 'Huallanca', '0212', '02'),
('021203', 'Huata', '0212', '02'),
('021204', 'Huaylas', '0212', '02'),
('021205', 'Mato', '0212', '02'),
('021206', 'Pamparomas', '0212', '02'),
('021207', 'Pueblo Libre', '0212', '02'),
('021208', 'Santa Cruz', '0212', '02'),
('021209', 'Santo Toribio', '0212', '02'),
('021210', 'Yuracmarca', '0212', '02'),
('021301', 'Piscobamba', '0213', '02'),
('021302', 'Casca', '0213', '02'),
('021303', 'Eleazar Guzmán Barron', '0213', '02'),
('021304', 'Fidel Olivas Escudero', '0213', '02'),
('021305', 'Llama', '0213', '02'),
('021306', 'Llumpa', '0213', '02'),
('021307', 'Lucma', '0213', '02'),
('021308', 'Musga', '0213', '02'),
('021401', 'Ocros', '0214', '02'),
('021402', 'Acas', '0214', '02'),
('021403', 'Cajamarquilla', '0214', '02'),
('021404', 'Carhuapampa', '0214', '02'),
('021405', 'Cochas', '0214', '02'),
('021406', 'Congas', '0214', '02'),
('021407', 'Llipa', '0214', '02'),
('021408', 'San Cristóbal de Rajan', '0214', '02'),
('021409', 'San Pedro', '0214', '02'),
('021410', 'Santiago de Chilcas', '0214', '02'),
('021501', 'Cabana', '0215', '02'),
('021502', 'Bolognesi', '0215', '02'),
('021503', 'Conchucos', '0215', '02'),
('021504', 'Huacaschuque', '0215', '02'),
('021505', 'Huandoval', '0215', '02'),
('021506', 'Lacabamba', '0215', '02'),
('021507', 'Llapo', '0215', '02'),
('021508', 'Pallasca', '0215', '02'),
('021509', 'Pampas', '0215', '02'),
('021510', 'Santa Rosa', '0215', '02'),
('021511', 'Tauca', '0215', '02'),
('021601', 'Pomabamba', '0216', '02'),
('021602', 'Huayllan', '0216', '02'),
('021603', 'Parobamba', '0216', '02'),
('021604', 'Quinuabamba', '0216', '02'),
('021701', 'Recuay', '0217', '02'),
('021702', 'Catac', '0217', '02'),
('021703', 'Cotaparaco', '0217', '02'),
('021704', 'Huayllapampa', '0217', '02'),
('021705', 'Llacllin', '0217', '02'),
('021706', 'Marca', '0217', '02'),
('021707', 'Pampas Chico', '0217', '02'),
('021708', 'Pararin', '0217', '02'),
('021709', 'Tapacocha', '0217', '02'),
('021710', 'Ticapampa', '0217', '02'),
('021801', 'Chimbote', '0218', '02'),
('021802', 'Cáceres del Perú', '0218', '02'),
('021803', 'Coishco', '0218', '02'),
('021804', 'Macate', '0218', '02'),
('021805', 'Moro', '0218', '02'),
('021806', 'Nepeña', '0218', '02'),
('021807', 'Samanco', '0218', '02'),
('021808', 'Santa', '0218', '02'),
('021809', 'Nuevo Chimbote', '0218', '02'),
('021901', 'Sihuas', '0219', '02'),
('021902', 'Acobamba', '0219', '02'),
('021903', 'Alfonso Ugarte', '0219', '02'),
('021904', 'Cashapampa', '0219', '02'),
('021905', 'Chingalpo', '0219', '02'),
('021906', 'Huayllabamba', '0219', '02'),
('021907', 'Quiches', '0219', '02'),
('021908', 'Ragash', '0219', '02'),
('021909', 'San Juan', '0219', '02'),
('021910', 'Sicsibamba', '0219', '02'),
('022001', 'Yungay', '0220', '02'),
('022002', 'Cascapara', '0220', '02'),
('022003', 'Mancos', '0220', '02'),
('022004', 'Matacoto', '0220', '02'),
('022005', 'Quillo', '0220', '02'),
('022006', 'Ranrahirca', '0220', '02'),
('022007', 'Shupluy', '0220', '02'),
('022008', 'Yanama', '0220', '02'),
('030101', 'Abancay', '0301', '03'),
('030102', 'Chacoche', '0301', '03'),
('030103', 'Circa', '0301', '03'),
('030104', 'Curahuasi', '0301', '03'),
('030105', 'Huanipaca', '0301', '03'),
('030106', 'Lambrama', '0301', '03'),
('030107', 'Pichirhua', '0301', '03'),
('030108', 'San Pedro de Cachora', '0301', '03'),
('030109', 'Tamburco', '0301', '03'),
('030201', 'Andahuaylas', '0302', '03'),
('030202', 'Andarapa', '0302', '03'),
('030203', 'Chiara', '0302', '03'),
('030204', 'Huancarama', '0302', '03'),
('030205', 'Huancaray', '0302', '03'),
('030206', 'Huayana', '0302', '03'),
('030207', 'Kishuara', '0302', '03'),
('030208', 'Pacobamba', '0302', '03'),
('030209', 'Pacucha', '0302', '03'),
('030210', 'Pampachiri', '0302', '03'),
('030211', 'Pomacocha', '0302', '03'),
('030212', 'San Antonio de Cachi', '0302', '03'),
('030213', 'San Jerónimo', '0302', '03'),
('030214', 'San Miguel de Chaccrampa', '0302', '03'),
('030215', 'Santa María de Chicmo', '0302', '03'),
('030216', 'Talavera', '0302', '03'),
('030217', 'Tumay Huaraca', '0302', '03'),
('030218', 'Turpo', '0302', '03'),
('030219', 'Kaquiabamba', '0302', '03'),
('030220', 'José María Arguedas', '0302', '03'),
('030301', 'Antabamba', '0303', '03'),
('030302', 'El Oro', '0303', '03'),
('030303', 'Huaquirca', '0303', '03'),
('030304', 'Juan Espinoza Medrano', '0303', '03'),
('030305', 'Oropesa', '0303', '03'),
('030306', 'Pachaconas', '0303', '03'),
('030307', 'Sabaino', '0303', '03'),
('030401', 'Chalhuanca', '0304', '03'),
('030402', 'Capaya', '0304', '03'),
('030403', 'Caraybamba', '0304', '03'),
('030404', 'Chapimarca', '0304', '03'),
('030405', 'Colcabamba', '0304', '03'),
('030406', 'Cotaruse', '0304', '03'),
('030407', 'Ihuayllo', '0304', '03'),
('030408', 'Justo Apu Sahuaraura', '0304', '03'),
('030409', 'Lucre', '0304', '03'),
('030410', 'Pocohuanca', '0304', '03'),
('030411', 'San Juan de Chacña', '0304', '03'),
('030412', 'Sañayca', '0304', '03'),
('030413', 'Soraya', '0304', '03'),
('030414', 'Tapairihua', '0304', '03'),
('030415', 'Tintay', '0304', '03'),
('030416', 'Toraya', '0304', '03'),
('030417', 'Yanaca', '0304', '03'),
('030501', 'Tambobamba', '0305', '03'),
('030502', 'Cotabambas', '0305', '03'),
('030503', 'Coyllurqui', '0305', '03'),
('030504', 'Haquira', '0305', '03'),
('030505', 'Mara', '0305', '03'),
('030506', 'Challhuahuacho', '0305', '03'),
('030601', 'Chincheros', '0306', '03'),
('030602', 'Anco_Huallo', '0306', '03'),
('030603', 'Cocharcas', '0306', '03'),
('030604', 'Huaccana', '0306', '03'),
('030605', 'Ocobamba', '0306', '03'),
('030606', 'Ongoy', '0306', '03'),
('030607', 'Uranmarca', '0306', '03'),
('030608', 'Ranracancha', '0306', '03'),
('030609', 'Rocchacc', '0306', '03'),
('030610', 'El Porvenir', '0306', '03'),
('030611', 'Los Chankas', '0306', '03'),
('030701', 'Chuquibambilla', '0307', '03'),
('030702', 'Curpahuasi', '0307', '03'),
('030703', 'Gamarra', '0307', '03'),
('030704', 'Huayllati', '0307', '03'),
('030705', 'Mamara', '0307', '03'),
('030706', 'Micaela Bastidas', '0307', '03'),
('030707', 'Pataypampa', '0307', '03'),
('030708', 'Progreso', '0307', '03'),
('030709', 'San Antonio', '0307', '03'),
('030710', 'Santa Rosa', '0307', '03'),
('030711', 'Turpay', '0307', '03'),
('030712', 'Vilcabamba', '0307', '03'),
('030713', 'Virundo', '0307', '03'),
('030714', 'Curasco', '0307', '03'),
('040101', 'Arequipa', '0401', '04'),
('040102', 'Alto Selva Alegre', '0401', '04'),
('040103', 'Cayma', '0401', '04'),
('040104', 'Cerro Colorado', '0401', '04'),
('040105', 'Characato', '0401', '04'),
('040106', 'Chiguata', '0401', '04'),
('040107', 'Jacobo Hunter', '0401', '04'),
('040108', 'La Joya', '0401', '04'),
('040109', 'Mariano Melgar', '0401', '04'),
('040110', 'Miraflores', '0401', '04'),
('040111', 'Mollebaya', '0401', '04'),
('040112', 'Paucarpata', '0401', '04'),
('040113', 'Pocsi', '0401', '04'),
('040114', 'Polobaya', '0401', '04'),
('040115', 'Quequeña', '0401', '04'),
('040116', 'Sabandia', '0401', '04'),
('040117', 'Sachaca', '0401', '04'),
('040118', 'San Juan de Siguas', '0401', '04'),
('040119', 'San Juan de Tarucani', '0401', '04'),
('040120', 'Santa Isabel de Siguas', '0401', '04'),
('040121', 'Santa Rita de Siguas', '0401', '04'),
('040122', 'Socabaya', '0401', '04'),
('040123', 'Tiabaya', '0401', '04'),
('040124', 'Uchumayo', '0401', '04'),
('040125', 'Vitor', '0401', '04'),
('040126', 'Yanahuara', '0401', '04'),
('040127', 'Yarabamba', '0401', '04'),
('040128', 'Yura', '0401', '04'),
('040129', 'José Luis Bustamante Y Rivero', '0401', '04'),
('040201', 'Camaná', '0402', '04'),
('040202', 'José María Quimper', '0402', '04'),
('040203', 'Mariano Nicolás Valcárcel', '0402', '04'),
('040204', 'Mariscal Cáceres', '0402', '04'),
('040205', 'Nicolás de Pierola', '0402', '04'),
('040206', 'Ocoña', '0402', '04'),
('040207', 'Quilca', '0402', '04'),
('040208', 'Samuel Pastor', '0402', '04'),
('040301', 'Caravelí', '0403', '04'),
('040302', 'Acarí', '0403', '04'),
('040303', 'Atico', '0403', '04'),
('040304', 'Atiquipa', '0403', '04'),
('040305', 'Bella Unión', '0403', '04'),
('040306', 'Cahuacho', '0403', '04'),
('040307', 'Chala', '0403', '04'),
('040308', 'Chaparra', '0403', '04'),
('040309', 'Huanuhuanu', '0403', '04'),
('040310', 'Jaqui', '0403', '04'),
('040311', 'Lomas', '0403', '04'),
('040312', 'Quicacha', '0403', '04'),
('040313', 'Yauca', '0403', '04'),
('040401', 'Aplao', '0404', '04'),
('040402', 'Andagua', '0404', '04'),
('040403', 'Ayo', '0404', '04'),
('040404', 'Chachas', '0404', '04'),
('040405', 'Chilcaymarca', '0404', '04'),
('040406', 'Choco', '0404', '04'),
('040407', 'Huancarqui', '0404', '04'),
('040408', 'Machaguay', '0404', '04'),
('040409', 'Orcopampa', '0404', '04'),
('040410', 'Pampacolca', '0404', '04'),
('040411', 'Tipan', '0404', '04'),
('040412', 'Uñon', '0404', '04'),
('040413', 'Uraca', '0404', '04'),
('040414', 'Viraco', '0404', '04'),
('040501', 'Chivay', '0405', '04'),
('040502', 'Achoma', '0405', '04'),
('040503', 'Cabanaconde', '0405', '04'),
('040504', 'Callalli', '0405', '04'),
('040505', 'Caylloma', '0405', '04'),
('040506', 'Coporaque', '0405', '04'),
('040507', 'Huambo', '0405', '04'),
('040508', 'Huanca', '0405', '04'),
('040509', 'Ichupampa', '0405', '04'),
('040510', 'Lari', '0405', '04'),
('040511', 'Lluta', '0405', '04'),
('040512', 'Maca', '0405', '04'),
('040513', 'Madrigal', '0405', '04'),
('040514', 'San Antonio de Chuca', '0405', '04'),
('040515', 'Sibayo', '0405', '04'),
('040516', 'Tapay', '0405', '04'),
('040517', 'Tisco', '0405', '04'),
('040518', 'Tuti', '0405', '04'),
('040519', 'Yanque', '0405', '04'),
('040520', 'Majes', '0405', '04'),
('040601', 'Chuquibamba', '0406', '04'),
('040602', 'Andaray', '0406', '04'),
('040603', 'Cayarani', '0406', '04'),
('040604', 'Chichas', '0406', '04'),
('040605', 'Iray', '0406', '04'),
('040606', 'Río Grande', '0406', '04'),
('040607', 'Salamanca', '0406', '04'),
('040608', 'Yanaquihua', '0406', '04'),
('040701', 'Mollendo', '0407', '04'),
('040702', 'Cocachacra', '0407', '04'),
('040703', 'Dean Valdivia', '0407', '04'),
('040704', 'Islay', '0407', '04'),
('040705', 'Mejia', '0407', '04'),
('040706', 'Punta de Bombón', '0407', '04'),
('040801', 'Cotahuasi', '0408', '04'),
('040802', 'Alca', '0408', '04'),
('040803', 'Charcana', '0408', '04'),
('040804', 'Huaynacotas', '0408', '04'),
('040805', 'Pampamarca', '0408', '04'),
('040806', 'Puyca', '0408', '04'),
('040807', 'Quechualla', '0408', '04'),
('040808', 'Sayla', '0408', '04'),
('040809', 'Tauria', '0408', '04'),
('040810', 'Tomepampa', '0408', '04'),
('040811', 'Toro', '0408', '04'),
('050101', 'Ayacucho', '0501', '05'),
('050102', 'Acocro', '0501', '05'),
('050103', 'Acos Vinchos', '0501', '05'),
('050104', 'Carmen Alto', '0501', '05'),
('050105', 'Chiara', '0501', '05'),
('050106', 'Ocros', '0501', '05'),
('050107', 'Pacaycasa', '0501', '05'),
('050108', 'Quinua', '0501', '05'),
('050109', 'San José de Ticllas', '0501', '05'),
('050110', 'San Juan Bautista', '0501', '05'),
('050111', 'Santiago de Pischa', '0501', '05'),
('050112', 'Socos', '0501', '05'),
('050113', 'Tambillo', '0501', '05'),
('050114', 'Vinchos', '0501', '05'),
('050115', 'Jesús Nazareno', '0501', '05'),
('050116', 'Andrés Avelino Cáceres Dorregaray', '0501', '05'),
('050201', 'Cangallo', '0502', '05'),
('050202', 'Chuschi', '0502', '05'),
('050203', 'Los Morochucos', '0502', '05'),
('050204', 'María Parado de Bellido', '0502', '05'),
('050205', 'Paras', '0502', '05'),
('050206', 'Totos', '0502', '05'),
('050301', 'Sancos', '0503', '05'),
('050302', 'Carapo', '0503', '05'),
('050303', 'Sacsamarca', '0503', '05'),
('050304', 'Santiago de Lucanamarca', '0503', '05'),
('050401', 'Huanta', '0504', '05'),
('050402', 'Ayahuanco', '0504', '05'),
('050403', 'Huamanguilla', '0504', '05'),
('050404', 'Iguain', '0504', '05'),
('050405', 'Luricocha', '0504', '05'),
('050406', 'Santillana', '0504', '05'),
('050407', 'Sivia', '0504', '05'),
('050408', 'Llochegua', '0504', '05'),
('050409', 'Canayre', '0504', '05'),
('050410', 'Uchuraccay', '0504', '05'),
('050411', 'Pucacolpa', '0504', '05'),
('050412', 'Chaca', '0504', '05'),
('050501', 'San Miguel', '0505', '05'),
('050502', 'Anco', '0505', '05'),
('050503', 'Ayna', '0505', '05'),
('050504', 'Chilcas', '0505', '05'),
('050505', 'Chungui', '0505', '05'),
('050506', 'Luis Carranza', '0505', '05'),
('050507', 'Santa Rosa', '0505', '05'),
('050508', 'Tambo', '0505', '05'),
('050509', 'Samugari', '0505', '05'),
('050510', 'Anchihuay', '0505', '05'),
('050511', 'Oronccoy', '0505', '05'),
('050601', 'Puquio', '0506', '05'),
('050602', 'Aucara', '0506', '05'),
('050603', 'Cabana', '0506', '05'),
('050604', 'Carmen Salcedo', '0506', '05'),
('050605', 'Chaviña', '0506', '05'),
('050606', 'Chipao', '0506', '05'),
('050607', 'Huac-Huas', '0506', '05'),
('050608', 'Laramate', '0506', '05'),
('050609', 'Leoncio Prado', '0506', '05'),
('050610', 'Llauta', '0506', '05'),
('050611', 'Lucanas', '0506', '05'),
('050612', 'Ocaña', '0506', '05'),
('050613', 'Otoca', '0506', '05'),
('050614', 'Saisa', '0506', '05'),
('050615', 'San Cristóbal', '0506', '05'),
('050616', 'San Juan', '0506', '05'),
('050617', 'San Pedro', '0506', '05'),
('050618', 'San Pedro de Palco', '0506', '05'),
('050619', 'Sancos', '0506', '05'),
('050620', 'Santa Ana de Huaycahuacho', '0506', '05'),
('050621', 'Santa Lucia', '0506', '05'),
('050701', 'Coracora', '0507', '05'),
('050702', 'Chumpi', '0507', '05'),
('050703', 'Coronel Castañeda', '0507', '05'),
('050704', 'Pacapausa', '0507', '05'),
('050705', 'Pullo', '0507', '05'),
('050706', 'Puyusca', '0507', '05'),
('050707', 'San Francisco de Ravacayco', '0507', '05'),
('050708', 'Upahuacho', '0507', '05'),
('050801', 'Pausa', '0508', '05'),
('050802', 'Colta', '0508', '05'),
('050803', 'Corculla', '0508', '05'),
('050804', 'Lampa', '0508', '05'),
('050805', 'Marcabamba', '0508', '05'),
('050806', 'Oyolo', '0508', '05'),
('050807', 'Pararca', '0508', '05'),
('050808', 'San Javier de Alpabamba', '0508', '05'),
('050809', 'San José de Ushua', '0508', '05'),
('050810', 'Sara Sara', '0508', '05'),
('050901', 'Querobamba', '0509', '05'),
('050902', 'Belén', '0509', '05'),
('050903', 'Chalcos', '0509', '05'),
('050904', 'Chilcayoc', '0509', '05'),
('050905', 'Huacaña', '0509', '05'),
('050906', 'Morcolla', '0509', '05'),
('050907', 'Paico', '0509', '05'),
('050908', 'San Pedro de Larcay', '0509', '05'),
('050909', 'San Salvador de Quije', '0509', '05'),
('050910', 'Santiago de Paucaray', '0509', '05'),
('050911', 'Soras', '0509', '05'),
('051001', 'Huancapi', '0510', '05'),
('051002', 'Alcamenca', '0510', '05'),
('051003', 'Apongo', '0510', '05'),
('051004', 'Asquipata', '0510', '05'),
('051005', 'Canaria', '0510', '05'),
('051006', 'Cayara', '0510', '05'),
('051007', 'Colca', '0510', '05'),
('051008', 'Huamanquiquia', '0510', '05'),
('051009', 'Huancaraylla', '0510', '05'),
('051010', 'Hualla', '0510', '05'),
('051011', 'Sarhua', '0510', '05'),
('051012', 'Vilcanchos', '0510', '05'),
('051101', 'Vilcas Huaman', '0511', '05'),
('051102', 'Accomarca', '0511', '05'),
('051103', 'Carhuanca', '0511', '05'),
('051104', 'Concepción', '0511', '05'),
('051105', 'Huambalpa', '0511', '05'),
('051106', 'Independencia', '0511', '05'),
('051107', 'Saurama', '0511', '05'),
('051108', 'Vischongo', '0511', '05'),
('060101', 'Cajamarca', '0601', '06'),
('060102', 'Asunción', '0601', '06'),
('060103', 'Chetilla', '0601', '06'),
('060104', 'Cospan', '0601', '06'),
('060105', 'Encañada', '0601', '06'),
('060106', 'Jesús', '0601', '06'),
('060107', 'Llacanora', '0601', '06'),
('060108', 'Los Baños del Inca', '0601', '06'),
('060109', 'Magdalena', '0601', '06'),
('060110', 'Matara', '0601', '06'),
('060111', 'Namora', '0601', '06'),
('060112', 'San Juan', '0601', '06'),
('060201', 'Cajabamba', '0602', '06'),
('060202', 'Cachachi', '0602', '06'),
('060203', 'Condebamba', '0602', '06'),
('060204', 'Sitacocha', '0602', '06'),
('060301', 'Celendín', '0603', '06'),
('060302', 'Chumuch', '0603', '06'),
('060303', 'Cortegana', '0603', '06'),
('060304', 'Huasmin', '0603', '06'),
('060305', 'Jorge Chávez', '0603', '06'),
('060306', 'José Gálvez', '0603', '06'),
('060307', 'Miguel Iglesias', '0603', '06'),
('060308', 'Oxamarca', '0603', '06'),
('060309', 'Sorochuco', '0603', '06'),
('060310', 'Sucre', '0603', '06'),
('060311', 'Utco', '0603', '06'),
('060312', 'La Libertad de Pallan', '0603', '06'),
('060401', 'Chota', '0604', '06'),
('060402', 'Anguia', '0604', '06'),
('060403', 'Chadin', '0604', '06'),
('060404', 'Chiguirip', '0604', '06'),
('060405', 'Chimban', '0604', '06'),
('060406', 'Choropampa', '0604', '06'),
('060407', 'Cochabamba', '0604', '06'),
('060408', 'Conchan', '0604', '06'),
('060409', 'Huambos', '0604', '06'),
('060410', 'Lajas', '0604', '06'),
('060411', 'Llama', '0604', '06'),
('060412', 'Miracosta', '0604', '06'),
('060413', 'Paccha', '0604', '06'),
('060414', 'Pion', '0604', '06'),
('060415', 'Querocoto', '0604', '06'),
('060416', 'San Juan de Licupis', '0604', '06'),
('060417', 'Tacabamba', '0604', '06'),
('060418', 'Tocmoche', '0604', '06'),
('060419', 'Chalamarca', '0604', '06'),
('060501', 'Contumaza', '0605', '06'),
('060502', 'Chilete', '0605', '06'),
('060503', 'Cupisnique', '0605', '06'),
('060504', 'Guzmango', '0605', '06'),
('060505', 'San Benito', '0605', '06'),
('060506', 'Santa Cruz de Toledo', '0605', '06'),
('060507', 'Tantarica', '0605', '06'),
('060508', 'Yonan', '0605', '06'),
('060601', 'Cutervo', '0606', '06'),
('060602', 'Callayuc', '0606', '06'),
('060603', 'Choros', '0606', '06'),
('060604', 'Cujillo', '0606', '06'),
('060605', 'La Ramada', '0606', '06'),
('060606', 'Pimpingos', '0606', '06'),
('060607', 'Querocotillo', '0606', '06'),
('060608', 'San Andrés de Cutervo', '0606', '06'),
('060609', 'San Juan de Cutervo', '0606', '06'),
('060610', 'San Luis de Lucma', '0606', '06'),
('060611', 'Santa Cruz', '0606', '06'),
('060612', 'Santo Domingo de la Capilla', '0606', '06'),
('060613', 'Santo Tomas', '0606', '06'),
('060614', 'Socota', '0606', '06'),
('060615', 'Toribio Casanova', '0606', '06'),
('060701', 'Bambamarca', '0607', '06'),
('060702', 'Chugur', '0607', '06'),
('060703', 'Hualgayoc', '0607', '06'),
('060801', 'Jaén', '0608', '06'),
('060802', 'Bellavista', '0608', '06'),
('060803', 'Chontali', '0608', '06'),
('060804', 'Colasay', '0608', '06'),
('060805', 'Huabal', '0608', '06'),
('060806', 'Las Pirias', '0608', '06'),
('060807', 'Pomahuaca', '0608', '06'),
('060808', 'Pucara', '0608', '06'),
('060809', 'Sallique', '0608', '06'),
('060810', 'San Felipe', '0608', '06'),
('060811', 'San José del Alto', '0608', '06'),
('060812', 'Santa Rosa', '0608', '06'),
('060901', 'San Ignacio', '0609', '06'),
('060902', 'Chirinos', '0609', '06'),
('060903', 'Huarango', '0609', '06'),
('060904', 'La Coipa', '0609', '06'),
('060905', 'Namballe', '0609', '06'),
('060906', 'San José de Lourdes', '0609', '06'),
('060907', 'Tabaconas', '0609', '06'),
('061001', 'Pedro Gálvez', '0610', '06'),
('061002', 'Chancay', '0610', '06'),
('061003', 'Eduardo Villanueva', '0610', '06'),
('061004', 'Gregorio Pita', '0610', '06'),
('061005', 'Ichocan', '0610', '06'),
('061006', 'José Manuel Quiroz', '0610', '06'),
('061007', 'José Sabogal', '0610', '06'),
('061101', 'San Miguel', '0611', '06'),
('061102', 'Bolívar', '0611', '06'),
('061103', 'Calquis', '0611', '06'),
('061104', 'Catilluc', '0611', '06'),
('061105', 'El Prado', '0611', '06'),
('061106', 'La Florida', '0611', '06'),
('061107', 'Llapa', '0611', '06'),
('061108', 'Nanchoc', '0611', '06'),
('061109', 'Niepos', '0611', '06'),
('061110', 'San Gregorio', '0611', '06'),
('061111', 'San Silvestre de Cochan', '0611', '06'),
('061112', 'Tongod', '0611', '06'),
('061113', 'Unión Agua Blanca', '0611', '06'),
('061201', 'San Pablo', '0612', '06'),
('061202', 'San Bernardino', '0612', '06'),
('061203', 'San Luis', '0612', '06'),
('061204', 'Tumbaden', '0612', '06'),
('061301', 'Santa Cruz', '0613', '06'),
('061302', 'Andabamba', '0613', '06'),
('061303', 'Catache', '0613', '06'),
('061304', 'Chancaybaños', '0613', '06'),
('061305', 'La Esperanza', '0613', '06'),
('061306', 'Ninabamba', '0613', '06'),
('061307', 'Pulan', '0613', '06'),
('061308', 'Saucepampa', '0613', '06'),
('061309', 'Sexi', '0613', '06'),
('061310', 'Uticyacu', '0613', '06'),
('061311', 'Yauyucan', '0613', '06'),
('070101', 'Callao', '0701', '07'),
('070102', 'Bellavista', '0701', '07'),
('070103', 'Carmen de la Legua Reynoso', '0701', '07'),
('070104', 'La Perla', '0701', '07'),
('070105', 'La Punta', '0701', '07'),
('070106', 'Ventanilla', '0701', '07'),
('070107', 'Mi Perú', '0701', '07'),
('080101', 'Cusco', '0801', '08'),
('080102', 'Ccorca', '0801', '08'),
('080103', 'Poroy', '0801', '08'),
('080104', 'San Jerónimo', '0801', '08'),
('080105', 'San Sebastian', '0801', '08'),
('080106', 'Santiago', '0801', '08'),
('080107', 'Saylla', '0801', '08'),
('080108', 'Wanchaq', '0801', '08'),
('080201', 'Acomayo', '0802', '08'),
('080202', 'Acopia', '0802', '08'),
('080203', 'Acos', '0802', '08'),
('080204', 'Mosoc Llacta', '0802', '08'),
('080205', 'Pomacanchi', '0802', '08'),
('080206', 'Rondocan', '0802', '08'),
('080207', 'Sangarara', '0802', '08'),
('080301', 'Anta', '0803', '08'),
('080302', 'Ancahuasi', '0803', '08'),
('080303', 'Cachimayo', '0803', '08'),
('080304', 'Chinchaypujio', '0803', '08'),
('080305', 'Huarocondo', '0803', '08'),
('080306', 'Limatambo', '0803', '08'),
('080307', 'Mollepata', '0803', '08'),
('080308', 'Pucyura', '0803', '08'),
('080309', 'Zurite', '0803', '08'),
('080401', 'Calca', '0804', '08'),
('080402', 'Coya', '0804', '08'),
('080403', 'Lamay', '0804', '08'),
('080404', 'Lares', '0804', '08'),
('080405', 'Pisac', '0804', '08'),
('080406', 'San Salvador', '0804', '08'),
('080407', 'Taray', '0804', '08'),
('080408', 'Yanatile', '0804', '08'),
('080501', 'Yanaoca', '0805', '08'),
('080502', 'Checca', '0805', '08'),
('080503', 'Kunturkanki', '0805', '08'),
('080504', 'Langui', '0805', '08'),
('080505', 'Layo', '0805', '08'),
('080506', 'Pampamarca', '0805', '08'),
('080507', 'Quehue', '0805', '08'),
('080508', 'Tupac Amaru', '0805', '08'),
('080601', 'Sicuani', '0806', '08'),
('080602', 'Checacupe', '0806', '08'),
('080603', 'Combapata', '0806', '08'),
('080604', 'Marangani', '0806', '08'),
('080605', 'Pitumarca', '0806', '08'),
('080606', 'San Pablo', '0806', '08'),
('080607', 'San Pedro', '0806', '08'),
('080608', 'Tinta', '0806', '08'),
('080701', 'Santo Tomas', '0807', '08'),
('080702', 'Capacmarca', '0807', '08'),
('080703', 'Chamaca', '0807', '08'),
('080704', 'Colquemarca', '0807', '08'),
('080705', 'Livitaca', '0807', '08'),
('080706', 'Llusco', '0807', '08'),
('080707', 'Quiñota', '0807', '08'),
('080708', 'Velille', '0807', '08'),
('080801', 'Espinar', '0808', '08'),
('080802', 'Condoroma', '0808', '08'),
('080803', 'Coporaque', '0808', '08'),
('080804', 'Ocoruro', '0808', '08'),
('080805', 'Pallpata', '0808', '08'),
('080806', 'Pichigua', '0808', '08'),
('080807', 'Suyckutambo', '0808', '08'),
('080808', 'Alto Pichigua', '0808', '08'),
('080901', 'Santa Ana', '0809', '08'),
('080902', 'Echarate', '0809', '08'),
('080903', 'Huayopata', '0809', '08'),
('080904', 'Maranura', '0809', '08'),
('080905', 'Ocobamba', '0809', '08'),
('080906', 'Quellouno', '0809', '08'),
('080907', 'Kimbiri', '0809', '08'),
('080908', 'Santa Teresa', '0809', '08'),
('080909', 'Vilcabamba', '0809', '08'),
('080910', 'Pichari', '0809', '08'),
('080911', 'Inkawasi', '0809', '08'),
('080912', 'Villa Virgen', '0809', '08'),
('080913', 'Villa Kintiarina', '0809', '08'),
('080914', 'Megantoni', '0809', '08'),
('081001', 'Paruro', '0810', '08'),
('081002', 'Accha', '0810', '08'),
('081003', 'Ccapi', '0810', '08'),
('081004', 'Colcha', '0810', '08'),
('081005', 'Huanoquite', '0810', '08'),
('081006', 'Omachaç', '0810', '08'),
('081007', 'Paccaritambo', '0810', '08'),
('081008', 'Pillpinto', '0810', '08'),
('081009', 'Yaurisque', '0810', '08'),
('081101', 'Paucartambo', '0811', '08'),
('081102', 'Caicay', '0811', '08'),
('081103', 'Challabamba', '0811', '08'),
('081104', 'Colquepata', '0811', '08'),
('081105', 'Huancarani', '0811', '08'),
('081106', 'Kosñipata', '0811', '08'),
('081201', 'Urcos', '0812', '08'),
('081202', 'Andahuaylillas', '0812', '08'),
('081203', 'Camanti', '0812', '08'),
('081204', 'Ccarhuayo', '0812', '08'),
('081205', 'Ccatca', '0812', '08'),
('081206', 'Cusipata', '0812', '08'),
('081207', 'Huaro', '0812', '08'),
('081208', 'Lucre', '0812', '08'),
('081209', 'Marcapata', '0812', '08'),
('081210', 'Ocongate', '0812', '08'),
('081211', 'Oropesa', '0812', '08'),
('081212', 'Quiquijana', '0812', '08'),
('081301', 'Urubamba', '0813', '08'),
('081302', 'Chinchero', '0813', '08'),
('081303', 'Huayllabamba', '0813', '08'),
('081304', 'Machupicchu', '0813', '08'),
('081305', 'Maras', '0813', '08'),
('081306', 'Ollantaytambo', '0813', '08'),
('081307', 'Yucay', '0813', '08'),
('090101', 'Huancavelica', '0901', '09'),
('090102', 'Acobambilla', '0901', '09'),
('090103', 'Acoria', '0901', '09'),
('090104', 'Conayca', '0901', '09'),
('090105', 'Cuenca', '0901', '09'),
('090106', 'Huachocolpa', '0901', '09'),
('090107', 'Huayllahuara', '0901', '09'),
('090108', 'Izcuchaca', '0901', '09'),
('090109', 'Laria', '0901', '09'),
('090110', 'Manta', '0901', '09'),
('090111', 'Mariscal Cáceres', '0901', '09'),
('090112', 'Moya', '0901', '09'),
('090113', 'Nuevo Occoro', '0901', '09'),
('090114', 'Palca', '0901', '09'),
('090115', 'Pilchaca', '0901', '09'),
('090116', 'Vilca', '0901', '09'),
('090117', 'Yauli', '0901', '09'),
('090118', 'Ascensión', '0901', '09'),
('090119', 'Huando', '0901', '09'),
('090201', 'Acobamba', '0902', '09'),
('090202', 'Andabamba', '0902', '09'),
('090203', 'Anta', '0902', '09'),
('090204', 'Caja', '0902', '09'),
('090205', 'Marcas', '0902', '09'),
('090206', 'Paucara', '0902', '09'),
('090207', 'Pomacocha', '0902', '09'),
('090208', 'Rosario', '0902', '09'),
('090301', 'Lircay', '0903', '09'),
('090302', 'Anchonga', '0903', '09'),
('090303', 'Callanmarca', '0903', '09'),
('090304', 'Ccochaccasa', '0903', '09'),
('090305', 'Chincho', '0903', '09'),
('090306', 'Congalla', '0903', '09'),
('090307', 'Huanca-Huanca', '0903', '09'),
('090308', 'Huayllay Grande', '0903', '09'),
('090309', 'Julcamarca', '0903', '09'),
('090310', 'San Antonio de Antaparco', '0903', '09'),
('090311', 'Santo Tomas de Pata', '0903', '09'),
('090312', 'Secclla', '0903', '09'),
('090401', 'Castrovirreyna', '0904', '09'),
('090402', 'Arma', '0904', '09'),
('090403', 'Aurahua', '0904', '09'),
('090404', 'Capillas', '0904', '09'),
('090405', 'Chupamarca', '0904', '09'),
('090406', 'Cocas', '0904', '09'),
('090407', 'Huachos', '0904', '09'),
('090408', 'Huamatambo', '0904', '09'),
('090409', 'Mollepampa', '0904', '09'),
('090410', 'San Juan', '0904', '09'),
('090411', 'Santa Ana', '0904', '09'),
('090412', 'Tantara', '0904', '09'),
('090413', 'Ticrapo', '0904', '09'),
('090501', 'Churcampa', '0905', '09'),
('090502', 'Anco', '0905', '09'),
('090503', 'Chinchihuasi', '0905', '09'),
('090504', 'El Carmen', '0905', '09'),
('090505', 'La Merced', '0905', '09'),
('090506', 'Locroja', '0905', '09'),
('090507', 'Paucarbamba', '0905', '09'),
('090508', 'San Miguel de Mayocc', '0905', '09'),
('090509', 'San Pedro de Coris', '0905', '09'),
('090510', 'Pachamarca', '0905', '09'),
('090511', 'Cosme', '0905', '09'),
('090601', 'Huaytara', '0906', '09'),
('090602', 'Ayavi', '0906', '09'),
('090603', 'Córdova', '0906', '09'),
('090604', 'Huayacundo Arma', '0906', '09'),
('090605', 'Laramarca', '0906', '09'),
('090606', 'Ocoyo', '0906', '09'),
('090607', 'Pilpichaca', '0906', '09'),
('090608', 'Querco', '0906', '09'),
('090609', 'Quito-Arma', '0906', '09'),
('090610', 'San Antonio de Cusicancha', '0906', '09'),
('090611', 'San Francisco de Sangayaico', '0906', '09'),
('090612', 'San Isidro', '0906', '09'),
('090613', 'Santiago de Chocorvos', '0906', '09'),
('090614', 'Santiago de Quirahuara', '0906', '09'),
('090615', 'Santo Domingo de Capillas', '0906', '09'),
('090616', 'Tambo', '0906', '09'),
('090701', 'Pampas', '0907', '09'),
('090702', 'Acostambo', '0907', '09'),
('090703', 'Acraquia', '0907', '09'),
('090704', 'Ahuaycha', '0907', '09'),
('090705', 'Colcabamba', '0907', '09'),
('090706', 'Daniel Hernández', '0907', '09'),
('090707', 'Huachocolpa', '0907', '09'),
('090709', 'Huaribamba', '0907', '09'),
('090710', 'Ñahuimpuquio', '0907', '09'),
('090711', 'Pazos', '0907', '09'),
('090713', 'Quishuar', '0907', '09'),
('090714', 'Salcabamba', '0907', '09'),
('090715', 'Salcahuasi', '0907', '09'),
('090716', 'San Marcos de Rocchac', '0907', '09'),
('090717', 'Surcubamba', '0907', '09'),
('090718', 'Tintay Puncu', '0907', '09'),
('090719', 'Quichuas', '0907', '09'),
('090720', 'Andaymarca', '0907', '09'),
('090721', 'Roble', '0907', '09'),
('090722', 'Pichos', '0907', '09'),
('090723', 'Santiago de Tucuma', '0907', '09'),
('100101', 'Huanuco', '1001', '10'),
('100102', 'Amarilis', '1001', '10'),
('100103', 'Chinchao', '1001', '10'),
('100104', 'Churubamba', '1001', '10'),
('100105', 'Margos', '1001', '10'),
('100106', 'Quisqui (Kichki)', '1001', '10'),
('100107', 'San Francisco de Cayran', '1001', '10'),
('100108', 'San Pedro de Chaulan', '1001', '10'),
('100109', 'Santa María del Valle', '1001', '10'),
('100110', 'Yarumayo', '1001', '10'),
('100111', 'Pillco Marca', '1001', '10'),
('100112', 'Yacus', '1001', '10'),
('100113', 'San Pablo de Pillao', '1001', '10'),
('100201', 'Ambo', '1002', '10'),
('100202', 'Cayna', '1002', '10'),
('100203', 'Colpas', '1002', '10'),
('100204', 'Conchamarca', '1002', '10'),
('100205', 'Huacar', '1002', '10'),
('100206', 'San Francisco', '1002', '10'),
('100207', 'San Rafael', '1002', '10'),
('100208', 'Tomay Kichwa', '1002', '10'),
('100301', 'La Unión', '1003', '10'),
('100307', 'Chuquis', '1003', '10'),
('100311', 'Marías', '1003', '10'),
('100313', 'Pachas', '1003', '10'),
('100316', 'Quivilla', '1003', '10'),
('100317', 'Ripan', '1003', '10'),
('100321', 'Shunqui', '1003', '10'),
('100322', 'Sillapata', '1003', '10'),
('100323', 'Yanas', '1003', '10'),
('100401', 'Huacaybamba', '1004', '10'),
('100402', 'Canchabamba', '1004', '10'),
('100403', 'Cochabamba', '1004', '10'),
('100404', 'Pinra', '1004', '10'),
('100501', 'Llata', '1005', '10'),
('100502', 'Arancay', '1005', '10'),
('100503', 'Chavín de Pariarca', '1005', '10'),
('100504', 'Jacas Grande', '1005', '10'),
('100505', 'Jircan', '1005', '10'),
('100506', 'Miraflores', '1005', '10'),
('100507', 'Monzón', '1005', '10'),
('100508', 'Punchao', '1005', '10'),
('100509', 'Puños', '1005', '10'),
('100510', 'Singa', '1005', '10'),
('100511', 'Tantamayo', '1005', '10'),
('100601', 'Rupa-Rupa', '1006', '10'),
('100602', 'Daniel Alomía Robles', '1006', '10'),
('100603', 'Hermílio Valdizan', '1006', '10'),
('100604', 'José Crespo y Castillo', '1006', '10'),
('100605', 'Luyando', '1006', '10'),
('100606', 'Mariano Damaso Beraun', '1006', '10'),
('100607', 'Pucayacu', '1006', '10'),
('100608', 'Castillo Grande', '1006', '10'),
('100609', 'Pueblo Nuevo', '1006', '10'),
('100610', 'Santo Domingo de Anda', '1006', '10'),
('100701', 'Huacrachuco', '1007', '10'),
('100702', 'Cholon', '1007', '10'),
('100703', 'San Buenaventura', '1007', '10'),
('100704', 'La Morada', '1007', '10'),
('100705', 'Santa Rosa de Alto Yanajanca', '1007', '10'),
('100801', 'Panao', '1008', '10'),
('100802', 'Chaglla', '1008', '10'),
('100803', 'Molino', '1008', '10'),
('100804', 'Umari', '1008', '10'),
('100901', 'Puerto Inca', '1009', '10'),
('100902', 'Codo del Pozuzo', '1009', '10'),
('100903', 'Honoria', '1009', '10'),
('100904', 'Tournavista', '1009', '10'),
('100905', 'Yuyapichis', '1009', '10'),
('101001', 'Jesús', '1010', '10'),
('101002', 'Baños', '1010', '10'),
('101003', 'Jivia', '1010', '10'),
('101004', 'Queropalca', '1010', '10'),
('101005', 'Rondos', '1010', '10'),
('101006', 'San Francisco de Asís', '1010', '10'),
('101007', 'San Miguel de Cauri', '1010', '10'),
('101101', 'Chavinillo', '1011', '10'),
('101102', 'Cahuac', '1011', '10'),
('101103', 'Chacabamba', '1011', '10'),
('101104', 'Aparicio Pomares', '1011', '10'),
('101105', 'Jacas Chico', '1011', '10'),
('101106', 'Obas', '1011', '10'),
('101107', 'Pampamarca', '1011', '10'),
('101108', 'Choras', '1011', '10'),
('110101', 'Ica', '1101', '11'),
('110102', 'La Tinguiña', '1101', '11'),
('110103', 'Los Aquijes', '1101', '11'),
('110104', 'Ocucaje', '1101', '11'),
('110105', 'Pachacutec', '1101', '11'),
('110106', 'Parcona', '1101', '11'),
('110107', 'Pueblo Nuevo', '1101', '11'),
('110108', 'Salas', '1101', '11'),
('110109', 'San José de Los Molinos', '1101', '11'),
('110110', 'San Juan Bautista', '1101', '11'),
('110111', 'Santiago', '1101', '11'),
('110112', 'Subtanjalla', '1101', '11'),
('110113', 'Tate', '1101', '11'),
('110114', 'Yauca del Rosario', '1101', '11'),
('110201', 'Chincha Alta', '1102', '11'),
('110202', 'Alto Laran', '1102', '11'),
('110203', 'Chavin', '1102', '11'),
('110204', 'Chincha Baja', '1102', '11'),
('110205', 'El Carmen', '1102', '11'),
('110206', 'Grocio Prado', '1102', '11'),
('110207', 'Pueblo Nuevo', '1102', '11'),
('110208', 'San Juan de Yanac', '1102', '11'),
('110209', 'San Pedro de Huacarpana', '1102', '11'),
('110210', 'Sunampe', '1102', '11'),
('110211', 'Tambo de Mora', '1102', '11'),
('110301', 'Nasca', '1103', '11'),
('110302', 'Changuillo', '1103', '11'),
('110303', 'El Ingenio', '1103', '11'),
('110304', 'Marcona', '1103', '11'),
('110305', 'Vista Alegre', '1103', '11'),
('110401', 'Palpa', '1104', '11'),
('110402', 'Llipata', '1104', '11'),
('110403', 'Río Grande', '1104', '11'),
('110404', 'Santa Cruz', '1104', '11'),
('110405', 'Tibillo', '1104', '11'),
('110501', 'Pisco', '1105', '11'),
('110502', 'Huancano', '1105', '11'),
('110503', 'Humay', '1105', '11'),
('110504', 'Independencia', '1105', '11'),
('110505', 'Paracas', '1105', '11'),
('110506', 'San Andrés', '1105', '11'),
('110507', 'San Clemente', '1105', '11'),
('110508', 'Tupac Amaru Inca', '1105', '11'),
('120101', 'Huancayo', '1201', '12'),
('120104', 'Carhuacallanga', '1201', '12'),
('120105', 'Chacapampa', '1201', '12'),
('120106', 'Chicche', '1201', '12'),
('120107', 'Chilca', '1201', '12'),
('120108', 'Chongos Alto', '1201', '12'),
('120111', 'Chupuro', '1201', '12'),
('120112', 'Colca', '1201', '12'),
('120113', 'Cullhuas', '1201', '12'),
('120114', 'El Tambo', '1201', '12'),
('120116', 'Huacrapuquio', '1201', '12'),
('120117', 'Hualhuas', '1201', '12'),
('120119', 'Huancan', '1201', '12'),
('120120', 'Huasicancha', '1201', '12'),
('120121', 'Huayucachi', '1201', '12'),
('120122', 'Ingenio', '1201', '12'),
('120124', 'Pariahuanca', '1201', '12'),
('120125', 'Pilcomayo', '1201', '12'),
('120126', 'Pucara', '1201', '12'),
('120127', 'Quichuay', '1201', '12'),
('120128', 'Quilcas', '1201', '12'),
('120129', 'San Agustín', '1201', '12'),
('120130', 'San Jerónimo de Tunan', '1201', '12'),
('120132', 'Saño', '1201', '12'),
('120133', 'Sapallanga', '1201', '12'),
('120134', 'Sicaya', '1201', '12'),
('120135', 'Santo Domingo de Acobamba', '1201', '12'),
('120136', 'Viques', '1201', '12'),
('120201', 'Concepción', '1202', '12'),
('120202', 'Aco', '1202', '12'),
('120203', 'Andamarca', '1202', '12'),
('120204', 'Chambara', '1202', '12'),
('120205', 'Cochas', '1202', '12'),
('120206', 'Comas', '1202', '12'),
('120207', 'Heroínas Toledo', '1202', '12'),
('120208', 'Manzanares', '1202', '12'),
('120209', 'Mariscal Castilla', '1202', '12'),
('120210', 'Matahuasi', '1202', '12'),
('120211', 'Mito', '1202', '12'),
('120212', 'Nueve de Julio', '1202', '12'),
('120213', 'Orcotuna', '1202', '12'),
('120214', 'San José de Quero', '1202', '12'),
('120215', 'Santa Rosa de Ocopa', '1202', '12'),
('120301', 'Chanchamayo', '1203', '12'),
('120302', 'Perene', '1203', '12'),
('120303', 'Pichanaqui', '1203', '12'),
('120304', 'San Luis de Shuaro', '1203', '12'),
('120305', 'San Ramón', '1203', '12'),
('120306', 'Vitoc', '1203', '12'),
('120401', 'Jauja', '1204', '12'),
('120402', 'Acolla', '1204', '12'),
('120403', 'Apata', '1204', '12'),
('120404', 'Ataura', '1204', '12'),
('120405', 'Canchayllo', '1204', '12'),
('120406', 'Curicaca', '1204', '12'),
('120407', 'El Mantaro', '1204', '12'),
('120408', 'Huamali', '1204', '12'),
('120409', 'Huaripampa', '1204', '12'),
('120410', 'Huertas', '1204', '12'),
('120411', 'Janjaillo', '1204', '12'),
('120412', 'Julcán', '1204', '12'),
('120413', 'Leonor Ordóñez', '1204', '12'),
('120414', 'Llocllapampa', '1204', '12'),
('120415', 'Marco', '1204', '12'),
('120416', 'Masma', '1204', '12'),
('120417', 'Masma Chicche', '1204', '12'),
('120418', 'Molinos', '1204', '12'),
('120419', 'Monobamba', '1204', '12'),
('120420', 'Muqui', '1204', '12'),
('120421', 'Muquiyauyo', '1204', '12'),
('120422', 'Paca', '1204', '12'),
('120423', 'Paccha', '1204', '12'),
('120424', 'Pancan', '1204', '12'),
('120425', 'Parco', '1204', '12'),
('120426', 'Pomacancha', '1204', '12'),
('120427', 'Ricran', '1204', '12'),
('120428', 'San Lorenzo', '1204', '12'),
('120429', 'San Pedro de Chunan', '1204', '12'),
('120430', 'Sausa', '1204', '12'),
('120431', 'Sincos', '1204', '12'),
('120432', 'Tunan Marca', '1204', '12'),
('120433', 'Yauli', '1204', '12'),
('120434', 'Yauyos', '1204', '12'),
('120501', 'Junin', '1205', '12'),
('120502', 'Carhuamayo', '1205', '12'),
('120503', 'Ondores', '1205', '12'),
('120504', 'Ulcumayo', '1205', '12'),
('120601', 'Satipo', '1206', '12'),
('120602', 'Coviriali', '1206', '12'),
('120603', 'Llaylla', '1206', '12'),
('120604', 'Mazamari', '1206', '12'),
('120605', 'Pampa Hermosa', '1206', '12'),
('120606', 'Pangoa', '1206', '12'),
('120607', 'Río Negro', '1206', '12'),
('120608', 'Río Tambo', '1206', '12'),
('120609', 'Vizcatan del Ene', '1206', '12'),
('120701', 'Tarma', '1207', '12'),
('120702', 'Acobamba', '1207', '12'),
('120703', 'Huaricolca', '1207', '12'),
('120704', 'Huasahuasi', '1207', '12'),
('120705', 'La Unión', '1207', '12'),
('120706', 'Palca', '1207', '12'),
('120707', 'Palcamayo', '1207', '12'),
('120708', 'San Pedro de Cajas', '1207', '12'),
('120709', 'Tapo', '1207', '12'),
('120801', 'La Oroya', '1208', '12'),
('120802', 'Chacapalpa', '1208', '12'),
('120803', 'Huay-Huay', '1208', '12'),
('120804', 'Marcapomacocha', '1208', '12'),
('120805', 'Morococha', '1208', '12'),
('120806', 'Paccha', '1208', '12'),
('120807', 'Santa Bárbara de Carhuacayan', '1208', '12'),
('120808', 'Santa Rosa de Sacco', '1208', '12'),
('120809', 'Suitucancha', '1208', '12'),
('120810', 'Yauli', '1208', '12'),
('120901', 'Chupaca', '1209', '12'),
('120902', 'Ahuac', '1209', '12'),
('120903', 'Chongos Bajo', '1209', '12'),
('120904', 'Huachac', '1209', '12'),
('120905', 'Huamancaca Chico', '1209', '12'),
('120906', 'San Juan de Iscos', '1209', '12'),
('120907', 'San Juan de Jarpa', '1209', '12'),
('120908', 'Tres de Diciembre', '1209', '12'),
('120909', 'Yanacancha', '1209', '12'),
('130101', 'Trujillo', '1301', '13'),
('130102', 'El Porvenir', '1301', '13'),
('130103', 'Florencia de Mora', '1301', '13'),
('130104', 'Huanchaco', '1301', '13'),
('130105', 'La Esperanza', '1301', '13'),
('130106', 'Laredo', '1301', '13'),
('130107', 'Moche', '1301', '13'),
('130108', 'Poroto', '1301', '13'),
('130109', 'Salaverry', '1301', '13'),
('130110', 'Simbal', '1301', '13'),
('130111', 'Victor Larco Herrera', '1301', '13'),
('130201', 'Ascope', '1302', '13'),
('130202', 'Chicama', '1302', '13'),
('130203', 'Chocope', '1302', '13'),
('130204', 'Magdalena de Cao', '1302', '13'),
('130205', 'Paijan', '1302', '13'),
('130206', 'Rázuri', '1302', '13'),
('130207', 'Santiago de Cao', '1302', '13'),
('130208', 'Casa Grande', '1302', '13'),
('130301', 'Bolívar', '1303', '13'),
('130302', 'Bambamarca', '1303', '13'),
('130303', 'Condormarca', '1303', '13'),
('130304', 'Longotea', '1303', '13'),
('130305', 'Uchumarca', '1303', '13'),
('130306', 'Ucuncha', '1303', '13'),
('130401', 'Chepen', '1304', '13'),
('130402', 'Pacanga', '1304', '13'),
('130403', 'Pueblo Nuevo', '1304', '13'),
('130501', 'Julcan', '1305', '13'),
('130502', 'Calamarca', '1305', '13'),
('130503', 'Carabamba', '1305', '13'),
('130504', 'Huaso', '1305', '13'),
('130601', 'Otuzco', '1306', '13'),
('130602', 'Agallpampa', '1306', '13'),
('130604', 'Charat', '1306', '13'),
('130605', 'Huaranchal', '1306', '13'),
('130606', 'La Cuesta', '1306', '13'),
('130608', 'Mache', '1306', '13'),
('130610', 'Paranday', '1306', '13'),
('130611', 'Salpo', '1306', '13'),
('130613', 'Sinsicap', '1306', '13'),
('130614', 'Usquil', '1306', '13'),
('130701', 'San Pedro de Lloc', '1307', '13'),
('130702', 'Guadalupe', '1307', '13'),
('130703', 'Jequetepeque', '1307', '13'),
('130704', 'Pacasmayo', '1307', '13'),
('130705', 'San José', '1307', '13'),
('130801', 'Tayabamba', '1308', '13'),
('130802', 'Buldibuyo', '1308', '13'),
('130803', 'Chillia', '1308', '13'),
('130804', 'Huancaspata', '1308', '13'),
('130805', 'Huaylillas', '1308', '13'),
('130806', 'Huayo', '1308', '13'),
('130807', 'Ongon', '1308', '13'),
('130808', 'Parcoy', '1308', '13'),
('130809', 'Pataz', '1308', '13'),
('130810', 'Pias', '1308', '13'),
('130811', 'Santiago de Challas', '1308', '13'),
('130812', 'Taurija', '1308', '13'),
('130813', 'Urpay', '1308', '13'),
('130901', 'Huamachuco', '1309', '13'),
('130902', 'Chugay', '1309', '13'),
('130903', 'Cochorco', '1309', '13'),
('130904', 'Curgos', '1309', '13'),
('130905', 'Marcabal', '1309', '13'),
('130906', 'Sanagoran', '1309', '13'),
('130907', 'Sarin', '1309', '13'),
('130908', 'Sartimbamba', '1309', '13'),
('131001', 'Santiago de Chuco', '1310', '13'),
('131002', 'Angasmarca', '1310', '13'),
('131003', 'Cachicadan', '1310', '13'),
('131004', 'Mollebamba', '1310', '13'),
('131005', 'Mollepata', '1310', '13'),
('131006', 'Quiruvilca', '1310', '13'),
('131007', 'Santa Cruz de Chuca', '1310', '13'),
('131008', 'Sitabamba', '1310', '13'),
('131101', 'Cascas', '1311', '13'),
('131102', 'Lucma', '1311', '13'),
('131103', 'Marmot', '1311', '13'),
('131104', 'Sayapullo', '1311', '13'),
('131201', 'Viru', '1312', '13'),
('131202', 'Chao', '1312', '13'),
('131203', 'Guadalupito', '1312', '13'),
('140101', 'Chiclayo', '1401', '14'),
('140102', 'Chongoyape', '1401', '14'),
('140103', 'Eten', '1401', '14'),
('140104', 'Eten Puerto', '1401', '14'),
('140105', 'José Leonardo Ortiz', '1401', '14'),
('140106', 'La Victoria', '1401', '14'),
('140107', 'Lagunas', '1401', '14'),
('140108', 'Monsefu', '1401', '14'),
('140109', 'Nueva Arica', '1401', '14'),
('140110', 'Oyotun', '1401', '14'),
('140111', 'Picsi', '1401', '14'),
('140112', 'Pimentel', '1401', '14'),
('140113', 'Reque', '1401', '14'),
('140114', 'Santa Rosa', '1401', '14'),
('140115', 'Saña', '1401', '14'),
('140116', 'Cayalti', '1401', '14'),
('140117', 'Patapo', '1401', '14'),
('140118', 'Pomalca', '1401', '14'),
('140119', 'Pucala', '1401', '14'),
('140120', 'Tuman', '1401', '14'),
('140201', 'Ferreñafe', '1402', '14'),
('140202', 'Cañaris', '1402', '14'),
('140203', 'Incahuasi', '1402', '14'),
('140204', 'Manuel Antonio Mesones Muro', '1402', '14'),
('140205', 'Pitipo', '1402', '14'),
('140206', 'Pueblo Nuevo', '1402', '14'),
('140301', 'Lambayeque', '1403', '14'),
('140302', 'Chochope', '1403', '14'),
('140303', 'Illimo', '1403', '14'),
('140304', 'Jayanca', '1403', '14'),
('140305', 'Mochumi', '1403', '14'),
('140306', 'Morrope', '1403', '14'),
('140307', 'Motupe', '1403', '14'),
('140308', 'Olmos', '1403', '14'),
('140309', 'Pacora', '1403', '14'),
('140310', 'Salas', '1403', '14'),
('140311', 'San José', '1403', '14'),
('140312', 'Tucume', '1403', '14'),
('150101', 'Lima', '1501', '15'),
('150102', 'Ancón', '1501', '15'),
('150103', 'Ate', '1501', '15'),
('150104', 'Barranco', '1501', '15'),
('150105', 'Breña', '1501', '15'),
('150106', 'Carabayllo', '1501', '15'),
('150107', 'Chaclacayo', '1501', '15'),
('150108', 'Chorrillos', '1501', '15'),
('150109', 'Cieneguilla', '1501', '15'),
('150110', 'Comas', '1501', '15'),
('150111', 'El Agustino', '1501', '15'),
('150112', 'Independencia', '1501', '15'),
('150113', 'Jesús María', '1501', '15'),
('150114', 'La Molina', '1501', '15'),
('150115', 'La Victoria', '1501', '15'),
('150116', 'Lince', '1501', '15'),
('150117', 'Los Olivos', '1501', '15'),
('150118', 'Lurigancho', '1501', '15'),
('150119', 'Lurin', '1501', '15'),
('150120', 'Magdalena del Mar', '1501', '15'),
('150121', 'Pueblo Libre', '1501', '15'),
('150122', 'Miraflores', '1501', '15'),
('150123', 'Pachacamac', '1501', '15'),
('150124', 'Pucusana', '1501', '15'),
('150125', 'Puente Piedra', '1501', '15'),
('150126', 'Punta Hermosa', '1501', '15'),
('150127', 'Punta Negra', '1501', '15'),
('150128', 'Rímac', '1501', '15'),
('150129', 'San Bartolo', '1501', '15'),
('150130', 'San Borja', '1501', '15'),
('150131', 'San Isidro', '1501', '15'),
('150132', 'San Juan de Lurigancho', '1501', '15'),
('150133', 'San Juan de Miraflores', '1501', '15'),
('150134', 'San Luis', '1501', '15'),
('150135', 'San Martín de Porres', '1501', '15'),
('150136', 'San Miguel', '1501', '15'),
('150137', 'Santa Anita', '1501', '15'),
('150138', 'Santa María del Mar', '1501', '15'),
('150139', 'Santa Rosa', '1501', '15'),
('150140', 'Santiago de Surco', '1501', '15'),
('150141', 'Surquillo', '1501', '15'),
('150142', 'Villa El Salvador', '1501', '15'),
('150143', 'Villa María del Triunfo', '1501', '15'),
('150201', 'Barranca', '1502', '15'),
('150202', 'Paramonga', '1502', '15'),
('150203', 'Pativilca', '1502', '15'),
('150204', 'Supe', '1502', '15'),
('150205', 'Supe Puerto', '1502', '15'),
('150301', 'Cajatambo', '1503', '15'),
('150302', 'Copa', '1503', '15'),
('150303', 'Gorgor', '1503', '15'),
('150304', 'Huancapon', '1503', '15'),
('150305', 'Manas', '1503', '15'),
('150401', 'Canta', '1504', '15'),
('150402', 'Arahuay', '1504', '15'),
('150403', 'Huamantanga', '1504', '15'),
('150404', 'Huaros', '1504', '15'),
('150405', 'Lachaqui', '1504', '15'),
('150406', 'San Buenaventura', '1504', '15');
INSERT INTO `ubigeo_peru_districts` (`id_distrito`, `nom_distrito`, `id_provincia`, `id_departamento`) VALUES
('150407', 'Santa Rosa de Quives', '1504', '15'),
('150501', 'San Vicente de Cañete', '1505', '15'),
('150502', 'Asia', '1505', '15'),
('150503', 'Calango', '1505', '15'),
('150504', 'Cerro Azul', '1505', '15'),
('150505', 'Chilca', '1505', '15'),
('150506', 'Coayllo', '1505', '15'),
('150507', 'Imperial', '1505', '15'),
('150508', 'Lunahuana', '1505', '15'),
('150509', 'Mala', '1505', '15'),
('150510', 'Nuevo Imperial', '1505', '15'),
('150511', 'Pacaran', '1505', '15'),
('150512', 'Quilmana', '1505', '15'),
('150513', 'San Antonio', '1505', '15'),
('150514', 'San Luis', '1505', '15'),
('150515', 'Santa Cruz de Flores', '1505', '15'),
('150516', 'Zúñiga', '1505', '15'),
('150601', 'Huaral', '1506', '15'),
('150602', 'Atavillos Alto', '1506', '15'),
('150603', 'Atavillos Bajo', '1506', '15'),
('150604', 'Aucallama', '1506', '15'),
('150605', 'Chancay', '1506', '15'),
('150606', 'Ihuari', '1506', '15'),
('150607', 'Lampian', '1506', '15'),
('150608', 'Pacaraos', '1506', '15'),
('150609', 'San Miguel de Acos', '1506', '15'),
('150610', 'Santa Cruz de Andamarca', '1506', '15'),
('150611', 'Sumbilca', '1506', '15'),
('150612', 'Veintisiete de Noviembre', '1506', '15'),
('150701', 'Matucana', '1507', '15'),
('150702', 'Antioquia', '1507', '15'),
('150703', 'Callahuanca', '1507', '15'),
('150704', 'Carampoma', '1507', '15'),
('150705', 'Chicla', '1507', '15'),
('150706', 'Cuenca', '1507', '15'),
('150707', 'Huachupampa', '1507', '15'),
('150708', 'Huanza', '1507', '15'),
('150709', 'Huarochiri', '1507', '15'),
('150710', 'Lahuaytambo', '1507', '15'),
('150711', 'Langa', '1507', '15'),
('150712', 'Laraos', '1507', '15'),
('150713', 'Mariatana', '1507', '15'),
('150714', 'Ricardo Palma', '1507', '15'),
('150715', 'San Andrés de Tupicocha', '1507', '15'),
('150716', 'San Antonio', '1507', '15'),
('150717', 'San Bartolomé', '1507', '15'),
('150718', 'San Damian', '1507', '15'),
('150719', 'San Juan de Iris', '1507', '15'),
('150720', 'San Juan de Tantaranche', '1507', '15'),
('150721', 'San Lorenzo de Quinti', '1507', '15'),
('150722', 'San Mateo', '1507', '15'),
('150723', 'San Mateo de Otao', '1507', '15'),
('150724', 'San Pedro de Casta', '1507', '15'),
('150725', 'San Pedro de Huancayre', '1507', '15'),
('150726', 'Sangallaya', '1507', '15'),
('150727', 'Santa Cruz de Cocachacra', '1507', '15'),
('150728', 'Santa Eulalia', '1507', '15'),
('150729', 'Santiago de Anchucaya', '1507', '15'),
('150730', 'Santiago de Tuna', '1507', '15'),
('150731', 'Santo Domingo de Los Olleros', '1507', '15'),
('150732', 'Surco', '1507', '15'),
('150801', 'Huacho', '1508', '15'),
('150802', 'Ambar', '1508', '15'),
('150803', 'Caleta de Carquin', '1508', '15'),
('150804', 'Checras', '1508', '15'),
('150805', 'Hualmay', '1508', '15'),
('150806', 'Huaura', '1508', '15'),
('150807', 'Leoncio Prado', '1508', '15'),
('150808', 'Paccho', '1508', '15'),
('150809', 'Santa Leonor', '1508', '15'),
('150810', 'Santa María', '1508', '15'),
('150811', 'Sayan', '1508', '15'),
('150812', 'Vegueta', '1508', '15'),
('150901', 'Oyon', '1509', '15'),
('150902', 'Andajes', '1509', '15'),
('150903', 'Caujul', '1509', '15'),
('150904', 'Cochamarca', '1509', '15'),
('150905', 'Navan', '1509', '15'),
('150906', 'Pachangara', '1509', '15'),
('151001', 'Yauyos', '1510', '15'),
('151002', 'Alis', '1510', '15'),
('151003', 'Allauca', '1510', '15'),
('151004', 'Ayaviri', '1510', '15'),
('151005', 'Azángaro', '1510', '15'),
('151006', 'Cacra', '1510', '15'),
('151007', 'Carania', '1510', '15'),
('151008', 'Catahuasi', '1510', '15'),
('151009', 'Chocos', '1510', '15'),
('151010', 'Cochas', '1510', '15'),
('151011', 'Colonia', '1510', '15'),
('151012', 'Hongos', '1510', '15'),
('151013', 'Huampara', '1510', '15'),
('151014', 'Huancaya', '1510', '15'),
('151015', 'Huangascar', '1510', '15'),
('151016', 'Huantan', '1510', '15'),
('151017', 'Huañec', '1510', '15'),
('151018', 'Laraos', '1510', '15'),
('151019', 'Lincha', '1510', '15'),
('151020', 'Madean', '1510', '15'),
('151021', 'Miraflores', '1510', '15'),
('151022', 'Omas', '1510', '15'),
('151023', 'Putinza', '1510', '15'),
('151024', 'Quinches', '1510', '15'),
('151025', 'Quinocay', '1510', '15'),
('151026', 'San Joaquín', '1510', '15'),
('151027', 'San Pedro de Pilas', '1510', '15'),
('151028', 'Tanta', '1510', '15'),
('151029', 'Tauripampa', '1510', '15'),
('151030', 'Tomas', '1510', '15'),
('151031', 'Tupe', '1510', '15'),
('151032', 'Viñac', '1510', '15'),
('151033', 'Vitis', '1510', '15'),
('160101', 'Iquitos', '1601', '16'),
('160102', 'Alto Nanay', '1601', '16'),
('160103', 'Fernando Lores', '1601', '16'),
('160104', 'Indiana', '1601', '16'),
('160105', 'Las Amazonas', '1601', '16'),
('160106', 'Mazan', '1601', '16'),
('160107', 'Napo', '1601', '16'),
('160108', 'Punchana', '1601', '16'),
('160110', 'Torres Causana', '1601', '16'),
('160112', 'Belén', '1601', '16'),
('160113', 'San Juan Bautista', '1601', '16'),
('160201', 'Yurimaguas', '1602', '16'),
('160202', 'Balsapuerto', '1602', '16'),
('160205', 'Jeberos', '1602', '16'),
('160206', 'Lagunas', '1602', '16'),
('160210', 'Santa Cruz', '1602', '16'),
('160211', 'Teniente Cesar López Rojas', '1602', '16'),
('160301', 'Nauta', '1603', '16'),
('160302', 'Parinari', '1603', '16'),
('160303', 'Tigre', '1603', '16'),
('160304', 'Trompeteros', '1603', '16'),
('160305', 'Urarinas', '1603', '16'),
('160401', 'Ramón Castilla', '1604', '16'),
('160402', 'Pebas', '1604', '16'),
('160403', 'Yavari', '1604', '16'),
('160404', 'San Pablo', '1604', '16'),
('160501', 'Requena', '1605', '16'),
('160502', 'Alto Tapiche', '1605', '16'),
('160503', 'Capelo', '1605', '16'),
('160504', 'Emilio San Martín', '1605', '16'),
('160505', 'Maquia', '1605', '16'),
('160506', 'Puinahua', '1605', '16'),
('160507', 'Saquena', '1605', '16'),
('160508', 'Soplin', '1605', '16'),
('160509', 'Tapiche', '1605', '16'),
('160510', 'Jenaro Herrera', '1605', '16'),
('160511', 'Yaquerana', '1605', '16'),
('160601', 'Contamana', '1606', '16'),
('160602', 'Inahuaya', '1606', '16'),
('160603', 'Padre Márquez', '1606', '16'),
('160604', 'Pampa Hermosa', '1606', '16'),
('160605', 'Sarayacu', '1606', '16'),
('160606', 'Vargas Guerra', '1606', '16'),
('160701', 'Barranca', '1607', '16'),
('160702', 'Cahuapanas', '1607', '16'),
('160703', 'Manseriche', '1607', '16'),
('160704', 'Morona', '1607', '16'),
('160705', 'Pastaza', '1607', '16'),
('160706', 'Andoas', '1607', '16'),
('160801', 'Putumayo', '1608', '16'),
('160802', 'Rosa Panduro', '1608', '16'),
('160803', 'Teniente Manuel Clavero', '1608', '16'),
('160804', 'Yaguas', '1608', '16'),
('170101', 'Tambopata', '1701', '17'),
('170102', 'Inambari', '1701', '17'),
('170103', 'Las Piedras', '1701', '17'),
('170104', 'Laberinto', '1701', '17'),
('170201', 'Manu', '1702', '17'),
('170202', 'Fitzcarrald', '1702', '17'),
('170203', 'Madre de Dios', '1702', '17'),
('170204', 'Huepetuhe', '1702', '17'),
('170301', 'Iñapari', '1703', '17'),
('170302', 'Iberia', '1703', '17'),
('170303', 'Tahuamanu', '1703', '17'),
('180101', 'Moquegua', '1801', '18'),
('180102', 'Carumas', '1801', '18'),
('180103', 'Cuchumbaya', '1801', '18'),
('180104', 'Samegua', '1801', '18'),
('180105', 'San Cristóbal', '1801', '18'),
('180106', 'Torata', '1801', '18'),
('180201', 'Omate', '1802', '18'),
('180202', 'Chojata', '1802', '18'),
('180203', 'Coalaque', '1802', '18'),
('180204', 'Ichuña', '1802', '18'),
('180205', 'La Capilla', '1802', '18'),
('180206', 'Lloque', '1802', '18'),
('180207', 'Matalaque', '1802', '18'),
('180208', 'Puquina', '1802', '18'),
('180209', 'Quinistaquillas', '1802', '18'),
('180210', 'Ubinas', '1802', '18'),
('180211', 'Yunga', '1802', '18'),
('180301', 'Ilo', '1803', '18'),
('180302', 'El Algarrobal', '1803', '18'),
('180303', 'Pacocha', '1803', '18'),
('190101', 'Chaupimarca', '1901', '19'),
('190102', 'Huachon', '1901', '19'),
('190103', 'Huariaca', '1901', '19'),
('190104', 'Huayllay', '1901', '19'),
('190105', 'Ninacaca', '1901', '19'),
('190106', 'Pallanchacra', '1901', '19'),
('190107', 'Paucartambo', '1901', '19'),
('190108', 'San Francisco de Asís de Yarusyacan', '1901', '19'),
('190109', 'Simon Bolívar', '1901', '19'),
('190110', 'Ticlacayan', '1901', '19'),
('190111', 'Tinyahuarco', '1901', '19'),
('190112', 'Vicco', '1901', '19'),
('190113', 'Yanacancha', '1901', '19'),
('190201', 'Yanahuanca', '1902', '19'),
('190202', 'Chacayan', '1902', '19'),
('190203', 'Goyllarisquizga', '1902', '19'),
('190204', 'Paucar', '1902', '19'),
('190205', 'San Pedro de Pillao', '1902', '19'),
('190206', 'Santa Ana de Tusi', '1902', '19'),
('190207', 'Tapuc', '1902', '19'),
('190208', 'Vilcabamba', '1902', '19'),
('190301', 'Oxapampa', '1903', '19'),
('190302', 'Chontabamba', '1903', '19'),
('190303', 'Huancabamba', '1903', '19'),
('190304', 'Palcazu', '1903', '19'),
('190305', 'Pozuzo', '1903', '19'),
('190306', 'Puerto Bermúdez', '1903', '19'),
('190307', 'Villa Rica', '1903', '19'),
('190308', 'Constitución', '1903', '19'),
('200101', 'Piura', '2001', '20'),
('200104', 'Castilla', '2001', '20'),
('200105', 'Catacaos', '2001', '20'),
('200107', 'Cura Mori', '2001', '20'),
('200108', 'El Tallan', '2001', '20'),
('200109', 'La Arena', '2001', '20'),
('200110', 'La Unión', '2001', '20'),
('200111', 'Las Lomas', '2001', '20'),
('200114', 'Tambo Grande', '2001', '20'),
('200115', 'Veintiseis de Octubre', '2001', '20'),
('200201', 'Ayabaca', '2002', '20'),
('200202', 'Frias', '2002', '20'),
('200203', 'Jilili', '2002', '20'),
('200204', 'Lagunas', '2002', '20'),
('200205', 'Montero', '2002', '20'),
('200206', 'Pacaipampa', '2002', '20'),
('200207', 'Paimas', '2002', '20'),
('200208', 'Sapillica', '2002', '20'),
('200209', 'Sicchez', '2002', '20'),
('200210', 'Suyo', '2002', '20'),
('200301', 'Huancabamba', '2003', '20'),
('200302', 'Canchaque', '2003', '20'),
('200303', 'El Carmen de la Frontera', '2003', '20'),
('200304', 'Huarmaca', '2003', '20'),
('200305', 'Lalaquiz', '2003', '20'),
('200306', 'San Miguel de El Faique', '2003', '20'),
('200307', 'Sondor', '2003', '20'),
('200308', 'Sondorillo', '2003', '20'),
('200401', 'Chulucanas', '2004', '20'),
('200402', 'Buenos Aires', '2004', '20'),
('200403', 'Chalaco', '2004', '20'),
('200404', 'La Matanza', '2004', '20'),
('200405', 'Morropon', '2004', '20'),
('200406', 'Salitral', '2004', '20'),
('200407', 'San Juan de Bigote', '2004', '20'),
('200408', 'Santa Catalina de Mossa', '2004', '20'),
('200409', 'Santo Domingo', '2004', '20'),
('200410', 'Yamango', '2004', '20'),
('200501', 'Paita', '2005', '20'),
('200502', 'Amotape', '2005', '20'),
('200503', 'Arenal', '2005', '20'),
('200504', 'Colan', '2005', '20'),
('200505', 'La Huaca', '2005', '20'),
('200506', 'Tamarindo', '2005', '20'),
('200507', 'Vichayal', '2005', '20'),
('200601', 'Sullana', '2006', '20'),
('200602', 'Bellavista', '2006', '20'),
('200603', 'Ignacio Escudero', '2006', '20'),
('200604', 'Lancones', '2006', '20'),
('200605', 'Marcavelica', '2006', '20'),
('200606', 'Miguel Checa', '2006', '20'),
('200607', 'Querecotillo', '2006', '20'),
('200608', 'Salitral', '2006', '20'),
('200701', 'Pariñas', '2007', '20'),
('200702', 'El Alto', '2007', '20'),
('200703', 'La Brea', '2007', '20'),
('200704', 'Lobitos', '2007', '20'),
('200705', 'Los Organos', '2007', '20'),
('200706', 'Mancora', '2007', '20'),
('200801', 'Sechura', '2008', '20'),
('200802', 'Bellavista de la Unión', '2008', '20'),
('200803', 'Bernal', '2008', '20'),
('200804', 'Cristo Nos Valga', '2008', '20'),
('200805', 'Vice', '2008', '20'),
('200806', 'Rinconada Llicuar', '2008', '20'),
('210101', 'Puno', '2101', '21'),
('210102', 'Acora', '2101', '21'),
('210103', 'Amantani', '2101', '21'),
('210104', 'Atuncolla', '2101', '21'),
('210105', 'Capachica', '2101', '21'),
('210106', 'Chucuito', '2101', '21'),
('210107', 'Coata', '2101', '21'),
('210108', 'Huata', '2101', '21'),
('210109', 'Mañazo', '2101', '21'),
('210110', 'Paucarcolla', '2101', '21'),
('210111', 'Pichacani', '2101', '21'),
('210112', 'Plateria', '2101', '21'),
('210113', 'San Antonio', '2101', '21'),
('210114', 'Tiquillaca', '2101', '21'),
('210115', 'Vilque', '2101', '21'),
('210201', 'Azángaro', '2102', '21'),
('210202', 'Achaya', '2102', '21'),
('210203', 'Arapa', '2102', '21'),
('210204', 'Asillo', '2102', '21'),
('210205', 'Caminaca', '2102', '21'),
('210206', 'Chupa', '2102', '21'),
('210207', 'José Domingo Choquehuanca', '2102', '21'),
('210208', 'Muñani', '2102', '21'),
('210209', 'Potoni', '2102', '21'),
('210210', 'Saman', '2102', '21'),
('210211', 'San Anton', '2102', '21'),
('210212', 'San José', '2102', '21'),
('210213', 'San Juan de Salinas', '2102', '21'),
('210214', 'Santiago de Pupuja', '2102', '21'),
('210215', 'Tirapata', '2102', '21'),
('210301', 'Macusani', '2103', '21'),
('210302', 'Ajoyani', '2103', '21'),
('210303', 'Ayapata', '2103', '21'),
('210304', 'Coasa', '2103', '21'),
('210305', 'Corani', '2103', '21'),
('210306', 'Crucero', '2103', '21'),
('210307', 'Ituata', '2103', '21'),
('210308', 'Ollachea', '2103', '21'),
('210309', 'San Gaban', '2103', '21'),
('210310', 'Usicayos', '2103', '21'),
('210401', 'Juli', '2104', '21'),
('210402', 'Desaguadero', '2104', '21'),
('210403', 'Huacullani', '2104', '21'),
('210404', 'Kelluyo', '2104', '21'),
('210405', 'Pisacoma', '2104', '21'),
('210406', 'Pomata', '2104', '21'),
('210407', 'Zepita', '2104', '21'),
('210501', 'Ilave', '2105', '21'),
('210502', 'Capazo', '2105', '21'),
('210503', 'Pilcuyo', '2105', '21'),
('210504', 'Santa Rosa', '2105', '21'),
('210505', 'Conduriri', '2105', '21'),
('210601', 'Huancane', '2106', '21'),
('210602', 'Cojata', '2106', '21'),
('210603', 'Huatasani', '2106', '21'),
('210604', 'Inchupalla', '2106', '21'),
('210605', 'Pusi', '2106', '21'),
('210606', 'Rosaspata', '2106', '21'),
('210607', 'Taraco', '2106', '21'),
('210608', 'Vilque Chico', '2106', '21'),
('210701', 'Lampa', '2107', '21'),
('210702', 'Cabanilla', '2107', '21'),
('210703', 'Calapuja', '2107', '21'),
('210704', 'Nicasio', '2107', '21'),
('210705', 'Ocuviri', '2107', '21'),
('210706', 'Palca', '2107', '21'),
('210707', 'Paratia', '2107', '21'),
('210708', 'Pucara', '2107', '21'),
('210709', 'Santa Lucia', '2107', '21'),
('210710', 'Vilavila', '2107', '21'),
('210801', 'Ayaviri', '2108', '21'),
('210802', 'Antauta', '2108', '21'),
('210803', 'Cupi', '2108', '21'),
('210804', 'Llalli', '2108', '21'),
('210805', 'Macari', '2108', '21'),
('210806', 'Nuñoa', '2108', '21'),
('210807', 'Orurillo', '2108', '21'),
('210808', 'Santa Rosa', '2108', '21'),
('210809', 'Umachiri', '2108', '21'),
('210901', 'Moho', '2109', '21'),
('210902', 'Conima', '2109', '21'),
('210903', 'Huayrapata', '2109', '21'),
('210904', 'Tilali', '2109', '21'),
('211001', 'Putina', '2110', '21'),
('211002', 'Ananea', '2110', '21'),
('211003', 'Pedro Vilca Apaza', '2110', '21'),
('211004', 'Quilcapuncu', '2110', '21'),
('211005', 'Sina', '2110', '21'),
('211101', 'Juliaca', '2111', '21'),
('211102', 'Cabana', '2111', '21'),
('211103', 'Cabanillas', '2111', '21'),
('211104', 'Caracoto', '2111', '21'),
('211105', 'San Miguel', '2111', '21'),
('211201', 'Sandia', '2112', '21'),
('211202', 'Cuyocuyo', '2112', '21'),
('211203', 'Limbani', '2112', '21'),
('211204', 'Patambuco', '2112', '21'),
('211205', 'Phara', '2112', '21'),
('211206', 'Quiaca', '2112', '21'),
('211207', 'San Juan del Oro', '2112', '21'),
('211208', 'Yanahuaya', '2112', '21'),
('211209', 'Alto Inambari', '2112', '21'),
('211210', 'San Pedro de Putina Punco', '2112', '21'),
('211301', 'Yunguyo', '2113', '21'),
('211302', 'Anapia', '2113', '21'),
('211303', 'Copani', '2113', '21'),
('211304', 'Cuturapi', '2113', '21'),
('211305', 'Ollaraya', '2113', '21'),
('211306', 'Tinicachi', '2113', '21'),
('211307', 'Unicachi', '2113', '21'),
('220101', 'Moyobamba', '2201', '22'),
('220102', 'Calzada', '2201', '22'),
('220103', 'Habana', '2201', '22'),
('220104', 'Jepelacio', '2201', '22'),
('220105', 'Soritor', '2201', '22'),
('220106', 'Yantalo', '2201', '22'),
('220201', 'Bellavista', '2202', '22'),
('220202', 'Alto Biavo', '2202', '22'),
('220203', 'Bajo Biavo', '2202', '22'),
('220204', 'Huallaga', '2202', '22'),
('220205', 'San Pablo', '2202', '22'),
('220206', 'San Rafael', '2202', '22'),
('220301', 'San José de Sisa', '2203', '22'),
('220302', 'Agua Blanca', '2203', '22'),
('220303', 'San Martín', '2203', '22'),
('220304', 'Santa Rosa', '2203', '22'),
('220305', 'Shatoja', '2203', '22'),
('220401', 'Saposoa', '2204', '22'),
('220402', 'Alto Saposoa', '2204', '22'),
('220403', 'El Eslabón', '2204', '22'),
('220404', 'Piscoyacu', '2204', '22'),
('220405', 'Sacanche', '2204', '22'),
('220406', 'Tingo de Saposoa', '2204', '22'),
('220501', 'Lamas', '2205', '22'),
('220502', 'Alonso de Alvarado', '2205', '22'),
('220503', 'Barranquita', '2205', '22'),
('220504', 'Caynarachi', '2205', '22'),
('220505', 'Cuñumbuqui', '2205', '22'),
('220506', 'Pinto Recodo', '2205', '22'),
('220507', 'Rumisapa', '2205', '22'),
('220508', 'San Roque de Cumbaza', '2205', '22'),
('220509', 'Shanao', '2205', '22'),
('220510', 'Tabalosos', '2205', '22'),
('220511', 'Zapatero', '2205', '22'),
('220601', 'Juanjuí', '2206', '22'),
('220602', 'Campanilla', '2206', '22'),
('220603', 'Huicungo', '2206', '22'),
('220604', 'Pachiza', '2206', '22'),
('220605', 'Pajarillo', '2206', '22'),
('220701', 'Picota', '2207', '22'),
('220702', 'Buenos Aires', '2207', '22'),
('220703', 'Caspisapa', '2207', '22'),
('220704', 'Pilluana', '2207', '22'),
('220705', 'Pucacaca', '2207', '22'),
('220706', 'San Cristóbal', '2207', '22'),
('220707', 'San Hilarión', '2207', '22'),
('220708', 'Shamboyacu', '2207', '22'),
('220709', 'Tingo de Ponasa', '2207', '22'),
('220710', 'Tres Unidos', '2207', '22'),
('220801', 'Rioja', '2208', '22'),
('220802', 'Awajun', '2208', '22'),
('220803', 'Elías Soplin Vargas', '2208', '22'),
('220804', 'Nueva Cajamarca', '2208', '22'),
('220805', 'Pardo Miguel', '2208', '22'),
('220806', 'Posic', '2208', '22'),
('220807', 'San Fernando', '2208', '22'),
('220808', 'Yorongos', '2208', '22'),
('220809', 'Yuracyacu', '2208', '22'),
('220901', 'Tarapoto', '2209', '22'),
('220902', 'Alberto Leveau', '2209', '22'),
('220903', 'Cacatachi', '2209', '22'),
('220904', 'Chazuta', '2209', '22'),
('220905', 'Chipurana', '2209', '22'),
('220906', 'El Porvenir', '2209', '22'),
('220907', 'Huimbayoc', '2209', '22'),
('220908', 'Juan Guerra', '2209', '22'),
('220909', 'La Banda de Shilcayo', '2209', '22'),
('220910', 'Morales', '2209', '22'),
('220911', 'Papaplaya', '2209', '22'),
('220912', 'San Antonio', '2209', '22'),
('220913', 'Sauce', '2209', '22'),
('220914', 'Shapaja', '2209', '22'),
('221001', 'Tocache', '2210', '22'),
('221002', 'Nuevo Progreso', '2210', '22'),
('221003', 'Polvora', '2210', '22'),
('221004', 'Shunte', '2210', '22'),
('221005', 'Uchiza', '2210', '22'),
('230101', 'Tacna', '2301', '23'),
('230102', 'Alto de la Alianza', '2301', '23'),
('230103', 'Calana', '2301', '23'),
('230104', 'Ciudad Nueva', '2301', '23'),
('230105', 'Inclan', '2301', '23'),
('230106', 'Pachia', '2301', '23'),
('230107', 'Palca', '2301', '23'),
('230108', 'Pocollay', '2301', '23'),
('230109', 'Sama', '2301', '23'),
('230110', 'Coronel Gregorio Albarracín Lanchipa', '2301', '23'),
('230111', 'La Yarada los Palos', '2301', '23'),
('230201', 'Candarave', '2302', '23'),
('230202', 'Cairani', '2302', '23'),
('230203', 'Camilaca', '2302', '23'),
('230204', 'Curibaya', '2302', '23'),
('230205', 'Huanuara', '2302', '23'),
('230206', 'Quilahuani', '2302', '23'),
('230301', 'Locumba', '2303', '23'),
('230302', 'Ilabaya', '2303', '23'),
('230303', 'Ite', '2303', '23'),
('230401', 'Tarata', '2304', '23'),
('230402', 'Héroes Albarracín', '2304', '23'),
('230403', 'Estique', '2304', '23'),
('230404', 'Estique-Pampa', '2304', '23'),
('230405', 'Sitajara', '2304', '23'),
('230406', 'Susapaya', '2304', '23'),
('230407', 'Tarucachi', '2304', '23'),
('230408', 'Ticaco', '2304', '23'),
('240101', 'Tumbes', '2401', '24'),
('240102', 'Corrales', '2401', '24'),
('240103', 'La Cruz', '2401', '24'),
('240104', 'Pampas de Hospital', '2401', '24'),
('240105', 'San Jacinto', '2401', '24'),
('240106', 'San Juan de la Virgen', '2401', '24'),
('240201', 'Zorritos', '2402', '24'),
('240202', 'Casitas', '2402', '24'),
('240203', 'Canoas de Punta Sal', '2402', '24'),
('240301', 'Zarumilla', '2403', '24'),
('240302', 'Aguas Verdes', '2403', '24'),
('240303', 'Matapalo', '2403', '24'),
('240304', 'Papayal', '2403', '24'),
('250101', 'Calleria', '2501', '25'),
('250102', 'Campoverde', '2501', '25'),
('250103', 'Iparia', '2501', '25'),
('250104', 'Masisea', '2501', '25'),
('250105', 'Yarinacocha', '2501', '25'),
('250106', 'Nueva Requena', '2501', '25'),
('250107', 'Manantay', '2501', '25'),
('250201', 'Raymondi', '2502', '25'),
('250202', 'Sepahua', '2502', '25'),
('250203', 'Tahuania', '2502', '25'),
('250204', 'Yurua', '2502', '25'),
('250301', 'Padre Abad', '2503', '25'),
('250302', 'Irazola', '2503', '25'),
('250303', 'Curimana', '2503', '25'),
('250304', 'Neshuya', '2503', '25'),
('250305', 'Alexander Von Humboldt', '2503', '25'),
('250401', 'Purus', '2504', '25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubigeo_peru_provinces`
--

CREATE TABLE `ubigeo_peru_provinces` (
  `id_provincia` varchar(4) NOT NULL,
  `nom_provincia` varchar(45) NOT NULL,
  `id_departamento` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `ubigeo_peru_provinces`
--

INSERT INTO `ubigeo_peru_provinces` (`id_provincia`, `nom_provincia`, `id_departamento`) VALUES
('0101', 'Chachapoyas', '01'),
('0102', 'Bagua', '01'),
('0103', 'Bongará', '01'),
('0104', 'Condorcanqui', '01'),
('0105', 'Luya', '01'),
('0106', 'Rodríguez de Mendoza', '01'),
('0107', 'Utcubamba', '01'),
('0201', 'Huaraz', '02'),
('0202', 'Aija', '02'),
('0203', 'Antonio Raymondi', '02'),
('0204', 'Asunción', '02'),
('0205', 'Bolognesi', '02'),
('0206', 'Carhuaz', '02'),
('0207', 'Carlos Fermín Fitzcarrald', '02'),
('0208', 'Casma', '02'),
('0209', 'Corongo', '02'),
('0210', 'Huari', '02'),
('0211', 'Huarmey', '02'),
('0212', 'Huaylas', '02'),
('0213', 'Mariscal Luzuriaga', '02'),
('0214', 'Ocros', '02'),
('0215', 'Pallasca', '02'),
('0216', 'Pomabamba', '02'),
('0217', 'Recuay', '02'),
('0218', 'Santa', '02'),
('0219', 'Sihuas', '02'),
('0220', 'Yungay', '02'),
('0301', 'Abancay', '03'),
('0302', 'Andahuaylas', '03'),
('0303', 'Antabamba', '03'),
('0304', 'Aymaraes', '03'),
('0305', 'Cotabambas', '03'),
('0306', 'Chincheros', '03'),
('0307', 'Grau', '03'),
('0401', 'Arequipa', '04'),
('0402', 'Camaná', '04'),
('0403', 'Caravelí', '04'),
('0404', 'Castilla', '04'),
('0405', 'Caylloma', '04'),
('0406', 'Condesuyos', '04'),
('0407', 'Islay', '04'),
('0408', 'La Uniòn', '04'),
('0501', 'Huamanga', '05'),
('0502', 'Cangallo', '05'),
('0503', 'Huanca Sancos', '05'),
('0504', 'Huanta', '05'),
('0505', 'La Mar', '05'),
('0506', 'Lucanas', '05'),
('0507', 'Parinacochas', '05'),
('0508', 'Pàucar del Sara Sara', '05'),
('0509', 'Sucre', '05'),
('0510', 'Víctor Fajardo', '05'),
('0511', 'Vilcas Huamán', '05'),
('0601', 'Cajamarca', '06'),
('0602', 'Cajabamba', '06'),
('0603', 'Celendín', '06'),
('0604', 'Chota', '06'),
('0605', 'Contumazá', '06'),
('0606', 'Cutervo', '06'),
('0607', 'Hualgayoc', '06'),
('0608', 'Jaén', '06'),
('0609', 'San Ignacio', '06'),
('0610', 'San Marcos', '06'),
('0611', 'San Miguel', '06'),
('0612', 'San Pablo', '06'),
('0613', 'Santa Cruz', '06'),
('0701', 'Prov. Const. del Callao', '07'),
('0801', 'Cusco', '08'),
('0802', 'Acomayo', '08'),
('0803', 'Anta', '08'),
('0804', 'Calca', '08'),
('0805', 'Canas', '08'),
('0806', 'Canchis', '08'),
('0807', 'Chumbivilcas', '08'),
('0808', 'Espinar', '08'),
('0809', 'La Convención', '08'),
('0810', 'Paruro', '08'),
('0811', 'Paucartambo', '08'),
('0812', 'Quispicanchi', '08'),
('0813', 'Urubamba', '08'),
('0901', 'Huancavelica', '09'),
('0902', 'Acobamba', '09'),
('0903', 'Angaraes', '09'),
('0904', 'Castrovirreyna', '09'),
('0905', 'Churcampa', '09'),
('0906', 'Huaytará', '09'),
('0907', 'Tayacaja', '09'),
('1001', 'Huánuco', '10'),
('1002', 'Ambo', '10'),
('1003', 'Dos de Mayo', '10'),
('1004', 'Huacaybamba', '10'),
('1005', 'Huamalíes', '10'),
('1006', 'Leoncio Prado', '10'),
('1007', 'Marañón', '10'),
('1008', 'Pachitea', '10'),
('1009', 'Puerto Inca', '10'),
('1010', 'Lauricocha ', '10'),
('1011', 'Yarowilca ', '10'),
('1101', 'Ica ', '11'),
('1102', 'Chincha ', '11'),
('1103', 'Nasca ', '11'),
('1104', 'Palpa ', '11'),
('1105', 'Pisco ', '11'),
('1201', 'Huancayo ', '12'),
('1202', 'Concepción ', '12'),
('1203', 'Chanchamayo ', '12'),
('1204', 'Jauja ', '12'),
('1205', 'Junín ', '12'),
('1206', 'Satipo ', '12'),
('1207', 'Tarma ', '12'),
('1208', 'Yauli ', '12'),
('1209', 'Chupaca ', '12'),
('1301', 'Trujillo ', '13'),
('1302', 'Ascope ', '13'),
('1303', 'Bolívar ', '13'),
('1304', 'Chepén ', '13'),
('1305', 'Julcán ', '13'),
('1306', 'Otuzco ', '13'),
('1307', 'Pacasmayo ', '13'),
('1308', 'Pataz ', '13'),
('1309', 'Sánchez Carrión ', '13'),
('1310', 'Santiago de Chuco ', '13'),
('1311', 'Gran Chimú ', '13'),
('1312', 'Virú ', '13'),
('1401', 'Chiclayo ', '14'),
('1402', 'Ferreñafe ', '14'),
('1403', 'Lambayeque ', '14'),
('1501', 'Lima', '15'),
('1502', 'Barranca ', '15'),
('1503', 'Cajatambo ', '15'),
('1504', 'Canta ', '15'),
('1505', 'Cañete ', '15'),
('1506', 'Huaral ', '15'),
('1507', 'Huarochirí ', '15'),
('1508', 'Huaura ', '15'),
('1509', 'Oyón ', '15'),
('1510', 'Yauyos ', '15'),
('1601', 'Maynas ', '16'),
('1602', 'Alto Amazonas ', '16'),
('1603', 'Loreto ', '16'),
('1604', 'Mariscal Ramón Castilla ', '16'),
('1605', 'Requena ', '16'),
('1606', 'Ucayali ', '16'),
('1607', 'Datem del Marañón ', '16'),
('1608', 'Putumayo', '16'),
('1701', 'Tambopata ', '17'),
('1702', 'Manu ', '17'),
('1703', 'Tahuamanu ', '17'),
('1801', 'Mariscal Nieto ', '18'),
('1802', 'General Sánchez Cerro ', '18'),
('1803', 'Ilo ', '18'),
('1901', 'Pasco ', '19'),
('1902', 'Daniel Alcides Carrión ', '19'),
('1903', 'Oxapampa ', '19'),
('2001', 'Piura ', '20'),
('2002', 'Ayabaca ', '20'),
('2003', 'Huancabamba ', '20'),
('2004', 'Morropón ', '20'),
('2005', 'Paita ', '20'),
('2006', 'Sullana ', '20'),
('2007', 'Talara ', '20'),
('2008', 'Sechura ', '20'),
('2101', 'Puno ', '21'),
('2102', 'Azángaro ', '21'),
('2103', 'Carabaya ', '21'),
('2104', 'Chucuito ', '21'),
('2105', 'El Collao ', '21'),
('2106', 'Huancané ', '21'),
('2107', 'Lampa ', '21'),
('2108', 'Melgar ', '21'),
('2109', 'Moho ', '21'),
('2110', 'San Antonio de Putina ', '21'),
('2111', 'San Román ', '21'),
('2112', 'Sandia ', '21'),
('2113', 'Yunguyo ', '21'),
('2201', 'Moyobamba ', '22'),
('2202', 'Bellavista ', '22'),
('2203', 'El Dorado ', '22'),
('2204', 'Huallaga ', '22'),
('2205', 'Lamas ', '22'),
('2206', 'Mariscal Cáceres ', '22'),
('2207', 'Picota ', '22'),
('2208', 'Rioja ', '22'),
('2209', 'San Martín ', '22'),
('2210', 'Tocache ', '22'),
('2301', 'Tacna ', '23'),
('2302', 'Candarave ', '23'),
('2303', 'Jorge Basadre ', '23'),
('2304', 'Tarata ', '23'),
('2401', 'Tumbes ', '24'),
('2402', 'Contralmirante Villar ', '24'),
('2403', 'Zarumilla ', '24'),
('2501', 'Coronel Portillo ', '25'),
('2502', 'Atalaya ', '25'),
('2503', 'Padre Abad ', '25'),
('2504', 'Purús', '25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ui`
--

CREATE TABLE `ui` (
  `id_ui` int(11) NOT NULL,
  `nombre_ui` varchar(50) NOT NULL,
  `id_tipo_ui` int(3) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `departamento` int(5) NOT NULL,
  `provincia` int(5) NOT NULL,
  `distrito` int(5) NOT NULL,
  `metraje` varchar(10) NOT NULL,
  `anio_const` int(4) NOT NULL,
  `junta_prop` int(1) NOT NULL,
  `ruc_jp` int(15) NOT NULL,
  `partida_jp` varchar(11) NOT NULL,
  `licencia_ui` varchar(11) NOT NULL,
  `coordinador` varchar(70) NOT NULL,
  `admin_ui` varchar(100) NOT NULL,
  `tel_admin_ui` varchar(15) NOT NULL,
  `email_admin_ui` varchar(40) NOT NULL,
  `pres_jd_ui` varchar(100) NOT NULL,
  `reglamento_ui` varchar(20) NOT NULL,
  `imagen` varchar(20) NOT NULL,
  `latitud` varchar(30) NOT NULL,
  `longitud` varchar(30) NOT NULL,
  `estado_ui` varchar(1) NOT NULL,
  `orden` int(11) DEFAULT 0,
  `nom_inmob` varchar(100) NOT NULL,
  `ruc_inmob` varchar(11) NOT NULL,
  `direccion_inmob` varchar(300) NOT NULL,
  `contacto_inmob` varchar(100) NOT NULL,
  `telef_inmob` varchar(20) NOT NULL,
  `movil_inmob` varchar(20) NOT NULL,
  `email_inmob` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ui`
--

INSERT INTO `ui` (`id_ui`, `nombre_ui`, `id_tipo_ui`, `direccion`, `departamento`, `provincia`, `distrito`, `metraje`, `anio_const`, `junta_prop`, `ruc_jp`, `partida_jp`, `licencia_ui`, `coordinador`, `admin_ui`, `tel_admin_ui`, `email_admin_ui`, `pres_jd_ui`, `reglamento_ui`, `imagen`, `latitud`, `longitud`, `estado_ui`, `orden`, `nom_inmob`, `ruc_inmob`, `direccion_inmob`, `contacto_inmob`, `telef_inmob`, `movil_inmob`, `email_inmob`) VALUES
(1, 'Oficina Central', 0, '', 15, 0, 0, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 'A', 3, '', '0', '', '', '', '', ''),
(2, 'U1', 1, 'Dirección U1', 1, 103, 10303, '999.99', 1988, 1, 2147483647, 'fasdf234234', 'dfafa2342', '', 'Pedro Perez', '941434183', 'wmuroa@gmail.co', 'Weimar Muro', 'i5m524q1dc.pdf', 's083vu6tos.jpg', '', '', 'A', 4, '', '0', '', '', '', '', ''),
(3, 'U2', 1, 'Dirección U2', 15, 1501, 150116, '999.99', 1990, 1, 234234234, '23423423', '23423423', '', 'Pedro Perez', '123123', '123123@asf.com', '123123', 'xgkuccm704.pdf', '', '', '', 'A', 6, '', '0', '', '', '', '', ''),
(4, 'Edificio Rivadavia', 1, 'Calle Rivadavia 172', 15, 1501, 150121, '1500', 2016, 1, 20, 'P145221', '', 'Frank Nava', 'Frank Nava', '123123', 'frank@frank.com', 'Claudia Mori Aurazo', 'et9cc1spde.pdf', 'vo28x990bl.jpg', '-12.070629', '-77.0562054', 'A', 0, 'Edificaciones Inmobiliarias S.A.C.', '206075560', 'Av. Javier Prado 4332 San Isidro', 'Rosa Chávez', '01 4515656', '966958988', 'einmobiliarias@email.com'),
(5, 'Los Cedros', 1, 'Los cedros de Villa', 15, 1501, 150131, '1500', 2013, 1, 2020202020, 'P145221', '', 'Frank Nava', 'Frank Nava', '941434183', 'frank@frank.com', 'Weimar Muro', '', '', '', '', 'A', 5, '', '0', '', '', '', '', ''),
(6, 'El Imperial', 1, 'Ca. Ocharan 232', 15, 1501, 150122, '5400', 2019, 1, 2147483647, 'P145221', '', 'Jorge Perez', 'Julio Perez', '954455455', 'juliop@email.com', 'Percy Jackson', '', '', '', '', 'A', 1, '', '0', '', '', '', '', ''),
(7, 'Los Álamos', 1, 'Los Álamos 135', 15, 1501, 150131, '1500', 2005, 1, 2147483647, '', '', 'Jorge Perez', 'Pedro Perez', '941434183', '123123@asf.com', 'Alberto Cortez', '', 'r3y5m385wy.jpg', '-12.094783317311835', '-77.04179763793947', 'A', 2, '', '0', '', '', '', '', ''),
(8, 'UI de prueba', 1, 'Dirección de prueba', 15, 1501, 150115, '1580', 2015, 1, 2147483647, 'P145221', '', 'Weimar Muro', 'Frank Nava', '941434183', 'frank@frank.com', 'Claudia Mori Aurazo', 'tyzeq0b77y.pdf', 'c39kqw8ymh.jpg', '', '', 'A', 7, 'Edificaciones Inmobiliarias S.A.C.', '20607556084', 'Av. Javier Prado 4332 San Isidro', 'Rosa Chávez', '01 4515656', '966958988', 'einmobiliarias@email.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` char(60) NOT NULL,
  `imagen` varchar(60) NOT NULL,
  `estado_user_activ` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_user`, `nombre`, `cargo`, `email`, `pass`, `imagen`, `estado_user_activ`) VALUES
(1, 'Weimar Muro', 'Administrador General', 'wmuroa@gmail.com', '$2y$10$efCGMxmZ/H/59kw6TjbM0u7Nz8H3WzzWMfMyHrcZAOXeMcCRXzheW', '8mwfccabw3.png', 'A'),
(2, 'Jose Cuba', 'Administrador General', 'josecubaarias@gmail.com', '$2y$10$5hU.0TCbQ1R7.P9Nx2lb/OJCmR0Jm9JoRopdDl72Tga.ABCpeHzCq', '', 'A'),
(3, 'Juan Perez', 'Administrador', 'admin@admin.com', '$2y$10$ffNBqJ3SaNCIWrqmGeIc5OwxRlc/G9dSGNps6DgMF.lvwaAuDoap6', 'jd02k2mwxc.jpg', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas_ui`
--

CREATE TABLE `visitas_ui` (
  `id_visita` int(11) NOT NULL,
  `id_ui` int(11) NOT NULL,
  `id_tipo_visita` int(1) NOT NULL,
  `id_per` int(11) NOT NULL,
  `motivo_visita` varchar(100) NOT NULL,
  `descripcion_visita` varchar(500) NOT NULL,
  `fecha_prog_visita` date NOT NULL,
  `fecha_visita` date DEFAULT NULL,
  `hora_lleg_visita` time DEFAULT NULL,
  `hora_sal_visita` time DEFAULT NULL,
  `hallazgo_visita` varchar(500) DEFAULT NULL,
  `acc_recom_visita` varchar(500) DEFAULT NULL,
  `fecha_sol_hallazgo_visita` date DEFAULT NULL,
  `estado_visita` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `visitas_ui`
--

INSERT INTO `visitas_ui` (`id_visita`, `id_ui`, `id_tipo_visita`, `id_per`, `motivo_visita`, `descripcion_visita`, `fecha_prog_visita`, `fecha_visita`, `hora_lleg_visita`, `hora_sal_visita`, `hallazgo_visita`, `acc_recom_visita`, `fecha_sol_hallazgo_visita`, `estado_visita`) VALUES
(1, 4, 1, 4, 'Visita de inspección', 'Visita de inspección de todos los sistemas auxiliares', '2025-11-03', '2025-11-03', '10:22:00', '20:22:00', 'Varios hallazgos', 'Solución a los hallazgos', '2025-11-04', 'R');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradora`
--
ALTER TABLE `administradora`
  ADD PRIMARY KEY (`id_ui`);

--
-- Indices de la tabla `bancos_prov`
--
ALTER TABLE `bancos_prov`
  ADD PRIMARY KEY (`id_cta_ban_prov`);

--
-- Indices de la tabla `cargos_personal`
--
ALTER TABLE `cargos_personal`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `contactos_prov`
--
ALTER TABLE `contactos_prov`
  ADD PRIMARY KEY (`id_contact_prov`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id_dep`);

--
-- Indices de la tabla `depositos`
--
ALTER TABLE `depositos`
  ADD PRIMARY KEY (`id_deposit`);

--
-- Indices de la tabla `documentos_financieros`
--
ALTER TABLE `documentos_financieros`
  ADD PRIMARY KEY (`id_doc_fin`);

--
-- Indices de la tabla `doc_pagos_prov`
--
ALTER TABLE `doc_pagos_prov`
  ADD PRIMARY KEY (`id_doc_pag_prov`);

--
-- Indices de la tabla `doi`
--
ALTER TABLE `doi`
  ADD PRIMARY KEY (`id_doc`);

--
-- Indices de la tabla `estacionamientos`
--
ALTER TABLE `estacionamientos`
  ADD PRIMARY KEY (`id_est`);

--
-- Indices de la tabla `img_visitas`
--
ALTER TABLE `img_visitas`
  ADD PRIMARY KEY (`id_img_visita`);

--
-- Indices de la tabla `incidencias_prov`
--
ALTER TABLE `incidencias_prov`
  ADD PRIMARY KEY (`id_inc_prov`);

--
-- Indices de la tabla `medio_pago`
--
ALTER TABLE `medio_pago`
  ADD PRIMARY KEY (`id_medio_pago`);

--
-- Indices de la tabla `mensajeria_conversacion`
--
ALTER TABLE `mensajeria_conversacion`
  ADD PRIMARY KEY (`id_conv`);

--
-- Indices de la tabla `mensajeria_mensajes`
--
ALTER TABLE `mensajeria_mensajes`
  ADD PRIMARY KEY (`id_mensaje`);

--
-- Indices de la tabla `meses`
--
ALTER TABLE `meses`
  ADD PRIMARY KEY (`id_mes`);

--
-- Indices de la tabla `moneda`
--
ALTER TABLE `moneda`
  ADD PRIMARY KEY (`id_mon`);

--
-- Indices de la tabla `operadores`
--
ALTER TABLE `operadores`
  ADD PRIMARY KEY (`id_operador`);

--
-- Indices de la tabla `pagos_prov`
--
ALTER TABLE `pagos_prov`
  ADD PRIMARY KEY (`id_pago_prov`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id_per`);

--
-- Indices de la tabla `personal_ui`
--
ALTER TABLE `personal_ui`
  ADD PRIMARY KEY (`id_per_ui`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indices de la tabla `recibo_operadores`
--
ALTER TABLE `recibo_operadores`
  ADD PRIMARY KEY (`id_rec_oper`);

--
-- Indices de la tabla `regimen_empresa`
--
ALTER TABLE `regimen_empresa`
  ADD PRIMARY KEY (`id_regimen`);

--
-- Indices de la tabla `rubro_prov`
--
ALTER TABLE `rubro_prov`
  ADD PRIMARY KEY (`id_rubro_prov`);

--
-- Indices de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD PRIMARY KEY (`id_sesion`);

--
-- Indices de la tabla `sujetos`
--
ALTER TABLE `sujetos`
  ADD PRIMARY KEY (`id_sujeto`);

--
-- Indices de la tabla `tipos_ui`
--
ALTER TABLE `tipos_ui`
  ADD PRIMARY KEY (`id_tipo_ui`);

--
-- Indices de la tabla `tipo_contrataciones`
--
ALTER TABLE `tipo_contrataciones`
  ADD PRIMARY KEY (`id_tipo_contratat`);

--
-- Indices de la tabla `tipo_cta_bancos`
--
ALTER TABLE `tipo_cta_bancos`
  ADD PRIMARY KEY (`id_tipo_cta`);

--
-- Indices de la tabla `tipo_dep_unid`
--
ALTER TABLE `tipo_dep_unid`
  ADD PRIMARY KEY (`id_tipo_dep`);

--
-- Indices de la tabla `tipo_estacionamiento`
--
ALTER TABLE `tipo_estacionamiento`
  ADD PRIMARY KEY (`id_tipo_est`);

--
-- Indices de la tabla `tipo_operador`
--
ALTER TABLE `tipo_operador`
  ADD PRIMARY KEY (`id_tipo_operador`);

--
-- Indices de la tabla `tipo_proveedor`
--
ALTER TABLE `tipo_proveedor`
  ADD PRIMARY KEY (`id_tipo_prov`);

--
-- Indices de la tabla `tipo_visitas_ui`
--
ALTER TABLE `tipo_visitas_ui`
  ADD PRIMARY KEY (`id_tipo_visita`);

--
-- Indices de la tabla `torres`
--
ALTER TABLE `torres`
  ADD PRIMARY KEY (`id_torre`);

--
-- Indices de la tabla `ui`
--
ALTER TABLE `ui`
  ADD PRIMARY KEY (`id_ui`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indices de la tabla `visitas_ui`
--
ALTER TABLE `visitas_ui`
  ADD PRIMARY KEY (`id_visita`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradora`
--
ALTER TABLE `administradora`
  MODIFY `id_ui` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `bancos_prov`
--
ALTER TABLE `bancos_prov`
  MODIFY `id_cta_ban_prov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cargos_personal`
--
ALTER TABLE `cargos_personal`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `contactos_prov`
--
ALTER TABLE `contactos_prov`
  MODIFY `id_contact_prov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id_dep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `depositos`
--
ALTER TABLE `depositos`
  MODIFY `id_deposit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `documentos_financieros`
--
ALTER TABLE `documentos_financieros`
  MODIFY `id_doc_fin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `doc_pagos_prov`
--
ALTER TABLE `doc_pagos_prov`
  MODIFY `id_doc_pag_prov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `doi`
--
ALTER TABLE `doi`
  MODIFY `id_doc` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `estacionamientos`
--
ALTER TABLE `estacionamientos`
  MODIFY `id_est` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `img_visitas`
--
ALTER TABLE `img_visitas`
  MODIFY `id_img_visita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `incidencias_prov`
--
ALTER TABLE `incidencias_prov`
  MODIFY `id_inc_prov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `medio_pago`
--
ALTER TABLE `medio_pago`
  MODIFY `id_medio_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `mensajeria_conversacion`
--
ALTER TABLE `mensajeria_conversacion`
  MODIFY `id_conv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `mensajeria_mensajes`
--
ALTER TABLE `mensajeria_mensajes`
  MODIFY `id_mensaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `meses`
--
ALTER TABLE `meses`
  MODIFY `id_mes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `moneda`
--
ALTER TABLE `moneda`
  MODIFY `id_mon` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `operadores`
--
ALTER TABLE `operadores`
  MODIFY `id_operador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `pagos_prov`
--
ALTER TABLE `pagos_prov`
  MODIFY `id_pago_prov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `id_per` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_ui`
--
ALTER TABLE `personal_ui`
  MODIFY `id_per_ui` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_prov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `recibo_operadores`
--
ALTER TABLE `recibo_operadores`
  MODIFY `id_rec_oper` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `regimen_empresa`
--
ALTER TABLE `regimen_empresa`
  MODIFY `id_regimen` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `rubro_prov`
--
ALTER TABLE `rubro_prov`
  MODIFY `id_rubro_prov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  MODIFY `id_sesion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `sujetos`
--
ALTER TABLE `sujetos`
  MODIFY `id_sujeto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipos_ui`
--
ALTER TABLE `tipos_ui`
  MODIFY `id_tipo_ui` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `tipo_contrataciones`
--
ALTER TABLE `tipo_contrataciones`
  MODIFY `id_tipo_contratat` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tipo_cta_bancos`
--
ALTER TABLE `tipo_cta_bancos`
  MODIFY `id_tipo_cta` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tipo_dep_unid`
--
ALTER TABLE `tipo_dep_unid`
  MODIFY `id_tipo_dep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tipo_estacionamiento`
--
ALTER TABLE `tipo_estacionamiento`
  MODIFY `id_tipo_est` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo_operador`
--
ALTER TABLE `tipo_operador`
  MODIFY `id_tipo_operador` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_proveedor`
--
ALTER TABLE `tipo_proveedor`
  MODIFY `id_tipo_prov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo_visitas_ui`
--
ALTER TABLE `tipo_visitas_ui`
  MODIFY `id_tipo_visita` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `torres`
--
ALTER TABLE `torres`
  MODIFY `id_torre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ui`
--
ALTER TABLE `ui`
  MODIFY `id_ui` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `visitas_ui`
--
ALTER TABLE `visitas_ui`
  MODIFY `id_visita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
