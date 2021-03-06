-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.5.4-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.6096
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para articulosclientes
CREATE DATABASE IF NOT EXISTS `articulosclientes` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `articulosclientes`;

-- Volcando estructura para tabla articulosclientes.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla articulosclientes.auth_group: ~1 rows (aproximadamente)
DELETE FROM `auth_group`;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` (`id`, `name`) VALUES
	(1, 'Mdo. clientes pedidos');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Volcando estructura para tabla articulosclientes.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla articulosclientes.auth_group_permissions: ~8 rows (aproximadamente)
DELETE FROM `auth_group_permissions`;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
	(6, 1, 29),
	(7, 1, 30),
	(8, 1, 31),
	(1, 1, 32),
	(2, 1, 33),
	(3, 1, 34),
	(4, 1, 35),
	(5, 1, 36);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla articulosclientes.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla articulosclientes.auth_permission: ~36 rows (aproximadamente)
DELETE FROM `auth_permission`;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add articulos', 7, 'add_articulos'),
	(26, 'Can change articulos', 7, 'change_articulos'),
	(27, 'Can delete articulos', 7, 'delete_articulos'),
	(28, 'Can view articulos', 7, 'view_articulos'),
	(29, 'Can add clientes', 8, 'add_clientes'),
	(30, 'Can change clientes', 8, 'change_clientes'),
	(31, 'Can delete clientes', 8, 'delete_clientes'),
	(32, 'Can view clientes', 8, 'view_clientes'),
	(33, 'Can add pedidos', 9, 'add_pedidos'),
	(34, 'Can change pedidos', 9, 'change_pedidos'),
	(35, 'Can delete pedidos', 9, 'delete_pedidos'),
	(36, 'Can view pedidos', 9, 'view_pedidos');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Volcando estructura para tabla articulosclientes.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla articulosclientes.auth_user: ~2 rows (aproximadamente)
DELETE FROM `auth_user`;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$216000$6YzN5BBHUETU$c+FzgywB6fDeGpc7YtTK4Nhwa6g/fcZWPoI0Sb54V0Q=', '2020-09-01 22:39:14.958986', 1, 'briandb', '', '', '', 1, 1, '2020-08-29 21:49:44.952616'),
	(2, 'pbkdf2_sha256$216000$q5T1R9aAzYpr$KIMB3bc0Iou6ALFvnPqnZ9rPO3VoUnfWoZNs6mtHDKk=', '2020-09-01 22:43:36.972220', 0, 'mariadb', 'Maria', 'Isabell', 'maria@gmail.com', 1, 1, '2020-09-01 22:22:49.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Volcando estructura para tabla articulosclientes.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla articulosclientes.auth_user_groups: ~1 rows (aproximadamente)
DELETE FROM `auth_user_groups`;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
	(1, 2, 1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Volcando estructura para tabla articulosclientes.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla articulosclientes.auth_user_user_permissions: ~0 rows (aproximadamente)
DELETE FROM `auth_user_user_permissions`;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla articulosclientes.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla articulosclientes.django_admin_log: ~11 rows (aproximadamente)
DELETE FROM `django_admin_log`;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2020-08-29 22:11:55.741172', '1', 'Clientes object (1)', 1, '[{"added": {}}]', 8, 1),
	(2, '2020-08-29 23:09:00.803665', '2', 'Maria', 1, '[{"added": {}}]', 8, 1),
	(3, '2020-08-30 01:20:40.073567', '1', 'el nombres es camisa la se seccion es ropa y el precio es 50', 1, '[{"added": {}}]', 7, 1),
	(4, '2020-08-30 01:35:59.036064', '2', 'el nombres es Teclado la se seccion es Tecnologia y el precio es 10', 1, '[{"added": {}}]', 7, 1),
	(5, '2020-08-30 01:36:24.528054', '3', 'el nombres es Impresora la se seccion es Tecnologia y el precio es 200', 1, '[{"added": {}}]', 7, 1),
	(6, '2020-09-01 22:22:50.117865', '2', 'mariadb', 1, '[{"added": {}}]', 4, 1),
	(7, '2020-09-01 22:33:11.520032', '2', 'mariadb', 2, '[{"changed": {"fields": ["First name", "Last name", "Email address"]}}]', 4, 1),
	(8, '2020-09-01 22:34:13.931430', '2', 'mariadb', 2, '[{"changed": {"fields": ["Staff status"]}}]', 4, 1),
	(9, '2020-09-01 22:36:43.863016', '2', 'mariadb', 2, '[{"changed": {"fields": ["User permissions"]}}]', 4, 1),
	(10, '2020-09-01 22:40:52.299879', '1', 'Mdo. clientes pedidos', 1, '[{"added": {}}]', 3, 1),
	(11, '2020-09-01 22:41:45.319688', '2', 'mariadb', 2, '[{"changed": {"fields": ["Groups", "User permissions"]}}]', 4, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Volcando estructura para tabla articulosclientes.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla articulosclientes.django_content_type: ~9 rows (aproximadamente)
DELETE FROM `django_content_type`;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(7, 'gestionPedidos', 'articulos'),
	(8, 'gestionPedidos', 'clientes'),
	(9, 'gestionPedidos', 'pedidos'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Volcando estructura para tabla articulosclientes.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla articulosclientes.django_migrations: ~21 rows (aproximadamente)
DELETE FROM `django_migrations`;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2020-08-26 03:37:49.579234'),
	(2, 'auth', '0001_initial', '2020-08-26 03:37:52.229381'),
	(3, 'admin', '0001_initial', '2020-08-26 03:38:00.760911'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2020-08-26 03:38:02.511483'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-26 03:38:02.589183'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2020-08-26 03:38:03.456565'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2020-08-26 03:38:04.497914'),
	(8, 'auth', '0003_alter_user_email_max_length', '2020-08-26 03:38:05.570142'),
	(9, 'auth', '0004_alter_user_username_opts', '2020-08-26 03:38:05.721098'),
	(10, 'auth', '0005_alter_user_last_login_null', '2020-08-26 03:38:06.477126'),
	(11, 'auth', '0006_require_contenttypes_0002', '2020-08-26 03:38:06.532068'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2020-08-26 03:38:06.588030'),
	(13, 'auth', '0008_alter_user_username_max_length', '2020-08-26 03:38:06.815723'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2020-08-26 03:38:07.032108'),
	(15, 'auth', '0010_alter_group_name_max_length', '2020-08-26 03:38:08.252303'),
	(16, 'auth', '0011_update_proxy_permissions', '2020-08-26 03:38:08.365257'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2020-08-26 03:38:08.606160'),
	(18, 'gestionPedidos', '0001_initial', '2020-08-26 03:38:11.012569'),
	(19, 'sessions', '0001_initial', '2020-08-26 03:38:11.400848'),
	(20, 'gestionPedidos', '0002_auto_20200828_1806', '2020-08-29 19:12:09.158600'),
	(21, 'gestionPedidos', '0002_auto_20200829_1717', '2020-08-29 22:17:29.978764');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Volcando estructura para tabla articulosclientes.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla articulosclientes.django_session: ~2 rows (aproximadamente)
DELETE FROM `django_session`;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('a6rekoox56tj19b7xmcgax3ipvzlqsac', '.eJxVjDsOwjAQBe_iGln-rjeU9JzBsr0bHECxFCcV4u4QKQW0b2beS8S0rTVunZc4kTgLI06_W07lwfMO6J7mW5OlzesyZbkr8qBdXhvx83K4fwc19fqtOVg_OmstYQhqYFIQcERVyGSNHoF4cNZhIZdhYAPGo9IaLDoDwEa8P7-7NnQ:1kDF05:nrJo0CMjIt6sV1BkDJJRP38ogG7HH8wGtxOBWKpi4kc', '2020-09-15 22:43:37.020219'),
	('k8zy1b24n7ioiaeqt1bi5tc4jws2ndl9', 'OGEyYWE4ODA5ZWQwN2NjNTFmMDc3M2QyYzA4ZDE0Mjk3MzA4NzhkNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjAxNTdkZTJhNmQ2NmZmNjgxNmVjOTI4YmI3OTVmZTRmMThmNGZmIn0=', '2020-09-13 01:19:30.146814');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Volcando estructura para tabla articulosclientes.gestionpedidos_articulos
CREATE TABLE IF NOT EXISTS `gestionpedidos_articulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `seccion` varchar(20) NOT NULL,
  `precio` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla articulosclientes.gestionpedidos_articulos: ~3 rows (aproximadamente)
