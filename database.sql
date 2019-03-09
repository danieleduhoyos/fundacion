-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 09-03-2019 a las 11:43:45
-- Versión del servidor: 5.7.25-0ubuntu0.18.04.2
-- Versión de PHP: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cooincoffee`
--
CREATE DATABASE IF NOT EXISTS `cooincoffee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cooincoffee`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add asociado', 7, 'add_asociado'),
(20, 'Can change asociado', 7, 'change_asociado'),
(21, 'Can delete asociado', 7, 'delete_asociado'),
(22, 'Can add cooperativa', 8, 'add_cooperativa'),
(23, 'Can change cooperativa', 8, 'change_cooperativa'),
(24, 'Can delete cooperativa', 8, 'delete_cooperativa'),
(25, 'Can add detalle factura', 9, 'add_detallefactura'),
(26, 'Can change detalle factura', 9, 'change_detallefactura'),
(27, 'Can delete detalle factura', 9, 'delete_detallefactura'),
(28, 'Can add factura', 10, 'add_factura'),
(29, 'Can change factura', 10, 'change_factura'),
(30, 'Can delete factura', 10, 'delete_factura'),
(31, 'Can add tipo cafe', 11, 'add_tipocafe'),
(32, 'Can change tipo cafe', 11, 'change_tipocafe'),
(33, 'Can delete tipo cafe', 11, 'delete_tipocafe'),
(34, 'Can add recordatorio', 12, 'add_recordatorio'),
(35, 'Can change recordatorio', 12, 'change_recordatorio'),
(36, 'Can delete recordatorio', 12, 'delete_recordatorio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'facturacion', 'asociado'),
(8, 'facturacion', 'cooperativa'),
(9, 'facturacion', 'detallefactura'),
(10, 'facturacion', 'factura'),
(11, 'facturacion', 'tipocafe'),
(12, 'recordatorios', 'recordatorio'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-09-07 00:22:17.180617'),
(2, 'auth', '0001_initial', '2018-09-07 00:22:26.758085'),
(3, 'admin', '0001_initial', '2018-09-07 00:22:28.806133'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-09-07 00:22:28.875868'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-09-07 00:22:30.183112'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-09-07 00:22:30.329956'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-09-07 00:22:30.476468'),
(8, 'auth', '0004_alter_user_username_opts', '2018-09-07 00:22:30.564002'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-09-07 00:22:31.258922'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-09-07 00:22:31.304567'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-09-07 00:22:31.368462'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-09-07 00:22:31.528672'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-09-07 00:22:31.674239'),
(14, 'facturacion', '0001_initial', '2018-09-07 00:22:38.859760'),
(15, 'recordatorios', '0001_initial', '2018-09-07 00:22:41.511810'),
(16, 'sessions', '0001_initial', '2018-09-07 00:22:42.128192');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion_asociado`
--

