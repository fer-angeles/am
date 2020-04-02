/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : am

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 02/04/2020 13:52:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_04_02_071113_create_user_type_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_04_02_140006_create_noticias_table', 1);
INSERT INTO `migrations` VALUES (6, '2020_04_02_141252_create_noticias_type_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_04_02_193756_add_keys_tables', 2);
COMMIT;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `new_type` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abstract` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_new_type_foreign` (`new_type`),
  CONSTRAINT `news_new_type_foreign` FOREIGN KEY (`new_type`) REFERENCES `news_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
BEGIN;
INSERT INTO `news` VALUES (1, 1, 'Piden a Iglesias difundir mensaje para que fieles permanezcan en sus casas', '&lt;p&gt;Este llamado se dio un día después de que el &lt;strong&gt;Consejo de Salubridad General &lt;/strong&gt;declaró la emergencia sanitaria y con ello la suspensión de actividades no esenciales.&lt;/p&gt;', '&lt;h1&gt;Informaci&oacute;n veraz&lt;/h1&gt;&lt;p&gt;Para contribuir a este objetivo, Gobernaci&oacute;n tambi&eacute;n pidi&oacute; difundir informaci&oacute;n veraz, evitando discursos que confronten, confundan y dividan a la poblaci&oacute;n.&lt;/p&gt;', 'piden_a_iglesias_difundir_mensaje_para_que_fieles_permanezcan_en_sus_casas', 'piden_a_iglesias_difundir_mensaje_para_que_fieles_permanezcan_en_sus_casas.jpg', '2020-04-02 15:32:25', '2020-04-02 15:32:25');
INSERT INTO `news` VALUES (2, 1, 'México pide a sus migrantes en Estados Unidos no regresar de momento', '&lt;p&gt;La Secretaría de Relaciones Exteriores pidió a los mexicanos que residen de manera permanente en el extranjero, en especial en Estados Unidos, “evitar todo tipo de desplazamiento internacional, incluido México”.&lt;/p&gt;', '&lt;p&gt;&lt;strong&gt;CDMX&lt;/strong&gt;.- &lt;strong&gt;M&eacute;xico &lt;/strong&gt;generalmente recibe con los brazos abiertos a sus &lt;strong&gt;migrantes &lt;/strong&gt;que viven en &lt;strong&gt;Estados Unidos&lt;/strong&gt;, en parte porque los d&oacute;lares que env&iacute;an a sus hogares sostienen la econom&iacute;a. Sin embargo, ahora el gobierno los ha exhortado a que no vengan debido al peligro de que propaguen el &lt;strong&gt;coronavirus&lt;/strong&gt;.&lt;/p&gt;', 'mexico_pide_a_sus_migrantes_en_estados_unidos_no_regresar_de_momento', 'ap20093140122968_1.jpg', '2020-04-02 15:51:17', '2020-04-02 15:51:17');
INSERT INTO `news` VALUES (3, 1, 'Ciudad en China prohíbe comer animales silvestres para evitar nuevas pandemias', '&lt;p&gt;Además de víboras, lagartos y otros animales silvestres, también se prohíbe por motivos humanitarios el consumo de carne de perro y gato, que por mucho tiempo ha sido una especialidad local.&lt;/p&gt;', '&lt;p&gt;&lt;strong&gt;Beijing&lt;/strong&gt;.- La ciudad china de &lt;strong&gt;Shenzhen &lt;/strong&gt;ha prohibido comer animales silvestres con el fin de impedir futuras epidemias como la actual pandemia de &lt;strong&gt;COVID-19&lt;/strong&gt;.&lt;/p&gt;&lt;p&gt;El origen del virus, detectado por primera vez en diciembre en la ciudad de &lt;strong&gt;Wuhan&lt;/strong&gt;, en el centro de &lt;strong&gt;China&lt;/strong&gt;, fue rastreado hasta un mercado de alimentos local donde se vend&iacute;an animales silvestres tales como pangolines y civetas, adem&aacute;s de alimentos m&aacute;s convencionales como pollo y pescado.&lt;/p&gt;', 'mexico_pide_a_sus_migrantes_en_estados_unidos_no_regresar_de_momento', 'ap20093099490970_1.jpg_1719194250.webp', '2020-04-02 16:08:05', '2020-04-02 16:08:05');
INSERT INTO `news` VALUES (4, 1, 'Confirman a 2 médicos con Covid-19 en Aguascalientes', '&lt;p&gt;El titular del ISSEA, Miguel Ángel Piza Jiménez, mencionó que también se tienen otros casos sospechosos entre personal médico.&lt;/p&gt;', '&lt;p&gt;&lt;strong&gt;Aguascalientes&lt;/strong&gt;.- El&lt;strong&gt; Instituto de Servicios de Salud del Estado (ISSEA)&lt;/strong&gt; confirm&oacute; que hay dos m&eacute;dicos con &lt;strong&gt;Covid-19 en Aguascalientes&lt;/strong&gt;; uno pertenece al sector salud y otro a un hospital privado.&lt;/p&gt;&lt;p&gt;El titular del &lt;strong&gt;ISSEA&lt;/strong&gt;, &lt;strong&gt;Miguel &Aacute;ngel Piza Jim&eacute;nez&lt;/strong&gt;, mencion&oacute; que tambi&eacute;n se tienen otros casos sospechosos entre personal m&eacute;dico.&lt;/p&gt;', 'Confirman-a-2-medicos-con-Covid-19-en-Aguascalientes', 'tunel_1.jpg_1172152852.webp', '2020-04-02 16:08:05', '2020-04-02 16:08:05');
INSERT INTO `news` VALUES (5, 1, 'Supera Italia 13 mil fallecidos, con una jornada de 700 muertos', '&lt;p&gt;En las última 24 horas, el Gobierno italiano reporta 3 mil nuevos contagios, y extiende al 13 de abril las medidas restrictivas.&lt;/p&gt;', '&lt;p&gt;&lt;strong&gt;Roma, Italia.- &lt;/strong&gt;Luego de una peque&ntilde;a alegr&iacute;a al tener miles de recuperados, &lt;span style=&quot;background-color:#1abc9c;&quot;&gt;Italia vuelve a caer&lt;/span&gt;.&lt;/p&gt;&lt;p&gt;En las &uacute;ltimas 24 horas,&amp;nbsp;&lt;span style=&quot;background-color:#1abc9c;&quot;&gt;casi 3 mil nuevos contagios del nuevo &lt;/span&gt;&lt;span style=&quot;background-color:#1abc9c;&quot;&gt;coronavirus&lt;/span&gt;&lt;span style=&quot;background-color:#1abc9c;&quot;&gt;&amp;nbsp;se reportaron&lt;/span&gt;, adem&aacute;s de m&aacute;s de que 700 personas fallecieron, lo que lleva a &lt;span style=&quot;background-color:#1abc9c;&quot;&gt;superar el umbral de 13 mil v&iacute;ctimas mortales&lt;/span&gt;, seg&uacute;n los &uacute;ltimos datos dados a conocer hoy por el jefe de Protecci&oacute;n Civil, &lt;strong&gt;Angelo Borrelli&lt;/strong&gt;.&lt;/p&gt;', 'Supera-Italia-13-mil-fallecidos-con-una-jornada-de-700-muertos', 'supera_italia_13_mil_fallecidosx_con_una_jornada_de_700_muertos.jpg_63530811.webp', '2020-04-02 16:08:05', '2020-04-02 16:08:05');
COMMIT;

-- ----------------------------
-- Table structure for news_type
-- ----------------------------
DROP TABLE IF EXISTS `news_type`;
CREATE TABLE `news_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of news_type
-- ----------------------------
BEGIN;
INSERT INTO `news_type` VALUES (1, 'Salud', '2020-04-02 14:40:46', '2020-04-02 14:40:46');
INSERT INTO `news_type` VALUES (2, 'Politica', '2020-04-02 14:40:46', '2020-04-02 14:40:46');
INSERT INTO `news_type` VALUES (3, 'Finanzas', '2020-04-02 14:40:46', '2020-04-02 14:40:46');
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for user_type
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_type
-- ----------------------------
BEGIN;
INSERT INTO `user_type` VALUES (1, 'root', '2020-04-02 14:40:46', '2020-04-02 14:40:46');
INSERT INTO `user_type` VALUES (2, 'admin', '2020-04-02 14:40:46', '2020-04-02 14:40:46');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `user_type` bigint(20) unsigned NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_user_type_foreign` (`user_type`),
  CONSTRAINT `users_user_type_foreign` FOREIGN KEY (`user_type`) REFERENCES `user_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'fernando', 'fer@fer.com', NULL, 1, '$2y$10$MlJNhDFjJQ6.KOiAMEyzLen3nE6s0ODU.3RjuCBWfnSQtdYJEsine', NULL, '2020-04-02 14:40:46', '2020-04-02 14:40:46');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