DELETE FROM `gestionpedidos_articulos`;
/*!40000 ALTER TABLE `gestionpedidos_articulos` DISABLE KEYS */;
INSERT INTO `gestionpedidos_articulos` (`id`, `nombre`, `seccion`, `precio`) VALUES
	(1, 'camisa', 'ropa', 50),
	(2, 'Teclado', 'Tecnologia', 10),
	(3, 'Impresora', 'Tecnologia', 200);
/*!40000 ALTER TABLE `gestionpedidos_articulos` ENABLE KEYS */;

-- Volcando estructura para tabla articulosclientes.gestionpedidos_clientes
CREATE TABLE IF NOT EXISTS `gestionpedidos_clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `tfno` varchar(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla articulosclientes.gestionpedidos_clientes: ~2 rows (aproximadamente)
DELETE FROM `gestionpedidos_clientes`;
/*!40000 ALTER TABLE `gestionpedidos_clientes` DISABLE KEYS */;
INSERT INTO `gestionpedidos_clientes` (`id`, `nombre`, `direccion`, `email`, `tfno`) VALUES
	(1, 'Yuliza', 'Arequipa', 'yuliza@gmail.com', '9999999'),
	(2, 'Maria', 'Isabell', 'maria@gmail.com', '6969696');
/*!40000 ALTER TABLE `gestionpedidos_clientes` ENABLE KEYS */;

-- Volcando estructura para tabla articulosclientes.gestionpedidos_pedidos
CREATE TABLE IF NOT EXISTS `gestionpedidos_pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `entregado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla articulosclientes.gestionpedidos_pedidos: ~0 rows (aproximadamente)
DELETE FROM `gestionpedidos_pedidos`;
/*!40000 ALTER TABLE `gestionpedidos_pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gestionpedidos_pedidos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