CREATE TABLE `facturacion_asociado` (
  `id` int(11) NOT NULL,
  `documento` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion_cooperativa`
--

CREATE TABLE `facturacion_cooperativa` (
  `id` int(11) NOT NULL,
  `nit` varchar(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ciudad` varchar(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion_detallefactura`
--

CREATE TABLE `facturacion_detallefactura` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `unidad` varchar(20) NOT NULL,
  `valorTotal` int(11) NOT NULL,
  `idAsociado_id` int(11) NOT NULL,
  `idFactura_id` int(11) NOT NULL,
  `idTipoCafe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion_factura`
--

CREATE TABLE `facturacion_factura` (
  `id` int(11) NOT NULL,
  `fechaRegistro` datetime(6) NOT NULL,
  `cooperativa_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion_tipocafe`
--

CREATE TABLE `facturacion_tipocafe` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recordatorios_recordatorio`
--

CREATE TABLE `recordatorios_recordatorio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `fecha` date NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recordatorios_recordatorio_usuario`
--

CREATE TABLE `recordatorios_recordatorio_usuario` (
  `id` int(11) NOT NULL,
  `recordatorio_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `facturacion_asociado`
--
ALTER TABLE `facturacion_asociado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturacion_cooperativa`
--
ALTER TABLE `facturacion_cooperativa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturacion_detallefactura`
--
ALTER TABLE `facturacion_detallefactura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facturacion_detallef_idAsociado_id_eafb2d2d_fk_facturaci` (`idAsociado_id`),
  ADD KEY `facturacion_detallef_idFactura_id_09b7b363_fk_facturaci` (`idFactura_id`),
  ADD KEY `facturacion_detallef_idTipoCafe_id_2750b1c6_fk_facturaci` (`idTipoCafe_id`);

--
-- Indices de la tabla `facturacion_factura`
--
ALTER TABLE `facturacion_factura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facturacion_factura_cooperativa_id_9e7e14e6_fk_facturaci` (`cooperativa_id`),
  ADD KEY `facturacion_factura_usuario_id_a81bcb3c_fk_auth_user_id` (`usuario_id`);

--
-- Indices de la tabla `facturacion_tipocafe`
--
ALTER TABLE `facturacion_tipocafe`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recordatorios_recordatorio`
--
ALTER TABLE `recordatorios_recordatorio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recordatorios_recordatorio_usuario`
--
ALTER TABLE `recordatorios_recordatorio_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recordatorios_recordator_recordatorio_id_user_id_4d5b4c55_uniq` (`recordatorio_id`,`user_id`),
  ADD KEY `recordatorios_record_user_id_1412a5e0_fk_auth_user` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `facturacion_asociado`
--
ALTER TABLE `facturacion_asociado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturacion_cooperativa`
--
ALTER TABLE `facturacion_cooperativa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturacion_detallefactura`
--
ALTER TABLE `facturacion_detallefactura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturacion_factura`
--
ALTER TABLE `facturacion_factura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturacion_tipocafe`
--
ALTER TABLE `facturacion_tipocafe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recordatorios_recordatorio`
--
ALTER TABLE `recordatorios_recordatorio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recordatorios_recordatorio_usuario`
--
ALTER TABLE `recordatorios_recordatorio_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `facturacion_detallefactura`
--
ALTER TABLE `facturacion_detallefactura`
  ADD CONSTRAINT `facturacion_detallef_idAsociado_id_eafb2d2d_fk_facturaci` FOREIGN KEY (`idAsociado_id`) REFERENCES `facturacion_asociado` (`id`),
  ADD CONSTRAINT `facturacion_detallef_idFactura_id_09b7b363_fk_facturaci` FOREIGN KEY (`idFactura_id`) REFERENCES `facturacion_factura` (`id`),
  ADD CONSTRAINT `facturacion_detallef_idTipoCafe_id_2750b1c6_fk_facturaci` FOREIGN KEY (`idTipoCafe_id`) REFERENCES `facturacion_tipocafe` (`id`);

--
-- Filtros para la tabla `facturacion_factura`
--
ALTER TABLE `facturacion_factura`
  ADD CONSTRAINT `facturacion_factura_cooperativa_id_9e7e14e6_fk_facturaci` FOREIGN KEY (`cooperativa_id`) REFERENCES `facturacion_cooperativa` (`id`),
  ADD CONSTRAINT `facturacion_factura_usuario_id_a81bcb3c_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `recordatorios_recordatorio_usuario`
--
ALTER TABLE `recordatorios_recordatorio_usuario`
  ADD CONSTRAINT `recordatorios_record_recordatorio_id_c29dab0b_fk_recordato` FOREIGN KEY (`recordatorio_id`) REFERENCES `recordatorios_recordatorio` (`id`),
  ADD CONSTRAINT `recordatorios_record_user_id_1412a5e0_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Base de datos: `db_fundacion`
--
CREATE DATABASE IF NOT EXISTS `db_fundacion` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_fundacion`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anexo`
--

CREATE TABLE `anexo` (
  `id_anexo` int(11) NOT NULL,
  `id_historia_clinica` int(11) NOT NULL,
  `ane_archivo` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecedente`
--

CREATE TABLE `antecedente` (
  `id_antecedente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `causa_externa`
--

CREATE TABLE `causa_externa` (
  `id_causa_externa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centro_atencion`
--

CREATE TABLE `centro_atencion` (
  `id_centro_atencion` int(11) NOT NULL,
  `cen_nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eps`
--

CREATE TABLE `eps` (
  `id_eps` int(11) NOT NULL,
  `eps_nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `eps`
--

INSERT INTO `eps` (`id_eps`, `eps_nombre`) VALUES
(1, 'ENSSANAR'),
(2, 'ASMET SALUD'),
(3, 'SANITAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_laboratorio`
--

CREATE TABLE `examen_laboratorio` (
  `id_examen_laboratorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia_clinica`
--

CREATE TABLE `historia_clinica` (
  `id_historia_clinica` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informe`
--

CREATE TABLE `informe` (
  `id_informe` int(11) NOT NULL,
  `fecha` year(4) NOT NULL,
  `informe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `informe`
--

INSERT INTO `informe` (`id_informe`, `fecha`, `informe`) VALUES
(4, 2015, 'informe-financiero-2015.pdf'),
(6, 2016, 'informe-financiero-2016.pdf'),
(8, 2018, 'informe-financiero-2018.pdf'),
(9, 2019, 'informe-financiero-2019.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso_egreso`
--

CREATE TABLE `ingreso_egreso` (
  `id_ingreso_egreso` int(11) NOT NULL,
  `id_historia_clinica` int(11) NOT NULL,
  `id_centro_atencion` int(11) NOT NULL,
  `ing_fecha_salida` date DEFAULT NULL,
  `ing_hora_salida` time DEFAULT NULL,
  `ing_interconsulta` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `ing_tipo_consulta` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE `noticia` (
  `id_noticia` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `fecha_publicacion` date NOT NULL DEFAULT '2018-08-22'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`id_noticia`, `titulo`, `descripcion`, `imagen`, `fecha_publicacion`) VALUES
(7, 'El incendio de Paradise, California, deja 29 cadáveres y más de 200 desaparecidos', 'El incendio que arrasó el viernes y el sábado la localidad de Paradise, en el norte de California, va camino de ser el más mortal de la historia del Estado desde que hay registros. El llamado Camp Fire ha destruido 6.700 estructuras, la mayoría de ellas casas. En la búsqueda entre los escombros fueron hallados este domingo seis cadáveres más, lo que eleva la cifra total a 29. Es el mismo número que el incendio más mortal hasta ahora, que se produjo en 1933. La búsqueda no ha terminado.\r\n\r\nEl fuego ha arrasado ya 45.000 hectáreas y ha destruido 6.700 construcciones, la gran mayoría viviendas. La ciudad de Paradise (26.000 habitantes) ha quedado arrasada. El lunes por la mañana, más de 200 personas seguían siendo buscadas por sus familiares y constaban como desaparecidas. Decenas de miles de personas permanecen bajo orden de evacuación obligatoria. El Camp Fire es el incendio más destructivo de la historia de California.\r\n\r\nEl lunes por la mañana, las últimas cifras de los bomberos indicaban que está controlado en un 25% después de cuatro días ardiendo. Las labores se realizaban en medio de un pesimismo general porque el principal factor causante de estos incendios, los vientos fuertes y secos del desierto, se reavivaron el domingo y pueden durar hasta el martes. Estos vientos son un fenómeno natural habitual en octubre y noviembre en California. Se llaman vientos de Santa Ana en el sur y vientos del diablo en el norte. Secan todo a su paso y hacen que las pavesas vuelen kilómetros y expandan el fuego a toda velocidad. De los muertos en Paradise, cinco fueron hallados calcinados en sus coches.\r\n\r\nLa cifra total de muertos atribuibles a los incendios se sitúa ya en 31 personas, 29 de ellas por el Camp Fire. Las autoridades confirmaron el domingo que dos cadáveres hallados en un cañón del oeste de Los Ángeles son víctimas del llamado Woolsey Fire, el incendio que consume las montañas de Santa Mónica y ha obligado a evacuar por completo algunos de los pueblos más privilegiados de Estados Unidos, como Malibú y Calabasas. Los cadáveres fueron hallados calcinados dentro de un coche atrapado por las llamas en una pintoresca carretera de la costa.\r\n\r\nLos vientos dieron un respiro el sábado, que permitió a los equipos de emergencia rociar con retardante zonas clave del perímetro del incendio en previsión de que las condiciones iban a empeorar en cuestión de horas. Así fue. El viento volvió el domingo y el lunes se esperaban rachas de 100 kilómetros por hora. El fuego había consumido hasta el lunes 36.000 hectáreas de montañas y cañones llenas de mansiones y ranchos.\r\n\r\nAl menos 370 casas han sido destruidas. Es una estimación preliminar porque los bomberos no han podido aún acceder a algunas zonas. El fuego solo está controlado en un 20% y los fuertes vientos hacen que la prioridad absoluta sea contener su expansión y salvar vidas, por lo que ningún residente de la zona ha podido aún volver a sus casas. Los bomberos advirtieron el domingo de que estas no son condiciones habituales de un incendio. Puede cambiar en cualquier momento. Se calcula que 5.700 casas están amenazadas por el Woolsey Fire, entre ellas las mansiones de muchos famosos del mundo del espectáculo. El viernes, el fuego destruyó un rancho que sirve de escenario para películas del oeste desde 1927 y recientemente fue utilizado para la serie Westworld. En los lugares donde han podido acceder las televisiones locales se ven mansiones ardiendo una detrás de otra a toda velocidad. Los residentes de esas zonas llevan cuatro días de angustiosa incertidumbre sobre el daño real que ha hecho el fuego en esas montañas.\r\n\r\nDesde finales de 2017, California se ha dado cuenta de que los incendios se han hecho cada vez mayores y más destructivos. Los fuegos baten récords en pocos meses. El gobernador del Estado, Jerry Brown, llamó a esta situación “la nueva normalidad” el pasado diciembre. El domingo quiso matizarse y dijo que era “la nueva anormalidad”, que atribuye a que las temporadas de calor son cada vez más calurosas y los vientos de otoño cada vez más fuertes.\r\n\r\nEl consenso científico es que California está sufriendo las consecuencias del cambio climático pero más a largo plazo. Estos fuegos se producen después de que hubiera cinco años de grave sequía, seguidos por un año muy húmedo, que dejaron el campo lleno de combustible de matorral, además de miles de árboles muertos. El campo de California es una pira lista para arder en cualquier momento, a lo que se suma la sequedad extrema e inusual, más la actividad humana en zonas rurales, donde las urbanizaciones se extienden por la naturaleza e incrementan el riesgo de ignición por accidente.', 'noticia-20181115145859.jpg', '2018-11-12'),
(11, 'Primer incidente con pólvora en Cali Colombia', 'A 15 días de que llegue diciembre, los Bomberos de Cali debieron atender una emergencia esta tarde al oriente de la ciudad, por acumulación de pólvora.\r\n\r\nEl incendio estructural se registró en una vivienda del barrio El Rodeo, ubicada en la carrera 27 con 36 A.\r\n\r\nEl cabo Ricardo Arias, de la Estación Oriental de los Bomberos, dijo que la pólvora la acumulaban debajo de las gradas y que por una mala manipulación de presentó la explosión.\r\n\r\nSe trataba de poco cantidad de pólvora, lo que evitó la afectación estructural del inmueble, tampoco se reportaron heridos.\r\n\r\nComo se acerca la época decembrina en esta casa compraban pólvora para revenderla en el centro, de acuerdo con las primeras investigaciones. La Policía se encarga de este caso.\r\n\r\nEl llamado de los Bomberos es para que este material no sea manipulado por persona experto.', 'noticia-20190308192404.jpg', '2018-11-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nutricion`
--

CREATE TABLE `nutricion` (
  `id_nutricion` int(11) NOT NULL,
  `id_historia_clinica` int(11) NOT NULL,
  `id_fecha_valoracion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_eps` int(11) NOT NULL,
  `pac_diagnostico` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `pac_familiar` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `pac_otro_observacion` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `per_nombre_uno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `per_nombre_dos` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `per_apellido_uno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `per_apellido_dos` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `per_tipo_documento` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `per_documento` int(15) NOT NULL,
  `per_fecha_nacimiento` date NOT NULL,
  `per_fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `per_nombre_uno`, `per_nombre_dos`, `per_apellido_uno`, `per_apellido_dos`, `per_tipo_documento`, `per_documento`, `per_fecha_nacimiento`, `per_fecha_registro`) VALUES
(136, 'BRAINER', 'ALEXIS', 'CHILITO', 'PEREZ', 'C.C', 1061784077, '1995-07-24', '2018-09-11'),
(137, 'Daniel', 'Eduardo', 'Hoyos', 'Silva', 'C.C', 1061791895, '1996-06-30', '2018-09-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preescripcion`
--

CREATE TABLE `preescripcion` (
  `id_preescripcion` int(11) NOT NULL,
  `id_historia_clinica` int(11) NOT NULL,
  `pre_nombre_medicamento` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pre_forma_farmaceutica` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pre_concentracion_medicamento` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pre_dosis_medicamento` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pre_via_medicamento` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `pre_frecuencia_medicamento` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pre_tiempo_medicamento` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pre_cantidad_final` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE `reporte` (
  `id_reporte` int(11) NOT NULL,
  `id_historia_clinica` int(11) NOT NULL,
  `rep_tipo_reporte` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `rep_servicio` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `rep_idx` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `rep_fecha` date NOT NULL,
  `rep_descripcion` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `rep_municipio` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `rep_hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `rol_tipo_cargo` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `rol_tipo_cargo`) VALUES
(1, 'medico'),
(2, 'jefe'),
(3, 'psicologa'),
(4, 'trabajo social'),
(5, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `signo_vital`
--

CREATE TABLE `signo_vital` (
  `id_signo_vital` int(11) NOT NULL,
  `id_historia_clinica` int(11) NOT NULL,
  `sig_tension_arterial` int(11) NOT NULL,
  `sig_frecuencia_respiratoria` int(11) NOT NULL,
  `sig_pulso` int(11) NOT NULL,
  `sig_temperatura` int(11) NOT NULL,
  `sig_saturacion` int(11) NOT NULL,
  `sig_hora` time NOT NULL,
  `sig_observacion` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suministro`
--

CREATE TABLE `suministro` (
  `id_suministro` int(11) NOT NULL,
  `id_preescripcion` int(11) NOT NULL,
  `sum_hora` time NOT NULL,
  `sum_fecha` date NOT NULL,
  `sum_aplicado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `sum_observacion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `id_telefono` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `telefono` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `usu_usuario` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `usu_contrasena` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `usu_correo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_persona`, `id_rol`, `usu_usuario`, `usu_contrasena`, `usu_correo`) VALUES
(19, 136, 2, 'jefe_usuario', '$2y$10$nkE1N5cmcsfPa7to/vZJTee0WyiF2gn4t3dV4tezl09fIKajhMnyi', 'jefe_usuario@gmail.com'),
(20, 137, 5, 'admin_usuario', '$2y$10$RDoxHkwZ9wDo1w7IMP9s.OeED13S4c.Hq18bHPNRPwmwwG5JHnHdG', 'danielhoyos350@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anexo`
--
ALTER TABLE `anexo`
  ADD PRIMARY KEY (`id_anexo`),
  ADD KEY `id_historia_clinica` (`id_historia_clinica`);

--
-- Indices de la tabla `antecedente`
--
ALTER TABLE `antecedente`
  ADD PRIMARY KEY (`id_antecedente`);

--
-- Indices de la tabla `causa_externa`
--
ALTER TABLE `causa_externa`
  ADD PRIMARY KEY (`id_causa_externa`);

--
-- Indices de la tabla `centro_atencion`
--
ALTER TABLE `centro_atencion`
  ADD KEY `id_centro_atencion` (`id_centro_atencion`);

--
-- Indices de la tabla `eps`
--
ALTER TABLE `eps`
  ADD PRIMARY KEY (`id_eps`);

--
-- Indices de la tabla `examen_laboratorio`
--
ALTER TABLE `examen_laboratorio`
  ADD PRIMARY KEY (`id_examen_laboratorio`);

--
-- Indices de la tabla `historia_clinica`
--
ALTER TABLE `historia_clinica`
  ADD PRIMARY KEY (`id_historia_clinica`),
  ADD KEY `historia_clinica_ibfk_1` (`id_paciente`);

--
-- Indices de la tabla `informe`
--
ALTER TABLE `informe`
  ADD PRIMARY KEY (`id_informe`),
  ADD UNIQUE KEY `anio` (`fecha`);

--
-- Indices de la tabla `ingreso_egreso`
--
ALTER TABLE `ingreso_egreso`
  ADD KEY `id_historia_clinica` (`id_historia_clinica`),
  ADD KEY `id_centro_atencion` (`id_centro_atencion`);

--
-- Indices de la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id_noticia`);

--
-- Indices de la tabla `nutricion`
--
ALTER TABLE `nutricion`
  ADD PRIMARY KEY (`id_nutricion`),
  ADD KEY `id_historia_clinica` (`id_historia_clinica`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id_paciente`),
  ADD KEY `paciente_ibfk_1` (`id_persona`),
  ADD KEY `paciente_ibfk_2` (`id_eps`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`);

--
-- Indices de la tabla `preescripcion`
--
ALTER TABLE `preescripcion`
  ADD PRIMARY KEY (`id_preescripcion`),
  ADD KEY `id_historia_clinica` (`id_historia_clinica`);

--
-- Indices de la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD PRIMARY KEY (`id_reporte`),
  ADD KEY `id_historia_clinica` (`id_historia_clinica`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `signo_vital`
--
ALTER TABLE `signo_vital`
  ADD PRIMARY KEY (`id_signo_vital`),
  ADD KEY `id_historia_clinica` (`id_historia_clinica`);

--
-- Indices de la tabla `suministro`
--
ALTER TABLE `suministro`
  ADD PRIMARY KEY (`id_suministro`),
  ADD KEY `id_preescripciones` (`id_preescripcion`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`id_telefono`),
  ADD KEY `telefono_ibfk_1` (`id_persona`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `usu_correo` (`usu_correo`),
  ADD KEY `usuario_ibfk_1` (`id_persona`),
  ADD KEY `usuario_ibfk_2` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anexo`
--
ALTER TABLE `anexo`
  MODIFY `id_anexo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `antecedente`
--
ALTER TABLE `antecedente`
  MODIFY `id_antecedente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `causa_externa`
--
ALTER TABLE `causa_externa`
  MODIFY `id_causa_externa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eps`
--
ALTER TABLE `eps`
  MODIFY `id_eps` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `examen_laboratorio`
--
ALTER TABLE `examen_laboratorio`
  MODIFY `id_examen_laboratorio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historia_clinica`
--
ALTER TABLE `historia_clinica`
  MODIFY `id_historia_clinica` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `informe`
--
ALTER TABLE `informe`
  MODIFY `id_informe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `nutricion`
--
ALTER TABLE `nutricion`
  MODIFY `id_nutricion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de la tabla `preescripcion`
--
ALTER TABLE `preescripcion`
  MODIFY `id_preescripcion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reporte`
--
ALTER TABLE `reporte`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `signo_vital`
--
ALTER TABLE `signo_vital`
  MODIFY `id_signo_vital` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `suministro`
--
ALTER TABLE `suministro`
  MODIFY `id_suministro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `id_telefono` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anexo`
--
ALTER TABLE `anexo`
  ADD CONSTRAINT `anexo_ibfk_1` FOREIGN KEY (`id_historia_clinica`) REFERENCES `historia_clinica` (`id_historia_clinica`);

--
-- Filtros para la tabla `historia_clinica`
--
ALTER TABLE `historia_clinica`
  ADD CONSTRAINT `historia_clinica_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ingreso_egreso`
--
ALTER TABLE `ingreso_egreso`
  ADD CONSTRAINT `ingreso_egreso_ibfk_1` FOREIGN KEY (`id_historia_clinica`) REFERENCES `historia_clinica` (`id_historia_clinica`),
  ADD CONSTRAINT `ingreso_egreso_ibfk_2` FOREIGN KEY (`id_centro_atencion`) REFERENCES `centro_atencion` (`id_centro_atencion`);

--
-- Filtros para la tabla `nutricion`
--
ALTER TABLE `nutricion`
  ADD CONSTRAINT `nutricion_ibfk_1` FOREIGN KEY (`id_historia_clinica`) REFERENCES `historia_clinica` (`id_historia_clinica`);

--
-- Filtros para la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `paciente_ibfk_2` FOREIGN KEY (`id_eps`) REFERENCES `eps` (`id_eps`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `preescripcion`
--
ALTER TABLE `preescripcion`
  ADD CONSTRAINT `preescripcion_ibfk_1` FOREIGN KEY (`id_historia_clinica`) REFERENCES `historia_clinica` (`id_historia_clinica`);

--
-- Filtros para la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`id_historia_clinica`) REFERENCES `historia_clinica` (`id_historia_clinica`);

--
-- Filtros para la tabla `signo_vital`
--
ALTER TABLE `signo_vital`
  ADD CONSTRAINT `signo_vital_ibfk_1` FOREIGN KEY (`id_historia_clinica`) REFERENCES `historia_clinica` (`id_historia_clinica`);

--
-- Filtros para la tabla `suministro`
--
ALTER TABLE `suministro`
  ADD CONSTRAINT `suministro_ibfk_1` FOREIGN KEY (`id_preescripcion`) REFERENCES `preescripcion` (`id_preescripcion`);

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `telefono_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"angular\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"small_big_all\":\">\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('tienda_creatic', 1, 'Tienda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('fundacion', '[{\"db\":\"db_fundacion\",\"table\":\"usuario\"},{\"db\":\"db_fundacion\",\"table\":\"informe\"},{\"db\":\"db_fundacion\",\"table\":\"noticia\"},{\"db\":\"db_fundacion\",\"table\":\"historia_clinica\"},{\"db\":\"db_fundacion\",\"table\":\"persona\"},{\"db\":\"db_fundacion\",\"table\":\"rol\"}]'),
('pruebas', '[{\"db\":\"clinicas\",\"table\":\"usuario\"},{\"db\":\"clinicas\",\"table\":\"persona\"},{\"db\":\"clinicas\",\"table\":\"rol\"}]'),
('root', '[{\"db\":\"db_fundacion\",\"table\":\"informe\"},{\"db\":\"tienda_creatic\",\"table\":\"home_producto_categoria\"},{\"db\":\"tienda_creatic\",\"table\":\"home_producto\"},{\"db\":\"tienda_creatic\",\"table\":\"home_marca\"},{\"db\":\"tienda_creatic\",\"table\":\"django_session\"},{\"db\":\"tienda_creatic\",\"table\":\"home_categoria\"},{\"db\":\"mysql\",\"table\":\"user\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Volcado de datos para la tabla `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('tienda_creatic', 'auth_group', 1, 1304, 706),
('tienda_creatic', 'auth_group_permissions', 1, 1305, 500),
('tienda_creatic', 'auth_permission', 1, 778, 736),
('tienda_creatic', 'auth_user', 1, 783, 465),
('tienda_creatic', 'auth_user_groups', 1, 1023, 425),
('tienda_creatic', 'auth_user_user_permissions', 1, 408, 509),
('tienda_creatic', 'django_admin_log', 1, 102, 269),
('tienda_creatic', 'django_content_type', 1, 93, 708),
('tienda_creatic', 'django_migrations', 1, 1333, 272),
('tienda_creatic', 'django_session', 1, 1324, 134),
('tienda_creatic', 'home_categoria', 1, 428, 62),
('tienda_creatic', 'home_marca', 1, 1009, 259),
('tienda_creatic', 'home_perfil', 1, 445, 249),
('tienda_creatic', 'home_producto', 1, 768, 249),
('tienda_creatic', 'home_producto_categoria', 1, 763, 61);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('fundacion', '2019-03-09 16:43:37', '{\"lang\":\"es\",\"Console\\/Mode\":\"collapse\"}'),
('pruebas', '2018-09-13 02:43:24', '{\"lang\":\"es\",\"Console\\/Mode\":\"collapse\"}'),
('root', '2018-10-17 15:17:56', '{\"lang\":\"es\",\"collation_connection\":\"utf8mb4_unicode_ci\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `tienda_creatic`
--
CREATE DATABASE IF NOT EXISTS `tienda_creatic` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tienda_creatic`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add categoria', 7, 'add_categoria'),
(20, 'Can change categoria', 7, 'change_categoria'),
(21, 'Can delete categoria', 7, 'delete_categoria'),
(22, 'Can add marca', 8, 'add_marca'),
(23, 'Can change marca', 8, 'change_marca'),
(24, 'Can delete marca', 8, 'delete_marca'),
(25, 'Can add producto', 9, 'add_producto'),
(26, 'Can change producto', 9, 'change_producto'),
(27, 'Can delete producto', 9, 'delete_producto'),
(28, 'Can add perfil', 10, 'add_perfil'),
(29, 'Can change perfil', 10, 'change_perfil'),
(30, 'Can delete perfil', 10, 'delete_perfil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$Jjo9eKh5Vu2M$J4fBzwZRgLB2rgfje7EEN/N2evWtiMtRiH2D8ADsMrk=', '2018-08-28 22:36:27.256811', 1, 'admin', '', '', 'danielhoyos350@gmail.com', 1, 1, '2018-08-23 16:46:39.049590'),
(2, 'pbkdf2_sha256$100000$nUB3mUTG9Ir8$ZPgA5H+X+YxQvKezyBgHIWH1b/e7gnVJlsnJmtsErvo=', '2018-08-28 22:35:15.282585', 0, 'daniel', '', '', 'dehoyos5@misena.edu.co', 0, 1, '2018-08-28 16:55:31.645455');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-08-23 16:47:10.884999', '1', 'Marca object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2018-08-23 16:47:17.430193', '1', 'Marca object (1)', 3, '', 8, 1),
(3, '2018-08-23 16:47:24.024218', '2', 'Marca object (2)', 1, '[{\"added\": {}}]', 8, 1),
(4, '2018-08-23 16:47:46.998045', '1', 'Producto object (1)', 1, '[{\"added\": {}}]', 9, 1),
(5, '2018-08-23 16:49:08.397057', '3', 'Marca object (3)', 1, '[{\"added\": {}}]', 8, 1),
(6, '2018-08-23 16:49:13.881835', '4', 'Marca object (4)', 1, '[{\"added\": {}}]', 8, 1),
(7, '2018-08-23 16:49:37.625375', '2', 'Producto object (2)', 1, '[{\"added\": {}}]', 9, 1),
(8, '2018-08-23 16:50:03.848692', '3', 'Producto object (3)', 1, '[{\"added\": {}}]', 9, 1),
(9, '2018-08-23 16:57:10.049952', '1', 'Producto object (1)', 2, '[{\"changed\": {\"fields\": [\"picture\"]}}]', 9, 1),
(10, '2018-08-23 16:57:22.476851', '1', 'Producto object (1)', 2, '[{\"changed\": {\"fields\": [\"picture\"]}}]', 9, 1),
(11, '2018-08-23 16:57:35.337799', '2', 'Producto object (2)', 2, '[{\"changed\": {\"fields\": [\"picture\"]}}]', 9, 1),
(12, '2018-08-23 16:57:44.683091', '2', 'Producto object (2)', 2, '[{\"changed\": {\"fields\": [\"picture\"]}}]', 9, 1),
(13, '2018-08-23 16:57:48.314653', '3', 'Producto object (3)', 2, '[{\"changed\": {\"fields\": [\"picture\"]}}]', 9, 1),
(14, '2018-08-23 16:57:57.090606', '3', 'Producto object (3)', 2, '[{\"changed\": {\"fields\": [\"picture\"]}}]', 9, 1),
(15, '2018-08-23 17:26:01.369489', '5', 'Marca object (5)', 1, '[{\"added\": {}}]', 8, 1),
(16, '2018-08-23 17:29:26.102170', '4', 'Producto object (4)', 2, '[{\"changed\": {\"fields\": [\"picture\"]}}]', 9, 1),
(17, '2018-08-23 17:29:34.811486', '5', 'Producto object (5)', 3, '', 9, 1),
(18, '2018-08-23 17:31:40.865861', '6', 'Marca object (6)', 1, '[{\"added\": {}}]', 8, 1),
(19, '2018-08-23 17:33:20.307294', '6', 'Producto object (6)', 2, '[{\"changed\": {\"fields\": [\"picture\"]}}]', 9, 1),
(20, '2018-08-23 17:33:27.520454', '6', 'Producto object (6)', 2, '[{\"changed\": {\"fields\": [\"picture\"]}}]', 9, 1),
(21, '2018-08-23 17:56:56.458896', '4', 'Categoria object (4)', 3, '', 7, 1),
(22, '2018-08-24 16:38:13.814658', '6', 'Producto object (6)', 2, '[{\"changed\": {\"fields\": [\"categoria\"]}}]', 9, 1),
(23, '2018-08-24 16:38:18.083302', '2', 'Producto object (2)', 2, '[{\"changed\": {\"fields\": [\"categoria\"]}}]', 9, 1),
(24, '2018-08-24 16:38:20.949563', '2', 'Producto object (2)', 2, '[]', 9, 1),
(25, '2018-08-24 16:38:24.202390', '1', 'Producto object (1)', 2, '[{\"changed\": {\"fields\": [\"categoria\"]}}]', 9, 1),
(26, '2018-08-24 16:38:26.605619', '2', 'Producto object (2)', 2, '[]', 9, 1),
(27, '2018-08-24 16:38:30.841974', '3', 'Producto object (3)', 2, '[{\"changed\": {\"fields\": [\"categoria\"]}}]', 9, 1),
(28, '2018-08-24 16:38:34.394078', '4', 'Producto object (4)', 2, '[{\"changed\": {\"fields\": [\"categoria\"]}}]', 9, 1),
(29, '2018-08-24 16:40:39.635552', '6', 'Producto object (6)', 2, '[]', 9, 1),
(30, '2018-08-24 16:40:53.172000', '4', 'Producto object (4)', 2, '[]', 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'home', 'categoria'),
(8, 'home', 'marca'),
(10, 'home', 'perfil'),
(9, 'home', 'producto'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-08-23 16:38:08.949673'),
(2, 'auth', '0001_initial', '2018-08-23 16:38:15.883860'),
(3, 'admin', '0001_initial', '2018-08-23 16:38:18.256459'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-08-23 16:38:18.313536'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-08-23 16:38:19.280714'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-08-23 16:38:19.892858'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-08-23 16:38:20.539911'),
(8, 'auth', '0004_alter_user_username_opts', '2018-08-23 16:38:20.637929'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-08-23 16:38:21.075811'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-08-23 16:38:21.106991'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-08-23 16:38:21.161027'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-08-23 16:38:21.682559'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-08-23 16:38:22.188038'),
(14, 'home', '0001_initial', '2018-08-23 16:38:26.664979'),
(15, 'sessions', '0001_initial', '2018-08-23 16:38:27.589419'),
(16, 'home', '0002_auto_20180828_2247', '2018-08-28 22:54:07.332355'),
(17, 'home', '0003_auto_20180828_2253', '2018-08-28 22:54:07.397094'),
(18, 'home', '0004_auto_20180828_2257', '2018-08-28 22:57:38.094523');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9qglmqmxa0jaru7701cceoiv2dz6jztq', 'NDVkNDI0Mjk3NDYwZWIwMmZhNDBhNDE5NzI0ZWU0MWMyZjEwMmVmOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNzgzZWQxYjBlM2U0OWFiMGI5Y2I4YWEyNzkxZjNiOWY4OGE2MjEzIn0=', '2018-09-06 16:47:03.260780'),
('i6clbg99xdfeq9m0ohnquqv2suhcz9yf', 'NDVkNDI0Mjk3NDYwZWIwMmZhNDBhNDE5NzI0ZWU0MWMyZjEwMmVmOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNzgzZWQxYjBlM2U0OWFiMGI5Y2I4YWEyNzkxZjNiOWY4OGE2MjEzIn0=', '2018-09-11 22:36:27.346013'),
('rfj9msn00lbza8elc4p24si0fknh7v56', 'NDVkNDI0Mjk3NDYwZWIwMmZhNDBhNDE5NzI0ZWU0MWMyZjEwMmVmOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNzgzZWQxYjBlM2U0OWFiMGI5Y2I4YWEyNzkxZjNiOWY4OGE2MjEzIn0=', '2018-09-11 17:18:45.576612'),
('ux427r7z3dbguy0mzuc1znccyxdk2o0p', 'NDVkNDI0Mjk3NDYwZWIwMmZhNDBhNDE5NzI0ZWU0MWMyZjEwMmVmOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNzgzZWQxYjBlM2U0OWFiMGI5Y2I4YWEyNzkxZjNiOWY4OGE2MjEzIn0=', '2018-09-10 17:19:49.353862');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_categoria`
--

CREATE TABLE `home_categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `home_categoria`
--

INSERT INTO `home_categoria` (`id`, `nombre`) VALUES
(1, 'Bebidas'),
(2, 'Comida'),
(3, 'Aseo'),
(5, 'Ropa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_marca`
--

CREATE TABLE `home_marca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `home_marca`
--

INSERT INTO `home_marca` (`id`, `nombre`) VALUES
(2, 'Pepsi'),
(3, 'Cocacola'),
(4, 'Postobon'),
(5, 'Heineken'),
(6, 'Casero'),
(7, 'Margarita');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_perfil`
--

CREATE TABLE `home_perfil` (
  `id` int(11) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `genero` varchar(25) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_producto`
--

CREATE TABLE `home_producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `marca_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `home_producto`
--

INSERT INTO `home_producto` (`id`, `nombre`, `precio`, `stock`, `status`, `picture`, `marca_id`) VALUES
(1, 'Pepsi Light 2', 2000, 30, 1, 'pictures/3000469.png', 2),
(2, 'Cocacola cero', 1000, 20, 1, 'pictures/coca-cola-zero.jpg', 3),
(3, 'Postobon naranja', 1000, 30, 1, 'pictures/0001334899232764_md_a.jpg', 4),
(4, 'Heineken lata', 3000, 100, 1, 'pictures/119888.jpg', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_producto_categoria`
--

CREATE TABLE `home_producto_categoria` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `home_producto_categoria`
--

INSERT INTO `home_producto_categoria` (`id`, `producto_id`, `categoria_id`) VALUES
(26, 1, 1),
(27, 1, 2),
(28, 1, 3),
(29, 1, 5),
(3, 2, 1),
(7, 3, 5),
(8, 4, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `home_categoria`
--
ALTER TABLE `home_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `home_marca`
--
ALTER TABLE `home_marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `home_perfil`
--
ALTER TABLE `home_perfil`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `home_producto`
--
ALTER TABLE `home_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_producto_marca_id_d039bbda_fk_home_marca_id` (`marca_id`);

--
-- Indices de la tabla `home_producto_categoria`
--
ALTER TABLE `home_producto_categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_producto_categoria_producto_id_categoria_id_0f760a32_uniq` (`producto_id`,`categoria_id`),
  ADD KEY `home_producto_catego_categoria_id_76df0f7f_fk_home_cate` (`categoria_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `home_categoria`
--
ALTER TABLE `home_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `home_marca`
--
ALTER TABLE `home_marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `home_perfil`
--
ALTER TABLE `home_perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `home_producto`
--
ALTER TABLE `home_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `home_producto_categoria`
--
ALTER TABLE `home_producto_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `home_perfil`
--
ALTER TABLE `home_perfil`
  ADD CONSTRAINT `home_perfil_user_id_046b9c19_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `home_producto`
--
ALTER TABLE `home_producto`
  ADD CONSTRAINT `home_producto_marca_id_d039bbda_fk_home_marca_id` FOREIGN KEY (`marca_id`) REFERENCES `home_marca` (`id`);

--
-- Filtros para la tabla `home_producto_categoria`
--
ALTER TABLE `home_producto_categoria`
  ADD CONSTRAINT `home_producto_catego_categoria_id_76df0f7f_fk_home_cate` FOREIGN KEY (`categoria_id`) REFERENCES `home_categoria` (`id`),
  ADD CONSTRAINT `home_producto_categoria_producto_id_8cc15c50_fk_home_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `home_producto` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
