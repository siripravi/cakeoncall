-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2023 at 07:35 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luyashopbs4`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_auth`
--

CREATE TABLE `admin_auth` (
  `id` int(11) NOT NULL,
  `alias_name` varchar(60) NOT NULL,
  `module_name` varchar(60) NOT NULL,
  `is_crud` tinyint(1) DEFAULT 0,
  `route` varchar(200) DEFAULT NULL,
  `api` varchar(200) DEFAULT NULL,
  `pool` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_auth`
--

INSERT INTO `admin_auth` (`id`, `alias_name`, `module_name`, `is_crud`, `route`, `api`, `pool`) VALUES
(1, 'module_permission_page_blocks', 'cmsadmin', 1, NULL, 'api-cms-navitempageblockitem', NULL),
(2, 'module_permission_page', 'cmsadmin', 1, NULL, 'api-cms-navitempage', NULL),
(3, 'menu_group_item_env_websites', 'cmsadmin', 1, NULL, 'api-cms-website', NULL),
(4, 'menu_group_item_env_layouts', 'cmsadmin', 1, NULL, 'api-cms-layout', NULL),
(5, 'menu_group_item_env_themes', 'cmsadmin', 1, NULL, 'api-cms-theme', NULL),
(6, 'menu_group_item_env_container', 'cmsadmin', 1, NULL, 'api-cms-navcontainer', NULL),
(7, 'menu_group_item_elements_group', 'cmsadmin', 1, NULL, 'api-cms-blockgroup', NULL),
(8, 'menu_group_item_elements_blocks', 'cmsadmin', 1, NULL, 'api-cms-block', NULL),
(9, 'menu_group_item_env_redirections', 'cmsadmin', 1, NULL, 'api-cms-redirect', NULL),
(10, 'menu_group_protocol_model_event_logger', 'cmsadmin', 1, NULL, 'api-cms-log', NULL),
(11, 'module_permission_add_new_page', 'cmsadmin', 0, 'cmsadmin/page/create', NULL, NULL),
(12, 'module_permission_update_pages', 'cmsadmin', 0, 'cmsadmin/page/update', NULL, NULL),
(13, 'module_permission_delete_pages', 'cmsadmin', 0, 'cmsadmin/page/delete', NULL, NULL),
(14, 'module_permission_edit_drafts', 'cmsadmin', 0, 'cmsadmin/page/drafts', NULL, NULL),
(15, 'menu_group_item_env_config', 'cmsadmin', 0, 'cmsadmin/config/index', NULL, NULL),
(16, 'menu_node_cms', 'cmsadmin', 0, 'cmsadmin/default/index', NULL, NULL),
(17, 'menu_group_item_env_permission', 'cmsadmin', 0, 'cmsadmin/permission/index', NULL, NULL),
(18, 'menu_access_item_user', 'admin', 1, NULL, 'api-admin-user', NULL),
(19, 'menu_access_item_apiuser', 'admin', 1, NULL, 'api-admin-apiuser', NULL),
(20, 'menu_access_item_group', 'admin', 1, NULL, 'api-admin-group', NULL),
(21, 'menu_system_item_config', 'admin', 1, NULL, 'api-admin-config', NULL),
(22, 'menu_system_item_language', 'admin', 1, NULL, 'api-admin-lang', NULL),
(23, 'menu_system_item_property', 'admin', 1, NULL, 'api-admin-property', NULL),
(24, 'menu_system_item_tags', 'admin', 1, NULL, 'api-admin-tag', NULL),
(25, 'menu_system_queue', 'admin', 1, NULL, 'api-admin-queuelog', NULL),
(26, 'menu_system_queue_errors', 'admin', 1, NULL, 'api-admin-queuelogerror', NULL),
(27, 'menu_system_logger', 'admin', 1, NULL, 'api-admin-logger', NULL),
(28, 'menu_system_model_event_log', 'admin', 1, NULL, 'api-admin-ngrestlog', NULL),
(29, 'menu_group_contentproxy_machines', 'admin', 1, NULL, 'api-admin-proxymachine', NULL),
(30, 'menu_group_contentproxy_builds', 'admin', 1, NULL, 'api-admin-proxybuild', NULL),
(31, 'menu_images_item_images', 'admin', 1, NULL, 'api-admin-storageimage', NULL),
(32, 'menu_images_item_filters', 'admin', 1, NULL, 'api-admin-filter', NULL),
(33, 'menu_images_item_effects', 'admin', 1, NULL, 'api-admin-effect', NULL),
(34, 'menu_node_filemanager', 'admin', 0, 'admin/storage/index', NULL, NULL),
(35, 'Groups', 'catalogadmin', 1, NULL, 'api-catalog-group', NULL),
(36, 'Products', 'catalogadmin', 1, NULL, 'api-catalog-product', NULL),
(37, 'Articles', 'catalogadmin', 1, NULL, 'api-catalog-article', NULL),
(38, 'Related', 'catalogadmin', 1, NULL, 'api-catalog-related', NULL),
(39, 'Prices', 'catalogadmin', 1, NULL, 'api-catalog-articleprice', NULL),
(40, 'Units', 'catalogadmin', 1, NULL, 'api-catalog-unit', NULL),
(41, 'Currencies', 'catalogadmin', 1, NULL, 'api-catalog-currency', NULL),
(42, 'Brands', 'catalogadmin', 1, NULL, 'api-catalog-brand', NULL),
(43, 'Features', 'catalogadmin', 1, NULL, 'api-catalog-feature', NULL),
(44, 'Values', 'catalogadmin', 1, NULL, 'api-catalog-value', NULL),
(45, 'album', 'galleryadmin', 1, NULL, 'api-gallery-album', NULL),
(46, 'cat', 'galleryadmin', 1, NULL, 'api-gallery-cat', NULL),
(47, 'Buyers', 'cartadmin', 1, NULL, 'api-cart-buyer', NULL),
(48, 'Orders', 'cartadmin', 1, NULL, 'api-cart-order', NULL),
(50, 'Delivery Methods', 'cartadmin', 1, NULL, 'api-cart-delivery', NULL),
(51, 'Payment Methods', 'cartadmin', 1, NULL, 'api-cart-payment', NULL),
(52, 'Order Product', 'cartadmin', 1, NULL, 'api-cart-orderproduct', NULL),
(53, 'Group Features', 'catalogadmin', 1, NULL, 'api-catalog-featuregroupref', NULL),
(54, 'Form', 'forms', 1, NULL, 'api-forms-form', NULL),
(55, 'Submission', 'forms', 1, NULL, 'api-forms-submission', NULL),
(56, 'Values', 'forms', 1, NULL, 'api-forms-submissionvalue', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_config`
--

CREATE TABLE `admin_config` (
  `name` varchar(80) NOT NULL,
  `value` text DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT 1,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_config`
--

INSERT INTO `admin_config` (`name`, `value`, `is_system`, `id`) VALUES
('100genericBlockUpdate', '1', 0, 1),
('last_import_timestamp', '1702617152', 0, 2),
('installer_vendor_timestamp', '1702616831', 0, 3),
('setup_command_timestamp', '1701455525', 0, 4),
('queue_timestamp', '1702703999', 0, 5),
('queueScheduler.1', '1', 1, 6),
('queueScheduler.2', '2', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `admin_group`
--

CREATE TABLE `admin_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_group`
--

INSERT INTO `admin_group` (`id`, `name`, `text`, `is_deleted`) VALUES
(1, 'Administrator', 'Administrator Accounts have full access to all Areas and can create, update and delete all data records.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_group_auth`
--

CREATE TABLE `admin_group_auth` (
  `group_id` int(11) DEFAULT NULL,
  `auth_id` int(11) DEFAULT NULL,
  `crud_create` smallint(4) DEFAULT NULL,
  `crud_update` smallint(4) DEFAULT NULL,
  `crud_delete` smallint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_group_auth`
--

INSERT INTO `admin_group_auth` (`group_id`, `auth_id`, `crud_create`, `crud_update`, `crud_delete`) VALUES
(1, 1, 1, 1, 1),
(1, 2, 1, 1, 1),
(1, 3, 1, 1, 1),
(1, 4, 1, 1, 1),
(1, 5, 1, 1, 1),
(1, 6, 1, 1, 1),
(1, 7, 1, 1, 1),
(1, 8, 1, 1, 1),
(1, 9, 1, 1, 1),
(1, 10, 1, 1, 1),
(1, 11, 1, 1, 1),
(1, 12, 1, 1, 1),
(1, 13, 1, 1, 1),
(1, 14, 1, 1, 1),
(1, 15, 1, 1, 1),
(1, 16, 1, 1, 1),
(1, 17, 1, 1, 1),
(1, 18, 1, 1, 1),
(1, 19, 1, 1, 1),
(1, 20, 1, 1, 1),
(1, 21, 1, 1, 1),
(1, 22, 1, 1, 1),
(1, 23, 1, 1, 1),
(1, 24, 1, 1, 1),
(1, 25, 1, 1, 1),
(1, 26, 1, 1, 1),
(1, 27, 1, 1, 1),
(1, 28, 1, 1, 1),
(1, 29, 1, 1, 1),
(1, 30, 1, 1, 1),
(1, 31, 1, 1, 1),
(1, 32, 1, 1, 1),
(1, 33, 1, 1, 1),
(1, 34, 1, 1, 1),
(1, 35, 1, 1, 1),
(1, 36, 1, 1, 1),
(1, 37, 1, 1, 1),
(1, 38, 1, 1, 1),
(1, 39, 1, 1, 1),
(1, 40, 1, 1, 1),
(1, 41, 1, 1, 1),
(1, 42, 1, 1, 1),
(1, 43, 1, 1, 1),
(1, 44, 1, 1, 1),
(1, 45, 1, 1, 1),
(1, 46, 1, 1, 1),
(1, 47, 1, 1, 1),
(1, 48, 1, 1, 1),
(1, 50, 1, 1, 1),
(1, 51, 1, 1, 1),
(1, 52, 1, 1, 1),
(1, 53, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_lang`
--

CREATE TABLE `admin_lang` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_code` varchar(15) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_lang`
--

INSERT INTO `admin_lang` (`id`, `name`, `short_code`, `is_default`, `is_deleted`) VALUES
(1, 'English', 'en', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_logger`
--

CREATE TABLE `admin_logger` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `message` text NOT NULL,
  `type` int(11) NOT NULL,
  `trace_file` varchar(255) DEFAULT NULL,
  `trace_line` varchar(255) DEFAULT NULL,
  `trace_function` varchar(255) DEFAULT NULL,
  `trace_function_args` text DEFAULT NULL,
  `group_identifier` varchar(255) DEFAULT NULL,
  `group_identifier_index` int(11) DEFAULT NULL,
  `get` text DEFAULT NULL,
  `post` text DEFAULT NULL,
  `session` text DEFAULT NULL,
  `server` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_ngrest_log`
--

CREATE TABLE `admin_ngrest_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp_create` int(11) NOT NULL,
  `route` varchar(80) NOT NULL,
  `api` varchar(80) NOT NULL,
  `is_update` tinyint(1) DEFAULT 0,
  `is_insert` tinyint(1) DEFAULT 0,
  `attributes_json` text NOT NULL,
  `attributes_diff_json` text DEFAULT NULL,
  `pk_value` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_ngrest_log`
--

INSERT INTO `admin_ngrest_log` (`id`, `user_id`, `timestamp_create`, `route`, `api`, `is_update`, `is_insert`, `attributes_json`, `attributes_diff_json`, `pk_value`, `table_name`, `is_delete`) VALUES
(2, 1, 1701456844, '', '', 0, 1, '{\"id\":1,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"background.jpg\",\"name_new\":\"background\",\"name_new_compound\":\"background_7479ffd7.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"1086924feaee626ef7f207457c629395\",\"hash_name\":\"7479ffd7\",\"upload_timestamp\":1701456844,\"file_size\":466161,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701456844}', NULL, '1', '{{%admin_storage_file}}', 0),
(3, 1, 1701456845, '', 'api-admin-storageimage', 0, 1, '{\"id\":1,\"file_id\":1,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701456845,\"updated_at\":1701456845}', NULL, '1', '{{%admin_storage_image}}', 0),
(4, 1, 1701456845, '', 'api-admin-storageimage', 0, 1, '{\"id\":2,\"file_id\":1,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":169,\"created_at\":1701456845,\"updated_at\":1701456845}', NULL, '2', '{{%admin_storage_image}}', 0),
(5, 1, 1701456848, '', 'api-admin-storageimage', 0, 1, '{\"id\":3,\"file_id\":1,\"filter_id\":0,\"resolution_width\":1366,\"resolution_height\":768,\"created_at\":1701456848,\"updated_at\":1701456848}', NULL, '3', '{{%admin_storage_image}}', 0),
(6, 1, 1701457143, '', 'api-admin-storageimage', 0, 1, '{\"id\":4,\"file_id\":1,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":768,\"created_at\":1701457143,\"updated_at\":1701457143}', NULL, '4', '{{%admin_storage_image}}', 0),
(7, 1, 1701457181, '', '', 0, 1, '{\"id\":2,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"wallpaper-header.jpg\",\"name_new\":\"wallpaper-header\",\"name_new_compound\":\"wallpaper-header_e7b10580.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"7838efc76470a910c820883a9039783d\",\"hash_name\":\"e7b10580\",\"upload_timestamp\":1701457181,\"file_size\":235479,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457181}', NULL, '2', '{{%admin_storage_file}}', 0),
(8, 1, 1701457182, '', 'api-admin-storageimage', 0, 1, '{\"id\":5,\"file_id\":2,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457182,\"updated_at\":1701457182}', NULL, '5', '{{%admin_storage_image}}', 0),
(9, 1, 1701457182, '', 'api-admin-storageimage', 0, 1, '{\"id\":6,\"file_id\":2,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":188,\"created_at\":1701457182,\"updated_at\":1701457182}', NULL, '6', '{{%admin_storage_image}}', 0),
(10, 1, 1701457183, '', 'api-admin-storageimage', 0, 1, '{\"id\":7,\"file_id\":2,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701457183,\"updated_at\":1701457183}', NULL, '7', '{{%admin_storage_image}}', 0),
(11, 1, 1701457200, '', 'api-admin-storageimage', 0, 1, '{\"id\":8,\"file_id\":2,\"filter_id\":0,\"resolution_width\":1280,\"resolution_height\":800,\"created_at\":1701457200,\"updated_at\":1701457200}', NULL, '8', '{{%admin_storage_image}}', 0),
(12, 1, 1701457266, '', '', 0, 1, '{\"id\":3,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"service.jpg\",\"name_new\":\"service\",\"name_new_compound\":\"service_f1d1a4a3.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"b334b1d9f070a2b268b54a4f21115257\",\"hash_name\":\"f1d1a4a3\",\"upload_timestamp\":1701457266,\"file_size\":81689,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457266}', NULL, '3', '{{%admin_storage_file}}', 0),
(13, 1, 1701457267, '', 'api-admin-storageimage', 0, 1, '{\"id\":9,\"file_id\":3,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457267,\"updated_at\":1701457267}', NULL, '9', '{{%admin_storage_image}}', 0),
(14, 1, 1701457267, '', 'api-admin-storageimage', 0, 1, '{\"id\":10,\"file_id\":3,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":169,\"created_at\":1701457267,\"updated_at\":1701457267}', NULL, '10', '{{%admin_storage_image}}', 0),
(15, 1, 1701457269, '', 'api-admin-storageimage', 0, 1, '{\"id\":11,\"file_id\":3,\"filter_id\":0,\"resolution_width\":1920,\"resolution_height\":1080,\"created_at\":1701457269,\"updated_at\":1701457269}', NULL, '11', '{{%admin_storage_image}}', 0),
(16, 1, 1701457348, '', '', 0, 1, '{\"id\":4,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"team-1.jpg\",\"name_new\":\"team-1\",\"name_new_compound\":\"team-1_bb8f120f.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"6d9188afa2250b3186066fb28a2be23c\",\"hash_name\":\"bb8f120f\",\"upload_timestamp\":1701457348,\"file_size\":17144,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457348}', NULL, '4', '{{%admin_storage_file}}', 0),
(17, 1, 1701457348, '', 'api-admin-storageimage', 0, 1, '{\"id\":12,\"file_id\":4,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457348,\"updated_at\":1701457348}', NULL, '12', '{{%admin_storage_image}}', 0),
(18, 1, 1701457348, '', 'api-admin-storageimage', 0, 1, '{\"id\":13,\"file_id\":4,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701457348,\"updated_at\":1701457348}', NULL, '13', '{{%admin_storage_image}}', 0),
(19, 1, 1701457350, '', 'api-admin-storageimage', 0, 1, '{\"id\":14,\"file_id\":4,\"filter_id\":0,\"resolution_width\":500,\"resolution_height\":500,\"created_at\":1701457350,\"updated_at\":1701457350}', NULL, '14', '{{%admin_storage_image}}', 0),
(20, 1, 1701457361, '', '', 0, 1, '{\"id\":5,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"team-2.jpg\",\"name_new\":\"team-2\",\"name_new_compound\":\"team-2_010f90e4.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"93d35053a4e35c26ce32682bdfd68b01\",\"hash_name\":\"010f90e4\",\"upload_timestamp\":1701457361,\"file_size\":12969,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457361}', NULL, '5', '{{%admin_storage_file}}', 0),
(21, 1, 1701457362, '', 'api-admin-storageimage', 0, 1, '{\"id\":15,\"file_id\":5,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457362,\"updated_at\":1701457362}', NULL, '15', '{{%admin_storage_image}}', 0),
(22, 1, 1701457362, '', 'api-admin-storageimage', 0, 1, '{\"id\":16,\"file_id\":5,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701457362,\"updated_at\":1701457362}', NULL, '16', '{{%admin_storage_image}}', 0),
(23, 1, 1701457364, '', 'api-admin-storageimage', 0, 1, '{\"id\":17,\"file_id\":5,\"filter_id\":0,\"resolution_width\":500,\"resolution_height\":500,\"created_at\":1701457364,\"updated_at\":1701457364}', NULL, '17', '{{%admin_storage_image}}', 0),
(24, 1, 1701457375, '', '', 0, 1, '{\"id\":6,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"team-3.jpg\",\"name_new\":\"team-3\",\"name_new_compound\":\"team-3_23b44480.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"30fcf193ba7939efa0d12c8843c22a0c\",\"hash_name\":\"23b44480\",\"upload_timestamp\":1701457375,\"file_size\":27060,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457375}', NULL, '6', '{{%admin_storage_file}}', 0),
(25, 1, 1701457376, '', 'api-admin-storageimage', 0, 1, '{\"id\":18,\"file_id\":6,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457376,\"updated_at\":1701457376}', NULL, '18', '{{%admin_storage_image}}', 0),
(26, 1, 1701457376, '', 'api-admin-storageimage', 0, 1, '{\"id\":19,\"file_id\":6,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701457376,\"updated_at\":1701457376}', NULL, '19', '{{%admin_storage_image}}', 0),
(27, 1, 1701457378, '', 'api-admin-storageimage', 0, 1, '{\"id\":20,\"file_id\":6,\"filter_id\":0,\"resolution_width\":500,\"resolution_height\":500,\"created_at\":1701457378,\"updated_at\":1701457378}', NULL, '20', '{{%admin_storage_image}}', 0),
(28, 1, 1701457536, '', '', 0, 1, '{\"id\":7,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"hero.jpg\",\"name_new\":\"hero\",\"name_new_compound\":\"hero_6609a51e.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"36c7d351382bff7ca147fe74f2c46079\",\"hash_name\":\"6609a51e\",\"upload_timestamp\":1701457536,\"file_size\":145988,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457536}', NULL, '7', '{{%admin_storage_file}}', 0),
(29, 1, 1701457537, '', 'api-admin-storageimage', 0, 1, '{\"id\":21,\"file_id\":7,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457537,\"updated_at\":1701457537}', NULL, '21', '{{%admin_storage_image}}', 0),
(30, 1, 1701457537, '', 'api-admin-storageimage', 0, 1, '{\"id\":22,\"file_id\":7,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":169,\"created_at\":1701457537,\"updated_at\":1701457537}', NULL, '22', '{{%admin_storage_image}}', 0),
(31, 1, 1701457540, '', 'api-admin-storageimage', 0, 1, '{\"id\":23,\"file_id\":7,\"filter_id\":0,\"resolution_width\":1920,\"resolution_height\":1080,\"created_at\":1701457540,\"updated_at\":1701457540}', NULL, '23', '{{%admin_storage_image}}', 0),
(32, 1, 1701457551, '', 'api-admin-storageimage', 0, 1, '{\"id\":24,\"file_id\":7,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701457551,\"updated_at\":1701457551}', NULL, '24', '{{%admin_storage_image}}', 0),
(33, 1, 1701457556, '', 'api-catalog-group', 1, 0, '{\"id\":8,\"parent_id\":0,\"name\":\"Cookies\",\"slug\":\"cookies\",\"cover_image_id\":24,\"images_list\":null,\"teaser\":\"crispy cookies\",\"text\":null,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"main\":1,\"position\":2,\"enabled\":1}', '{\"cover_image_id\":55,\"updated_at\":2147483647}', '8', 'catalog_group', 0),
(34, 1, 1701457670, '', '', 0, 1, '{\"id\":8,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"main.jpeg\",\"name_new\":\"main\",\"name_new_compound\":\"main_f02545c1.jpeg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpeg\",\"hash_file\":\"c2261b0c1be04193f40115ccea34a823\",\"hash_name\":\"f02545c1\",\"upload_timestamp\":1701457670,\"file_size\":226645,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457670}', NULL, '8', '{{%admin_storage_file}}', 0),
(35, 1, 1701457671, '', 'api-admin-storageimage', 0, 1, '{\"id\":25,\"file_id\":8,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457671,\"updated_at\":1701457671}', NULL, '25', '{{%admin_storage_image}}', 0),
(36, 1, 1701457671, '', 'api-admin-storageimage', 0, 1, '{\"id\":26,\"file_id\":8,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":123,\"created_at\":1701457671,\"updated_at\":1701457671}', NULL, '26', '{{%admin_storage_image}}', 0),
(37, 1, 1701457675, '', 'api-admin-storageimage', 0, 1, '{\"id\":27,\"file_id\":8,\"filter_id\":0,\"resolution_width\":1670,\"resolution_height\":680,\"created_at\":1701457675,\"updated_at\":1701457675}', NULL, '27', '{{%admin_storage_image}}', 0),
(38, 1, 1701457714, '', '', 0, 1, '{\"id\":9,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"cake-3.jpg\",\"name_new\":\"cake-3\",\"name_new_compound\":\"cake-3_6014e8ed.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"b8888758fc435b042437b13df1b90062\",\"hash_name\":\"6014e8ed\",\"upload_timestamp\":1701457714,\"file_size\":3756,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457714}', NULL, '9', '{{%admin_storage_file}}', 0),
(39, 1, 1701457714, '', 'api-admin-storageimage', 0, 1, '{\"id\":28,\"file_id\":9,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457714,\"updated_at\":1701457714}', NULL, '28', '{{%admin_storage_image}}', 0),
(40, 1, 1701457714, '', 'api-admin-storageimage', 0, 1, '{\"id\":29,\"file_id\":9,\"filter_id\":4,\"resolution_width\":150,\"resolution_height\":85,\"created_at\":1701457714,\"updated_at\":1701457714}', NULL, '29', '{{%admin_storage_image}}', 0),
(41, 1, 1701457721, '', 'api-admin-storageimage', 0, 1, '{\"id\":30,\"file_id\":9,\"filter_id\":0,\"resolution_width\":150,\"resolution_height\":85,\"created_at\":1701457721,\"updated_at\":1701457721}', NULL, '30', '{{%admin_storage_image}}', 0),
(42, 1, 1701457730, '', 'api-admin-storageimage', 0, 1, '{\"id\":31,\"file_id\":9,\"filter_id\":3,\"resolution_width\":150,\"resolution_height\":85,\"created_at\":1701457730,\"updated_at\":1701457730}', NULL, '31', '{{%admin_storage_image}}', 0),
(43, 1, 1701457770, '', '', 0, 1, '{\"id\":10,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"food.jpg\",\"name_new\":\"food\",\"name_new_compound\":\"food_d15c4c2c.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"e9f25f9e9daf2e355e7c44b5877c46ba\",\"hash_name\":\"d15c4c2c\",\"upload_timestamp\":1701457770,\"file_size\":1313772,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457770}', NULL, '10', '{{%admin_storage_file}}', 0),
(44, 1, 1701457771, '', 'api-admin-storageimage', 0, 1, '{\"id\":32,\"file_id\":10,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457771,\"updated_at\":1701457771}', NULL, '32', '{{%admin_storage_image}}', 0),
(45, 1, 1701457771, '', 'api-admin-storageimage', 0, 1, '{\"id\":33,\"file_id\":10,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":201,\"created_at\":1701457771,\"updated_at\":1701457771}', NULL, '33', '{{%admin_storage_image}}', 0),
(46, 1, 1701457774, '', 'api-admin-storageimage', 0, 1, '{\"id\":34,\"file_id\":10,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701457773,\"updated_at\":1701457773}', NULL, '34', '{{%admin_storage_image}}', 0),
(47, 1, 1701457781, '', 'api-catalog-group', 1, 0, '{\"id\":9,\"parent_id\":0,\"name\":\"Cupcakes\",\"slug\":\"cupcakes\",\"cover_image_id\":34,\"images_list\":null,\"teaser\":\"Cupcakes\",\"text\":\"Cupcakes\",\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"main\":1,\"position\":3,\"enabled\":1}', '{\"cover_image_id\":58,\"updated_at\":2147483647}', '9', 'catalog_group', 0),
(48, 1, 1701457852, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":34}', NULL, '9-34', 'catalog_article_value_ref', 0),
(49, 1, 1701457852, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":31}', NULL, '9-31', 'catalog_article_value_ref', 0),
(50, 1, 1701457852, '', 'api-catalog-article', 1, 0, '{\"id\":9,\"name\":\"{\\\"en\\\":\\\"Vanilla Cake with Butter Cream\\\"}\",\"product_id\":30,\"text\":\"It’s notoriously hard to find a really good, classic cupcake recipe. Many promise game changing techniques, but all too often they fall short.\\n\\nSo why should you believe me when I say this is the last Vanilla Cupcake recipe you’ll ever use?\",\"code\":\"{\\\"en\\\":\\\"VNL00234\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":3,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":2}', '{\"name\":\"Vanilla Cake with Butter Cream\",\"code\":\"VNL00234\",\"image_id\":49,\"updated_at\":2147483647}', '9', 'catalog_article', 0),
(51, 1, 1701457889, '', 'api-admin-storageimage', 0, 1, '{\"id\":35,\"file_id\":1,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701457889,\"updated_at\":1701457889}', NULL, '35', '{{%admin_storage_image}}', 0),
(52, 1, 1701457892, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":34}', NULL, '9-34', 'catalog_article_value_ref', 0),
(53, 1, 1701457892, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":31}', NULL, '9-31', 'catalog_article_value_ref', 0),
(54, 1, 1701457892, '', 'api-catalog-article', 1, 0, '{\"id\":9,\"name\":\"{\\\"en\\\":\\\"Vanilla Cake with Butter Cream\\\"}\",\"product_id\":30,\"text\":\"It’s notoriously hard to find a really good, classic cupcake recipe. Many promise game changing techniques, but all too often they fall short.\\n\\nSo why should you believe me when I say this is the last Vanilla Cupcake recipe you’ll ever use?\",\"code\":\"{\\\"en\\\":\\\"VNL00234\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":35,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":2}', '{\"name\":\"Vanilla Cake with Butter Cream\",\"code\":\"VNL00234\",\"image_id\":3,\"updated_at\":2147483647}', '9', 'catalog_article', 0),
(55, 1, 1701457918, '', '', 0, 1, '{\"id\":11,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"menu.jpg\",\"name_new\":\"menu\",\"name_new_compound\":\"menu_b554dca6.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"668ae73d7b9ead7c0594c4fdc228088b\",\"hash_name\":\"b554dca6\",\"upload_timestamp\":1701457917,\"file_size\":75218,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457917}', NULL, '11', '{{%admin_storage_file}}', 0),
(56, 1, 1701457918, '', 'api-admin-storageimage', 0, 1, '{\"id\":36,\"file_id\":11,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457918,\"updated_at\":1701457918}', NULL, '36', '{{%admin_storage_image}}', 0),
(57, 1, 1701457918, '', 'api-admin-storageimage', 0, 1, '{\"id\":37,\"file_id\":11,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":215,\"created_at\":1701457918,\"updated_at\":1701457918}', NULL, '37', '{{%admin_storage_image}}', 0),
(58, 1, 1701457922, '', 'api-admin-storageimage', 0, 1, '{\"id\":38,\"file_id\":11,\"filter_id\":0,\"resolution_width\":600,\"resolution_height\":430,\"created_at\":1701457922,\"updated_at\":1701457922}', NULL, '38', '{{%admin_storage_image}}', 0),
(59, 1, 1701457927, '', 'api-catalog-product', 1, 0, '{\"id\":30,\"name\":\"Vanilla Cake\",\"slug\":\"vanilla-cake\",\"brand_id\":3,\"cover_image_id\":38,\"images_list\":null,\"teaser\":null,\"text\":null,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"price_from\":254,\"view\":null,\"position\":0,\"enabled\":1}', '{\"cover_image_id\":46,\"updated_at\":2147483647}', '30', 'catalog_product', 0),
(60, 1, 1701457970, '', '', 0, 1, '{\"id\":12,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"cake-2.jpg\",\"name_new\":\"cake-2\",\"name_new_compound\":\"cake-2_c1a4c1ec.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"49af060e60bab77851c6f456472b1d92\",\"hash_name\":\"c1a4c1ec\",\"upload_timestamp\":1701457970,\"file_size\":3239,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701457970}', NULL, '12', '{{%admin_storage_file}}', 0),
(61, 1, 1701457970, '', 'api-admin-storageimage', 0, 1, '{\"id\":39,\"file_id\":12,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701457970,\"updated_at\":1701457970}', NULL, '39', '{{%admin_storage_image}}', 0),
(62, 1, 1701457970, '', 'api-admin-storageimage', 0, 1, '{\"id\":40,\"file_id\":12,\"filter_id\":4,\"resolution_width\":150,\"resolution_height\":85,\"created_at\":1701457970,\"updated_at\":1701457970}', NULL, '40', '{{%admin_storage_image}}', 0),
(63, 1, 1701457973, '', 'api-admin-storageimage', 0, 1, '{\"id\":41,\"file_id\":12,\"filter_id\":0,\"resolution_width\":150,\"resolution_height\":85,\"created_at\":1701457973,\"updated_at\":1701457973}', NULL, '41', '{{%admin_storage_image}}', 0),
(64, 1, 1701457978, '', 'api-admin-storageimage', 0, 1, '{\"id\":42,\"file_id\":12,\"filter_id\":3,\"resolution_width\":150,\"resolution_height\":85,\"created_at\":1701457978,\"updated_at\":1701457978}', NULL, '42', '{{%admin_storage_image}}', 0),
(65, 1, 1701457987, '', 'api-catalog-product', 1, 0, '{\"id\":29,\"name\":\"Butter Cookies\",\"slug\":\"butter-cookies\",\"brand_id\":null,\"cover_image_id\":42,\"images_list\":null,\"teaser\":null,\"text\":null,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"price_from\":25,\"view\":null,\"position\":0,\"enabled\":1}', '{\"cover_image_id\":63,\"updated_at\":2147483647}', '29', 'catalog_product', 0),
(66, 1, 1701458445, '', 'api-admin-storageimage', 0, 1, '{\"id\":43,\"file_id\":10,\"filter_id\":0,\"resolution_width\":2500,\"resolution_height\":1667,\"created_at\":1701458445,\"updated_at\":1701458445}', NULL, '43', '{{%admin_storage_image}}', 0),
(67, 1, 1701458452, '', 'api-admin-storageimage', 0, 1, '{\"id\":44,\"file_id\":10,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701458452,\"updated_at\":1701458452}', NULL, '44', '{{%admin_storage_image}}', 0),
(68, 1, 1701458452, '', 'api-gallery-cat', 0, 1, '{\"id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"cover_image_id\":44,\"description\":null}', NULL, '1', 'gallery_cat', 0),
(69, 1, 1701458499, '', 'api-admin-storageimage', 0, 1, '{\"id\":45,\"file_id\":9,\"filter_id\":1,\"resolution_width\":150,\"resolution_height\":85,\"created_at\":1701458499,\"updated_at\":1701458499}', NULL, '45', '{{%admin_storage_image}}', 0),
(70, 1, 1701458503, '', 'api-gallery-album', 0, 1, '{\"id\":1,\"cat_id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"description\":\"{\\\"en\\\":\\\"butter cookies\\\"}\",\"cover_image_id\":45,\"timestamp_create\":null,\"timestamp_update\":null,\"is_highlight\":\"0\",\"sort_index\":null}', NULL, '1', 'gallery_album', 0),
(71, 1, 1701458507, '', 'api-gallery-album', 1, 0, '{\"id\":1,\"cat_id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"description\":\"{\\\"en\\\":\\\"butter cookies\\\"}\",\"cover_image_id\":45,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":0}', '{\"is_highlight\":0}', '1', 'gallery_album', 0),
(72, 1, 1701458510, '', 'api-gallery-album', 1, 0, '{\"id\":1,\"cat_id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"description\":\"{\\\"en\\\":\\\"butter cookies\\\"}\",\"cover_image_id\":45,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":0}', '[]', '1', 'gallery_album', 0),
(73, 1, 1701458543, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":8,\"value_id\":35}', NULL, '8-35', 'catalog_article_value_ref', 0),
(74, 1, 1701458543, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":8,\"value_id\":31}', NULL, '8-31', 'catalog_article_value_ref', 0),
(75, 1, 1701458543, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":8,\"value_id\":32}', NULL, '8-32', 'catalog_article_value_ref', 0),
(76, 1, 1701458543, '', 'api-catalog-article', 1, 0, '{\"id\":8,\"name\":\"{\\\"en\\\":\\\"Creamy Butter Cookies\\\"}\",\"product_id\":29,\"text\":\"Buttor Cream biscuites topped with chocolate drops\",\"code\":\"{\\\"en\\\":\\\"BISC9034\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":3,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":1}', '{\"name\":\"Creamy Butter Cookies\",\"code\":\"BISC9034\",\"updated_at\":2147483647,\"album_id\":2}', '8', 'catalog_article', 0),
(77, 1, 1701484994, '', '', 0, 1, '{\"id\":13,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN3070.JPG\",\"name_new\":\"dscn3070\",\"name_new_compound\":\"dscn3070_47e227dc.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"f30c70c09564f0ce3368c23cb0124023\",\"hash_name\":\"47e227dc\",\"upload_timestamp\":1701484994,\"file_size\":2108333,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701484994}', NULL, '13', '{{%admin_storage_file}}', 0),
(78, 1, 1701484995, '', 'api-admin-storageimage', 0, 1, '{\"id\":46,\"file_id\":13,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701484995,\"updated_at\":1701484995}', NULL, '46', '{{%admin_storage_image}}', 0),
(79, 1, 1701484996, '', 'api-admin-storageimage', 0, 1, '{\"id\":47,\"file_id\":13,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701484996,\"updated_at\":1701484996}', NULL, '47', '{{%admin_storage_image}}', 0),
(80, 1, 1701485012, '', 'api-admin-storageimage', 0, 1, '{\"id\":48,\"file_id\":13,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701485012,\"updated_at\":1701485012}', NULL, '48', '{{%admin_storage_image}}', 0),
(81, 1, 1701485017, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":34}', NULL, '7-34', 'catalog_article_value_ref', 0),
(82, 1, 1701485017, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":31}', NULL, '7-31', 'catalog_article_value_ref', 0),
(83, 1, 1701485017, '', 'api-catalog-article', 1, 0, '{\"id\":7,\"name\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\",\"product_id\":28,\"text\":\"Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.\",\"code\":\"{\\\"en\\\":\\\"HONCHK0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":48,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":\"\"}', '{\"name\":\"Honey Chocolate Dip Cake\",\"code\":\"HONCHK0001\",\"image_id\":12,\"updated_at\":2147483647,\"album_id\":null}', '7', 'catalog_article', 0),
(84, 1, 1701485042, '', '', 0, 1, '{\"id\":14,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN4124.JPG\",\"name_new\":\"dscn4124\",\"name_new_compound\":\"dscn4124_46182e7d.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"ed6683a02340a1bc779813b559e29f42\",\"hash_name\":\"46182e7d\",\"upload_timestamp\":1701485042,\"file_size\":2090490,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701485042}', NULL, '14', '{{%admin_storage_file}}', 0),
(85, 1, 1701485043, '', 'api-admin-storageimage', 0, 1, '{\"id\":49,\"file_id\":14,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701485043,\"updated_at\":1701485043}', NULL, '49', '{{%admin_storage_image}}', 0),
(86, 1, 1701485043, '', 'api-admin-storageimage', 0, 1, '{\"id\":50,\"file_id\":14,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701485043,\"updated_at\":1701485043}', NULL, '50', '{{%admin_storage_image}}', 0),
(87, 1, 1701485052, '', 'api-admin-storageimage', 0, 1, '{\"id\":51,\"file_id\":14,\"filter_id\":0,\"resolution_width\":3648,\"resolution_height\":2736,\"created_at\":1701485052,\"updated_at\":1701485052}', NULL, '51', '{{%admin_storage_image}}', 0),
(88, 1, 1701485062, '', 'api-admin-storageimage', 0, 1, '{\"id\":52,\"file_id\":14,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701485062,\"updated_at\":1701485062}', NULL, '52', '{{%admin_storage_image}}', 0),
(89, 1, 1701485066, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":8,\"value_id\":35}', NULL, '8-35', 'catalog_article_value_ref', 0),
(90, 1, 1701485066, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":8,\"value_id\":31}', NULL, '8-31', 'catalog_article_value_ref', 0),
(91, 1, 1701485066, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":8,\"value_id\":32}', NULL, '8-32', 'catalog_article_value_ref', 0),
(92, 1, 1701485066, '', 'api-catalog-article', 1, 0, '{\"id\":8,\"name\":\"{\\\"en\\\":\\\"Creamy Butter Cookies\\\"}\",\"product_id\":29,\"text\":\"Buttor Cream biscuites topped with chocolate drops\",\"code\":\"{\\\"en\\\":\\\"BISC9034\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":52,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":1}', '{\"name\":\"Creamy Butter Cookies\",\"code\":\"BISC9034\",\"image_id\":3,\"updated_at\":2147483647}', '8', 'catalog_article', 0),
(93, 1, 1701485109, '', '', 0, 1, '{\"id\":15,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN4153.JPG\",\"name_new\":\"dscn4153\",\"name_new_compound\":\"dscn4153_c5de8c38.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"292ada33b0d6ab60ea4d71242693f07c\",\"hash_name\":\"c5de8c38\",\"upload_timestamp\":1701485109,\"file_size\":2145613,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701485109}', NULL, '15', '{{%admin_storage_file}}', 0),
(94, 1, 1701485109, '', '', 0, 1, '{\"id\":16,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN4155.JPG\",\"name_new\":\"dscn4155\",\"name_new_compound\":\"dscn4155_e8ea4cce.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"25a9bc68814e0b79bf2ea1c1bc99d188\",\"hash_name\":\"e8ea4cce\",\"upload_timestamp\":1701485109,\"file_size\":2210101,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701485109}', NULL, '16', '{{%admin_storage_file}}', 0),
(95, 1, 1701485110, '', '', 0, 1, '{\"id\":17,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN4157.JPG\",\"name_new\":\"dscn4157\",\"name_new_compound\":\"dscn4157_35d45367.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"779fdb08fad63908e200e54d75777a3c\",\"hash_name\":\"35d45367\",\"upload_timestamp\":1701485110,\"file_size\":2308614,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701485110}', NULL, '17', '{{%admin_storage_file}}', 0),
(96, 1, 1701485110, '', '', 0, 1, '{\"id\":18,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN4158.JPG\",\"name_new\":\"dscn4158\",\"name_new_compound\":\"dscn4158_1a876e32.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"7010c2b57610136ec685be79a97d7c8c\",\"hash_name\":\"1a876e32\",\"upload_timestamp\":1701485110,\"file_size\":2126838,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701485110}', NULL, '18', '{{%admin_storage_file}}', 0),
(97, 1, 1701485111, '', '', 0, 1, '{\"id\":19,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN4160.JPG\",\"name_new\":\"dscn4160\",\"name_new_compound\":\"dscn4160_06be5247.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"00bdc599cd5483719fb3477b3eda470f\",\"hash_name\":\"06be5247\",\"upload_timestamp\":1701485111,\"file_size\":2297791,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701485111}', NULL, '19', '{{%admin_storage_file}}', 0),
(98, 1, 1701485111, '', 'api-admin-storageimage', 0, 1, '{\"id\":53,\"file_id\":15,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701485111,\"updated_at\":1701485111}', NULL, '53', '{{%admin_storage_image}}', 0),
(99, 1, 1701485112, '', 'api-admin-storageimage', 0, 1, '{\"id\":54,\"file_id\":15,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701485112,\"updated_at\":1701485112}', NULL, '54', '{{%admin_storage_image}}', 0),
(100, 1, 1701485112, '', 'api-admin-storageimage', 0, 1, '{\"id\":55,\"file_id\":16,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701485112,\"updated_at\":1701485112}', NULL, '55', '{{%admin_storage_image}}', 0),
(101, 1, 1701485112, '', 'api-admin-storageimage', 0, 1, '{\"id\":56,\"file_id\":16,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701485112,\"updated_at\":1701485112}', NULL, '56', '{{%admin_storage_image}}', 0),
(102, 1, 1701485113, '', 'api-admin-storageimage', 0, 1, '{\"id\":57,\"file_id\":17,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701485113,\"updated_at\":1701485113}', NULL, '57', '{{%admin_storage_image}}', 0),
(103, 1, 1701485113, '', 'api-admin-storageimage', 0, 1, '{\"id\":58,\"file_id\":17,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701485113,\"updated_at\":1701485113}', NULL, '58', '{{%admin_storage_image}}', 0),
(104, 1, 1701485114, '', 'api-admin-storageimage', 0, 1, '{\"id\":59,\"file_id\":18,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701485114,\"updated_at\":1701485114}', NULL, '59', '{{%admin_storage_image}}', 0),
(105, 1, 1701485114, '', 'api-admin-storageimage', 0, 1, '{\"id\":60,\"file_id\":18,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701485114,\"updated_at\":1701485114}', NULL, '60', '{{%admin_storage_image}}', 0),
(106, 1, 1701485114, '', 'api-admin-storageimage', 0, 1, '{\"id\":61,\"file_id\":19,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701485114,\"updated_at\":1701485114}', NULL, '61', '{{%admin_storage_image}}', 0),
(107, 1, 1701485115, '', 'api-admin-storageimage', 0, 1, '{\"id\":62,\"file_id\":19,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701485115,\"updated_at\":1701485115}', NULL, '62', '{{%admin_storage_image}}', 0),
(108, 1, 1701485134, '', 'api-admin-storageimage', 0, 1, '{\"id\":63,\"file_id\":\"19\",\"filter_id\":0,\"resolution_width\":3648,\"resolution_height\":2736,\"created_at\":1701485134,\"updated_at\":1701485134}', NULL, '63', '{{%admin_storage_image}}', 0),
(109, 1, 1701485135, '', 'api-admin-storageimage', 0, 1, '{\"id\":64,\"file_id\":19,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701485135,\"updated_at\":1701485135}', NULL, '64', '{{%admin_storage_image}}', 0),
(110, 1, 1701485136, '', 'api-admin-storageimage', 0, 1, '{\"id\":65,\"file_id\":\"18\",\"filter_id\":0,\"resolution_width\":3648,\"resolution_height\":2736,\"created_at\":1701485136,\"updated_at\":1701485136}', NULL, '65', '{{%admin_storage_image}}', 0),
(111, 1, 1701485137, '', 'api-admin-storageimage', 0, 1, '{\"id\":66,\"file_id\":18,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701485137,\"updated_at\":1701485137}', NULL, '66', '{{%admin_storage_image}}', 0),
(112, 1, 1701485137, '', 'api-admin-storageimage', 0, 1, '{\"id\":67,\"file_id\":\"16\",\"filter_id\":0,\"resolution_width\":3648,\"resolution_height\":2736,\"created_at\":1701485137,\"updated_at\":1701485137}', NULL, '67', '{{%admin_storage_image}}', 0),
(113, 1, 1701485138, '', 'api-admin-storageimage', 0, 1, '{\"id\":68,\"file_id\":16,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701485138,\"updated_at\":1701485138}', NULL, '68', '{{%admin_storage_image}}', 0),
(114, 1, 1701485139, '', 'api-admin-storageimage', 0, 1, '{\"id\":69,\"file_id\":14,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701485139,\"updated_at\":1701485139}', NULL, '69', '{{%admin_storage_image}}', 0),
(115, 1, 1701485140, '', 'api-admin-storageimage', 0, 1, '{\"id\":70,\"file_id\":\"15\",\"filter_id\":0,\"resolution_width\":3648,\"resolution_height\":2736,\"created_at\":1701485140,\"updated_at\":1701485140}', NULL, '70', '{{%admin_storage_image}}', 0),
(116, 1, 1701485141, '', 'api-admin-storageimage', 0, 1, '{\"id\":71,\"file_id\":15,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701485141,\"updated_at\":1701485141}', NULL, '71', '{{%admin_storage_image}}', 0),
(117, 1, 1701485302, '', '', 0, 1, '{\"id\":20,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN3068.JPG\",\"name_new\":\"dscn3068\",\"name_new_compound\":\"dscn3068_fbae9c09.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"657133dccd3c13ff2feb1736554988ab\",\"hash_name\":\"fbae9c09\",\"upload_timestamp\":1701485302,\"file_size\":2042621,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701485302}', NULL, '20', '{{%admin_storage_file}}', 0),
(118, 1, 1701485303, '', 'api-admin-storageimage', 0, 1, '{\"id\":72,\"file_id\":20,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701485303,\"updated_at\":1701485303}', NULL, '72', '{{%admin_storage_image}}', 0),
(119, 1, 1701485303, '', 'api-admin-storageimage', 0, 1, '{\"id\":73,\"file_id\":20,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701485303,\"updated_at\":1701485303}', NULL, '73', '{{%admin_storage_image}}', 0),
(120, 1, 1701485323, '', 'api-admin-storageimage', 0, 1, '{\"id\":74,\"file_id\":20,\"filter_id\":0,\"resolution_width\":3648,\"resolution_height\":2736,\"created_at\":1701485323,\"updated_at\":1701485323}', NULL, '74', '{{%admin_storage_image}}', 0),
(121, 1, 1701485331, '', 'api-admin-storageimage', 0, 1, '{\"id\":75,\"file_id\":20,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701485331,\"updated_at\":1701485331}', NULL, '75', '{{%admin_storage_image}}', 0),
(122, 1, 1701485338, '', 'api-gallery-cat', 0, 1, '{\"id\":2,\"title\":\"{\\\"en\\\":\\\"Chocolate Cakes\\\"}\",\"cover_image_id\":75,\"description\":\"{\\\"en\\\":\\\"chocaolate cakes\\\"}\"}', NULL, '2', 'gallery_cat', 0),
(123, 1, 1701485368, '', 'api-gallery-cat', 1, 0, '{\"id\":2,\"title\":\"{\\\"en\\\":\\\"Chocolate Cakes\\\"}\",\"cover_image_id\":75,\"description\":\"{\\\"en\\\":\\\"chocaolate cakes\\\"}\"}', '{\"title\":\"Chocolate Cakes\",\"description\":\"chocaolate cakes\"}', '2', 'gallery_cat', 0),
(124, 1, 1701485401, '', 'api-gallery-cat', 1, 0, '{\"id\":2,\"title\":\"{\\\"en\\\":\\\"Chocolate Cakes\\\"}\",\"cover_image_id\":75,\"description\":\"{\\\"en\\\":\\\"chocaolate cakes\\\"}\"}', '{\"title\":\"Chocolate Cakes\",\"description\":\"chocaolate cakes\"}', '2', 'gallery_cat', 0),
(125, 1, 1701485421, '', 'api-gallery-cat', 1, 0, '{\"id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"cover_image_id\":44,\"description\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\"}', '{\"title\":\"Butter Cookies\",\"description\":\"\"}', '1', 'gallery_cat', 0),
(126, 1, 1701485461, '', '', 0, 1, '{\"id\":21,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN3069.JPG\",\"name_new\":\"dscn3069\",\"name_new_compound\":\"dscn3069_01058c7c.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"e1057e26681522dff10760de22b5a2ad\",\"hash_name\":\"01058c7c\",\"upload_timestamp\":1701485461,\"file_size\":2185481,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701485461}', NULL, '21', '{{%admin_storage_file}}', 0),
(127, 1, 1701485461, '', 'api-admin-storageimage', 0, 1, '{\"id\":76,\"file_id\":21,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701485461,\"updated_at\":1701485461}', NULL, '76', '{{%admin_storage_image}}', 0),
(128, 1, 1701485462, '', 'api-admin-storageimage', 0, 1, '{\"id\":77,\"file_id\":21,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701485462,\"updated_at\":1701485462}', NULL, '77', '{{%admin_storage_image}}', 0),
(129, 1, 1701485467, '', 'api-admin-storageimage', 0, 1, '{\"id\":78,\"file_id\":21,\"filter_id\":0,\"resolution_width\":3648,\"resolution_height\":2736,\"created_at\":1701485467,\"updated_at\":1701485467}', NULL, '78', '{{%admin_storage_image}}', 0),
(130, 1, 1701485472, '', 'api-admin-storageimage', 0, 1, '{\"id\":79,\"file_id\":21,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701485472,\"updated_at\":1701485472}', NULL, '79', '{{%admin_storage_image}}', 0),
(131, 1, 1701485473, '', 'api-gallery-cat', 0, 1, '{\"id\":3,\"title\":\"{\\\"en\\\":\\\"Vanilla Cakes\\\"}\",\"cover_image_id\":79,\"description\":\"{\\\"en\\\":\\\"vanilla cakes\\\"}\"}', NULL, '3', 'gallery_cat', 0),
(132, 1, 1701485906, '', 'api-admin-storageimage', 0, 1, '{\"id\":80,\"file_id\":20,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701485906,\"updated_at\":1701485906}', NULL, '80', '{{%admin_storage_image}}', 0),
(133, 1, 1701485915, '', 'api-gallery-album', 0, 1, '{\"id\":2,\"cat_id\":2,\"title\":\"{\\\"en\\\":\\\"Chocolate Cakes\\\"}\",\"description\":\"{\\\"en\\\":\\\"chocolate cakes\\\"}\",\"cover_image_id\":75,\"timestamp_create\":null,\"timestamp_update\":null,\"is_highlight\":\"1\",\"sort_index\":null}', NULL, '2', 'gallery_album', 0),
(134, 1, 1701485951, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":34}', NULL, '7-34', 'catalog_article_value_ref', 0),
(135, 1, 1701485951, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":31}', NULL, '7-31', 'catalog_article_value_ref', 0),
(136, 1, 1701485951, '', 'api-catalog-article', 1, 0, '{\"id\":7,\"name\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\",\"product_id\":28,\"text\":\"Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.\",\"code\":\"{\\\"en\\\":\\\"HONCHK0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":48,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":2}', '{\"name\":\"Honey Chocolate Dip Cake\",\"code\":\"HONCHK0001\",\"updated_at\":2147483647,\"album_id\":null}', '7', 'catalog_article', 0),
(137, 1, 1701486287, '', '', 0, 1, '{\"id\":22,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"DSCN3068.JPG\",\"name_new\":\"dscn3068\",\"name_new_compound\":\"dscn3068_47f4b343.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"657133dccd3c13ff2feb1736554988ab\",\"hash_name\":\"47f4b343\",\"upload_timestamp\":1701486287,\"file_size\":2042621,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701486287}', NULL, '22', '{{%admin_storage_file}}', 0),
(138, 1, 1701486287, '', 'api-admin-storageimage', 0, 1, '{\"id\":81,\"file_id\":22,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701486287,\"updated_at\":1701486287}', NULL, '81', '{{%admin_storage_image}}', 0),
(139, 1, 1701486288, '', 'api-admin-storageimage', 0, 1, '{\"id\":82,\"file_id\":22,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":225,\"created_at\":1701486288,\"updated_at\":1701486288}', NULL, '82', '{{%admin_storage_image}}', 0),
(140, 1, 1701486297, '', 'api-admin-storageimage', 0, 1, '{\"id\":83,\"file_id\":22,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701486297,\"updated_at\":1701486297}', NULL, '83', '{{%admin_storage_image}}', 0),
(141, 1, 1701486300, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":33}', NULL, '6-33', 'catalog_article_value_ref', 0),
(142, 1, 1701486300, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":34}', NULL, '6-34', 'catalog_article_value_ref', 0),
(143, 1, 1701486300, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":31}', NULL, '6-31', 'catalog_article_value_ref', 0),
(144, 1, 1701486300, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":32}', NULL, '6-32', 'catalog_article_value_ref', 0),
(145, 1, 1701486300, '', 'api-catalog-article', 1, 0, '{\"id\":6,\"name\":\"{\\\"en\\\":\\\"Brown Choclolate Cake\\\"}\",\"product_id\":28,\"text\":\"Cakes are frequently described according to their physical form. Cakes may be small and intended for individual consumption. Larger cakes may be made to be sliced and served as part of a meal or social function. Common shapes include: Bundt cakesCake dressCake ballsCake popsConical, such as the …\",\"code\":\"{\\\"en\\\":\\\"BROW0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":83,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":1}', '{\"name\":\"Brown Choclolate Cake\",\"code\":\"BROW0001\",\"image_id\":9,\"updated_at\":2147483647}', '6', 'catalog_article', 0),
(146, 1, 1701486513, '', '', 0, 1, '{\"id\":23,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"Copy of 969591_353205668136069_260131175_n.jpg\",\"name_new\":\"copy-of-969591-353205668136069-260131175-n\",\"name_new_compound\":\"copy-of-969591-353205668136069-260131175-n_dbc481c5.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"74d65b06032b56214913ff84cea7af37\",\"hash_name\":\"dbc481c5\",\"upload_timestamp\":1701486513,\"file_size\":82565,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701486513}', NULL, '23', '{{%admin_storage_file}}', 0),
(147, 1, 1701486514, '', 'api-admin-storageimage', 0, 1, '{\"id\":84,\"file_id\":23,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701486514,\"updated_at\":1701486514}', NULL, '84', '{{%admin_storage_image}}', 0),
(148, 1, 1701486514, '', 'api-admin-storageimage', 0, 1, '{\"id\":85,\"file_id\":23,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":438,\"created_at\":1701486514,\"updated_at\":1701486514}', NULL, '85', '{{%admin_storage_image}}', 0),
(149, 1, 1701486531, '', 'api-admin-storageimage', 0, 1, '{\"id\":86,\"file_id\":23,\"filter_id\":1,\"resolution_width\":565,\"resolution_height\":800,\"created_at\":1701486531,\"updated_at\":1701486531}', NULL, '86', '{{%admin_storage_image}}', 0),
(150, 1, 1701486534, '', 'api-catalog-group', 1, 0, '{\"id\":7,\"parent_id\":0,\"name\":\"Cakes\",\"slug\":\"cakes\",\"cover_image_id\":86,\"images_list\":null,\"teaser\":\"delicious cakes\",\"text\":\"A cake is a type of flour confection that is usually baked and made from flour, sugar, eggs, fat, a liquid, and a leavening agent, such as baking soda or baking powder. Cakes can be simple or elaborate and share features with desserts such as pastries, meringues, custards, and pies. The most common ingredients include flour, sugar, eggs, fat (such as butter, oil, or margarine), a liquid, and a leavening agent, such as baking soda or baking powder. Common additional ingredients include dried, candied, or fresh fruit, nuts, cocoa, and...\",\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"main\":1,\"position\":1,\"enabled\":1}', '{\"cover_image_id\":6,\"updated_at\":2147483647}', '7', 'catalog_group', 0);
INSERT INTO `admin_ngrest_log` (`id`, `user_id`, `timestamp_create`, `route`, `api`, `is_update`, `is_insert`, `attributes_json`, `attributes_diff_json`, `pk_value`, `table_name`, `is_delete`) VALUES
(151, 1, 1701486699, '', '', 0, 1, '{\"id\":24,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"Copy (2) of 8649_359303160859653_1471872640_n.jpg\",\"name_new\":\"copy-2-of-8649-359303160859653-1471872640-n\",\"name_new_compound\":\"copy-2-of-8649-359303160859653-1471872640-n_e0b31ae0.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"2163cbf388fbda54131c32581acda074\",\"hash_name\":\"e0b31ae0\",\"upload_timestamp\":1701486699,\"file_size\":28597,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701486699}', NULL, '24', '{{%admin_storage_file}}', 0),
(152, 1, 1701486699, '', 'api-admin-storageimage', 0, 1, '{\"id\":87,\"file_id\":24,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701486699,\"updated_at\":1701486699}', NULL, '87', '{{%admin_storage_image}}', 0),
(153, 1, 1701486699, '', 'api-admin-storageimage', 0, 1, '{\"id\":88,\"file_id\":24,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":400,\"created_at\":1701486699,\"updated_at\":1701486699}', NULL, '88', '{{%admin_storage_image}}', 0),
(154, 1, 1701486701, '', 'api-admin-storageimage', 0, 1, '{\"id\":89,\"file_id\":23,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701486701,\"updated_at\":1701486701}', NULL, '89', '{{%admin_storage_image}}', 0),
(155, 1, 1701486707, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":34}', NULL, '9-34', 'catalog_article_value_ref', 0),
(156, 1, 1701486707, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":31}', NULL, '9-31', 'catalog_article_value_ref', 0),
(157, 1, 1701486707, '', 'api-catalog-article', 1, 0, '{\"id\":9,\"name\":\"{\\\"en\\\":\\\"Vanilla Cake with Butter Cream\\\"}\",\"product_id\":30,\"text\":\"It’s notoriously hard to find a really good, classic cupcake recipe. Many promise game changing techniques, but all too often they fall short.\\n\\nSo why should you believe me when I say this is the last Vanilla Cupcake recipe you’ll ever use?\",\"code\":\"{\\\"en\\\":\\\"VNL00234\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":86,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":2}', '{\"name\":\"Vanilla Cake with Butter Cream\",\"code\":\"VNL00234\",\"image_id\":35,\"updated_at\":2147483647}', '9', 'catalog_article', 0),
(158, 1, 1701486736, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":34}', NULL, '9-34', 'catalog_article_value_ref', 0),
(159, 1, 1701486736, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":31}', NULL, '9-31', 'catalog_article_value_ref', 0),
(160, 1, 1701486736, '', 'api-catalog-article', 1, 0, '{\"id\":9,\"name\":\"{\\\"en\\\":\\\"Vanilla Cake with Butter Cream\\\"}\",\"product_id\":30,\"text\":\"It’s notoriously hard to find a really good, classic cupcake recipe. Many promise game changing techniques, but all too often they fall short.\\n\\nSo why should you believe me when I say this is the last Vanilla Cupcake recipe you’ll ever use?\",\"code\":\"{\\\"en\\\":\\\"VNL00234\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":86,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":1}', '{\"name\":\"Vanilla Cake with Butter Cream\",\"code\":\"VNL00234\",\"updated_at\":2147483647,\"album_id\":2}', '9', 'catalog_article', 0),
(161, 1, 1701525395, '', '', 0, 1, '{\"id\":25,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"Copy of 969930_380158885440747_788752854_n.jpg\",\"name_new\":\"copy-of-969930-380158885440747-788752854-n\",\"name_new_compound\":\"copy-of-969930-380158885440747-788752854-n_eb02ff2f.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"a56d320e84cc075ed6e9160acbf9097e\",\"hash_name\":\"eb02ff2f\",\"upload_timestamp\":1701525395,\"file_size\":30911,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701525395}', NULL, '25', '{{%admin_storage_file}}', 0),
(162, 1, 1701525396, '', 'api-admin-storageimage', 0, 1, '{\"id\":90,\"file_id\":25,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701525396,\"updated_at\":1701525396}', NULL, '90', '{{%admin_storage_image}}', 0),
(163, 1, 1701525396, '', 'api-admin-storageimage', 0, 1, '{\"id\":91,\"file_id\":25,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":201,\"created_at\":1701525396,\"updated_at\":1701525396}', NULL, '91', '{{%admin_storage_image}}', 0),
(164, 1, 1701525400, '', 'api-admin-storageimage', 0, 1, '{\"id\":92,\"file_id\":25,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701525400,\"updated_at\":1701525400}', NULL, '92', '{{%admin_storage_image}}', 0),
(165, 1, 1701525407, '', 'api-catalog-product', 1, 0, '{\"id\":29,\"name\":\"Butter Cookies\",\"slug\":\"butter-cookies\",\"brand_id\":null,\"cover_image_id\":92,\"images_list\":null,\"teaser\":null,\"text\":null,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"price_from\":25,\"view\":null,\"position\":0,\"enabled\":1}', '{\"cover_image_id\":42,\"updated_at\":2147483647}', '29', 'catalog_product', 0),
(166, 1, 1701529031, '', 'api-catalog-articleprice', 1, 0, '{\"article_id\":9,\"value_id\":\"32\",\"currency_id\":3,\"qty\":1,\"price\":1240,\"unit_id\":4}', '{\"value_id\":34,\"price\":1240}', '9-32-3-1-4', 'catalog_article_price', 0),
(167, 1, 1701529093, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":9,\"value_id\":32,\"currency_id\":3,\"qty\":0,\"price\":542,\"unit_id\":5}', NULL, '9-32-3-0-5', 'catalog_article_price', 0),
(168, 1, 1701529115, '', 'api-catalog-articleprice', 1, 0, '{\"article_id\":9,\"value_id\":32,\"currency_id\":3,\"qty\":1,\"price\":542,\"unit_id\":5}', '{\"qty\":0,\"price\":542}', '9-32-3-1-5', 'catalog_article_price', 0),
(169, 1, 1701569002, '', '', 0, 1, '{\"id\":26,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"cupcake (10).png\",\"name_new\":\"cupcake-10\",\"name_new_compound\":\"cupcake-10_cecb3953.png\",\"mime_type\":\"image/png\",\"extension\":\"png\",\"hash_file\":\"b947fe82bc713f8c891847f60382b966\",\"hash_name\":\"cecb3953\",\"upload_timestamp\":1701569002,\"file_size\":1112994,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701569002}', NULL, '26', '{{%admin_storage_file}}', 0),
(170, 1, 1701569003, '', 'api-admin-storageimage', 0, 1, '{\"id\":93,\"file_id\":26,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701569003,\"updated_at\":1701569003}', NULL, '93', '{{%admin_storage_image}}', 0),
(171, 1, 1701569003, '', 'api-admin-storageimage', 0, 1, '{\"id\":94,\"file_id\":26,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701569003,\"updated_at\":1701569003}', NULL, '94', '{{%admin_storage_image}}', 0),
(172, 1, 1701569007, '', 'api-admin-storageimage', 0, 1, '{\"id\":95,\"file_id\":26,\"filter_id\":0,\"resolution_width\":1000,\"resolution_height\":1000,\"created_at\":1701569007,\"updated_at\":1701569007}', NULL, '95', '{{%admin_storage_image}}', 0),
(173, 1, 1701664880, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":34}', NULL, '9-34', 'catalog_article_value_ref', 0),
(174, 1, 1701664880, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":31}', NULL, '9-31', 'catalog_article_value_ref', 0),
(175, 1, 1701664880, '', 'api-catalog-article', 1, 0, '{\"id\":9,\"name\":\"{\\\"en\\\":\\\"Vanilla Cake with Butter Cream\\\"}\",\"product_id\":30,\"text\":\"It’s notoriously hard to find a really good, classic cupcake recipe. Many promise game changing techniques, but all too often they fall short.\\n\\nSo why should you believe me when I say this is the last Vanilla Cupcake recipe you’ll ever use?\",\"code\":\"{\\\"en\\\":\\\"VNL00234\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":100,\"image_id\":86,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":1}', '{\"name\":\"Vanilla Cake with Butter Cream\",\"code\":\"VNL00234\",\"available\":1,\"updated_at\":2147483647}', '9', 'catalog_article', 0),
(176, 1, 1701671563, '', 'api-catalog-group', 1, 0, '{\"id\":7,\"parent_id\":0,\"name\":\"Cakes\",\"slug\":\"cakes\",\"cover_image_id\":86,\"images_list\":null,\"teaser\":\"delicious cakes\",\"text\":\"A cake is a type of flour confection that is usually baked and made from flour, sugar, eggs, fat, a liquid, and a leavening agent, such as baking soda or baking powder. Cakes can be simple or elaborate and share features with desserts such as pastries, meringues, custards, and pies. The most common ingredients include flour, sugar, eggs, fat (such as butter, oil, or margarine), a liquid, and a leavening agent, such as baking soda or baking powder. Common additional ingredients include dried, candied, or fresh fruit, nuts, cocoa, and...\",\"created_at\":2147483647,\"updated_at\":2147483647,\"main\":1,\"position\":1,\"enabled\":1}', '[]', '7', 'catalog_group', 0),
(177, 1, 1701672329, '', 'api-catalog-group', 1, 0, '{\"id\":9,\"parent_id\":\"\",\"name\":\"Cupcakes\",\"slug\":\"cupcakes\",\"cover_image_id\":34,\"images_list\":null,\"teaser\":\"Cupcakes\",\"text\":\"Cupcakes\",\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"main\":1,\"position\":3,\"enabled\":1}', '{\"parent_id\":0,\"updated_at\":2147483647}', '9', 'catalog_group', 0),
(178, 1, 1701675544, '', 'api-admin-storageimage', 0, 1, '{\"id\":96,\"file_id\":22,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701675544,\"updated_at\":1701675544}', NULL, '96', '{{%admin_storage_image}}', 0),
(179, 1, 1701675585, '', 'api-admin-storageimage', 0, 1, '{\"id\":97,\"file_id\":13,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701675585,\"updated_at\":1701675585}', NULL, '97', '{{%admin_storage_image}}', 0),
(180, 0, 1701685001, '', 'api-admin-storageimage', 0, 1, '{\"id\":98,\"file_id\":19,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701685001,\"updated_at\":1701685001}', NULL, '98', '{{%admin_storage_image}}', 0),
(181, 0, 1701685002, '', 'api-admin-storageimage', 0, 1, '{\"id\":99,\"file_id\":18,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701685002,\"updated_at\":1701685002}', NULL, '99', '{{%admin_storage_image}}', 0),
(182, 0, 1701685002, '', 'api-admin-storageimage', 0, 1, '{\"id\":100,\"file_id\":16,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701685002,\"updated_at\":1701685002}', NULL, '100', '{{%admin_storage_image}}', 0),
(183, 0, 1701685003, '', 'api-admin-storageimage', 0, 1, '{\"id\":101,\"file_id\":15,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1701685003,\"updated_at\":1701685003}', NULL, '101', '{{%admin_storage_image}}', 0),
(184, 0, 1701685090, '', 'api-admin-storageimage', 0, 1, '{\"id\":102,\"file_id\":19,\"filter_id\":2,\"resolution_width\":800,\"resolution_height\":600,\"created_at\":1701685090,\"updated_at\":1701685090}', NULL, '102', '{{%admin_storage_image}}', 0),
(185, 0, 1701685090, '', 'api-admin-storageimage', 0, 1, '{\"id\":103,\"file_id\":18,\"filter_id\":2,\"resolution_width\":800,\"resolution_height\":600,\"created_at\":1701685090,\"updated_at\":1701685090}', NULL, '103', '{{%admin_storage_image}}', 0),
(186, 0, 1701685091, '', 'api-admin-storageimage', 0, 1, '{\"id\":104,\"file_id\":16,\"filter_id\":2,\"resolution_width\":800,\"resolution_height\":600,\"created_at\":1701685091,\"updated_at\":1701685091}', NULL, '104', '{{%admin_storage_image}}', 0),
(187, 0, 1701685091, '', 'api-admin-storageimage', 0, 1, '{\"id\":105,\"file_id\":14,\"filter_id\":2,\"resolution_width\":800,\"resolution_height\":600,\"created_at\":1701685091,\"updated_at\":1701685091}', NULL, '105', '{{%admin_storage_image}}', 0),
(188, 0, 1701685092, '', 'api-admin-storageimage', 0, 1, '{\"id\":106,\"file_id\":15,\"filter_id\":2,\"resolution_width\":800,\"resolution_height\":600,\"created_at\":1701685092,\"updated_at\":1701685092}', NULL, '106', '{{%admin_storage_image}}', 0),
(189, 1, 1701831037, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":34}', NULL, '7-34', 'catalog_article_value_ref', 0),
(190, 1, 1701831037, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":31}', NULL, '7-31', 'catalog_article_value_ref', 0),
(191, 1, 1701831037, '', 'api-catalog-article', 1, 0, '{\"id\":7,\"name\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\",\"product_id\":28,\"text\":\"Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.\",\"code\":\"{\\\"en\\\":\\\"HONCHK0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":126,\"image_id\":48,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":2}', '{\"name\":\"Honey Chocolate Dip Cake\",\"code\":\"HONCHK0001\",\"available\":1,\"updated_at\":2147483647}', '7', 'catalog_article', 0),
(192, 1, 1701831152, '', '', 0, 1, '{\"id\":27,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"2.jpg\",\"name_new\":\"2\",\"name_new_compound\":\"2_4e02b7a5.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"eed6eeed1dc5bf1bc3cce28291fdc8f1\",\"hash_name\":\"4e02b7a5\",\"upload_timestamp\":1701831152,\"file_size\":40055,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701831152}', NULL, '27', '{{%admin_storage_file}}', 0),
(193, 1, 1701831152, '', 'api-admin-storageimage', 0, 1, '{\"id\":107,\"file_id\":27,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701831152,\"updated_at\":1701831152}', NULL, '107', '{{%admin_storage_image}}', 0),
(194, 1, 1701831152, '', 'api-admin-storageimage', 0, 1, '{\"id\":108,\"file_id\":27,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701831152,\"updated_at\":1701831152}', NULL, '108', '{{%admin_storage_image}}', 0),
(195, 1, 1701831156, '', 'api-admin-storageimage', 0, 1, '{\"id\":109,\"file_id\":27,\"filter_id\":0,\"resolution_width\":400,\"resolution_height\":400,\"created_at\":1701831156,\"updated_at\":1701831156}', NULL, '109', '{{%admin_storage_image}}', 0),
(196, 1, 1701831159, '', 'api-gallery-cat', 0, 1, '{\"id\":4,\"title\":\"{\\\"en\\\":\\\"Honey Chocolate Cake\\\"}\",\"cover_image_id\":109,\"description\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\"}', NULL, '4', 'gallery_cat', 0),
(197, 1, 1701831228, '', '', 0, 1, '{\"id\":28,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"1.jpg\",\"name_new\":\"1\",\"name_new_compound\":\"1_3b75a1e0.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"214d048bd79d7861146a4446f22e255a\",\"hash_name\":\"3b75a1e0\",\"upload_timestamp\":1701831227,\"file_size\":94066,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701831227}', NULL, '28', '{{%admin_storage_file}}', 0),
(198, 1, 1701831228, '', 'api-admin-storageimage', 0, 1, '{\"id\":110,\"file_id\":28,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701831228,\"updated_at\":1701831228}', NULL, '110', '{{%admin_storage_image}}', 0),
(199, 1, 1701831228, '', 'api-admin-storageimage', 0, 1, '{\"id\":111,\"file_id\":28,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":169,\"created_at\":1701831228,\"updated_at\":1701831228}', NULL, '111', '{{%admin_storage_image}}', 0),
(200, 1, 1701831236, '', 'api-admin-storageimage', 0, 1, '{\"id\":112,\"file_id\":28,\"filter_id\":0,\"resolution_width\":1280,\"resolution_height\":720,\"created_at\":1701831236,\"updated_at\":1701831236}', NULL, '112', '{{%admin_storage_image}}', 0),
(201, 1, 1701831254, '', 'api-admin-storageimage', 0, 1, '{\"id\":113,\"file_id\":28,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":720,\"created_at\":1701831254,\"updated_at\":1701831254}', NULL, '113', '{{%admin_storage_image}}', 0),
(202, 1, 1701831256, '', 'api-gallery-album', 0, 1, '{\"id\":3,\"cat_id\":4,\"title\":\"{\\\"en\\\":\\\"Honey Chocolate Cake\\\"}\",\"description\":\"{\\\"en\\\":\\\"Honey Chocolate Cakes are made with Honey and Chocolate\\\"}\",\"cover_image_id\":113,\"timestamp_create\":null,\"timestamp_update\":null,\"is_highlight\":\"1\",\"sort_index\":null}', NULL, '3', 'gallery_album', 0),
(203, 1, 1701831280, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":34}', NULL, '7-34', 'catalog_article_value_ref', 0),
(204, 1, 1701831280, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":31}', NULL, '7-31', 'catalog_article_value_ref', 0),
(205, 1, 1701831280, '', 'api-catalog-article', 1, 0, '{\"id\":7,\"name\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\",\"product_id\":28,\"text\":\"Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.\",\"code\":\"{\\\"en\\\":\\\"HONCHK0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":126,\"image_id\":48,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":3}', '{\"name\":\"Honey Chocolate Dip Cake\",\"code\":\"HONCHK0001\",\"updated_at\":2147483647,\"album_id\":2}', '7', 'catalog_article', 0),
(206, 1, 1701831395, '', '', 0, 1, '{\"id\":29,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"3.jpg\",\"name_new\":\"3\",\"name_new_compound\":\"3_d94b5339.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"ad6196a35bfbb197858915ab02c9c7e0\",\"hash_name\":\"d94b5339\",\"upload_timestamp\":1701831395,\"file_size\":32544,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1701831395}', NULL, '29', '{{%admin_storage_file}}', 0),
(207, 1, 1701831395, '', 'api-admin-storageimage', 0, 1, '{\"id\":114,\"file_id\":29,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1701831395,\"updated_at\":1701831395}', NULL, '114', '{{%admin_storage_image}}', 0),
(208, 1, 1701831395, '', 'api-admin-storageimage', 0, 1, '{\"id\":115,\"file_id\":29,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701831395,\"updated_at\":1701831395}', NULL, '115', '{{%admin_storage_image}}', 0),
(209, 1, 1701831408, '', 'api-admin-storageimage', 0, 1, '{\"id\":116,\"file_id\":24,\"filter_id\":1,\"resolution_width\":360,\"resolution_height\":480,\"created_at\":1701831408,\"updated_at\":1701831408}', NULL, '116', '{{%admin_storage_image}}', 0),
(210, 1, 1701831411, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":34}', NULL, '7-34', 'catalog_article_value_ref', 0),
(211, 1, 1701831411, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":31}', NULL, '7-31', 'catalog_article_value_ref', 0),
(212, 1, 1701831411, '', 'api-catalog-article', 1, 0, '{\"id\":7,\"name\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\",\"product_id\":28,\"text\":\"Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.\",\"code\":\"{\\\"en\\\":\\\"HONCHK0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":126,\"image_id\":116,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":3}', '{\"name\":\"Honey Chocolate Dip Cake\",\"code\":\"HONCHK0001\",\"image_id\":48,\"updated_at\":2147483647}', '7', 'catalog_article', 0),
(213, 1, 1701831420, '', 'api-admin-storageimage', 0, 1, '{\"id\":117,\"file_id\":24,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701831420,\"updated_at\":1701831420}', NULL, '117', '{{%admin_storage_image}}', 0),
(214, 1, 1701831497, '', 'api-catalog-product', 1, 0, '{\"id\":28,\"name\":\"Chocolate Cake\",\"slug\":\"chocolate-cake\",\"brand_id\":null,\"cover_image_id\":3,\"images_list\":null,\"teaser\":null,\"text\":null,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"price_from\":1250,\"view\":\"1\",\"position\":1,\"enabled\":1}', '{\"updated_at\":2147483647,\"price_from\":0,\"view\":null}', '28', 'catalog_product', 0),
(215, 1, 1701831543, '', 'api-catalog-product', 1, 0, '{\"id\":28,\"name\":\"Chocolate Cake\",\"slug\":\"chocolate-cake\",\"brand_id\":null,\"cover_image_id\":75,\"images_list\":null,\"teaser\":null,\"text\":null,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"price_from\":1250,\"view\":\"1\",\"position\":1,\"enabled\":1}', '{\"cover_image_id\":3,\"updated_at\":2147483647}', '28', 'catalog_product', 0),
(216, 1, 1701831696, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":34}', NULL, '7-34', 'catalog_article_value_ref', 0),
(217, 1, 1701831696, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":31}', NULL, '7-31', 'catalog_article_value_ref', 0),
(218, 1, 1701831696, '', 'api-catalog-article', 1, 0, '{\"id\":7,\"name\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\",\"product_id\":28,\"text\":\"Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.\",\"code\":\"{\\\"en\\\":\\\"HONCHK0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":126,\"image_id\":116,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":3}', '{\"name\":\"Honey Chocolate Dip Cake\",\"code\":\"HONCHK0001\",\"updated_at\":2147483647}', '7', 'catalog_article', 0),
(219, 1, 1701831784, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":33}', NULL, '6-33', 'catalog_article_value_ref', 0),
(220, 1, 1701831784, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":34}', NULL, '6-34', 'catalog_article_value_ref', 0),
(221, 1, 1701831784, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":31}', NULL, '6-31', 'catalog_article_value_ref', 0),
(222, 1, 1701831784, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":32}', NULL, '6-32', 'catalog_article_value_ref', 0),
(223, 1, 1701831784, '', 'api-catalog-article', 1, 0, '{\"id\":6,\"name\":\"{\\\"en\\\":\\\"Brown Choclolate Cake\\\"}\",\"product_id\":28,\"text\":\"Cakes are frequently described according to their physical form. Cakes may be small and intended for individual consumption. Larger cakes may be made to be sliced and served as part of a meal or social function. Common shapes include: Bundt cakesCake dressCake ballsCake popsConical, such as the …\",\"code\":\"{\\\"en\\\":\\\"BROW0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":83,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":3}', '{\"name\":\"Brown Choclolate Cake\",\"code\":\"BROW0001\",\"updated_at\":2147483647,\"album_id\":1}', '6', 'catalog_article', 0),
(224, 1, 1701831866, '', 'api-admin-storageimage', 0, 1, '{\"id\":118,\"file_id\":28,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701831866,\"updated_at\":1701831866}', NULL, '118', '{{%admin_storage_image}}', 0),
(225, 1, 1701831867, '', 'api-admin-storageimage', 0, 1, '{\"id\":119,\"file_id\":27,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1701831867,\"updated_at\":1701831867}', NULL, '119', '{{%admin_storage_image}}', 0),
(226, 1, 1701831870, '', 'api-admin-storageimage', 0, 1, '{\"id\":120,\"file_id\":\"24\",\"filter_id\":0,\"resolution_width\":360,\"resolution_height\":480,\"created_at\":1701831870,\"updated_at\":1701831870}', NULL, '120', '{{%admin_storage_image}}', 0),
(227, 1, 1701831968, '', 'api-admin-storageimage', 0, 1, '{\"id\":121,\"file_id\":27,\"filter_id\":1,\"resolution_width\":400,\"resolution_height\":400,\"created_at\":1701831968,\"updated_at\":1701831968}', NULL, '121', '{{%admin_storage_image}}', 0),
(228, 1, 1701832026, '', 'api-admin-storageimage', 0, 1, '{\"id\":122,\"file_id\":\"13\",\"filter_id\":0,\"resolution_width\":3648,\"resolution_height\":2736,\"created_at\":1701832026,\"updated_at\":1701832026}', NULL, '122', '{{%admin_storage_image}}', 0),
(229, 1, 1701833201, '', 'api-gallery-album', 1, 0, '{\"id\":2,\"cat_id\":2,\"title\":\"{\\\"en\\\":\\\"Chocolate Cakes\\\"}\",\"description\":\"{\\\"en\\\":\\\"chocolate cakes\\\"}\",\"cover_image_id\":75,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":-1}', '{\"sort_index\":0}', '2', 'gallery_album', 0),
(230, 1, 1701833211, '', 'api-gallery-album', 1, 0, '{\"id\":1,\"cat_id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"description\":\"{\\\"en\\\":\\\"butter cookies\\\"}\",\"cover_image_id\":45,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":-1}', '{\"sort_index\":0}', '1', 'gallery_album', 0),
(231, 1, 1701833213, '', 'api-gallery-album', 1, 0, '{\"id\":2,\"cat_id\":2,\"title\":\"{\\\"en\\\":\\\"Chocolate Cakes\\\"}\",\"description\":\"{\\\"en\\\":\\\"chocolate cakes\\\"}\",\"cover_image_id\":75,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":-2}', '{\"sort_index\":-1}', '2', 'gallery_album', 0),
(232, 1, 1701833217, '', 'api-gallery-album', 1, 0, '{\"id\":1,\"cat_id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"description\":\"{\\\"en\\\":\\\"butter cookies\\\"}\",\"cover_image_id\":45,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":0}', '{\"sort_index\":-1}', '1', 'gallery_album', 0),
(233, 1, 1701833219, '', 'api-gallery-album', 1, 0, '{\"id\":1,\"cat_id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"description\":\"{\\\"en\\\":\\\"butter cookies\\\"}\",\"cover_image_id\":45,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":1}', '{\"sort_index\":0}', '1', 'gallery_album', 0),
(234, 1, 1701833222, '', 'api-gallery-album', 1, 0, '{\"id\":2,\"cat_id\":2,\"title\":\"{\\\"en\\\":\\\"Chocolate Cakes\\\"}\",\"description\":\"{\\\"en\\\":\\\"chocolate cakes\\\"}\",\"cover_image_id\":75,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":-1}', '{\"sort_index\":-2}', '2', 'gallery_album', 0),
(235, 1, 1701833223, '', 'api-gallery-album', 1, 0, '{\"id\":2,\"cat_id\":2,\"title\":\"{\\\"en\\\":\\\"Chocolate Cakes\\\"}\",\"description\":\"{\\\"en\\\":\\\"chocolate cakes\\\"}\",\"cover_image_id\":75,\"timestamp_create\":0,\"timestamp_update\":0,\"is_highlight\":1,\"sort_index\":0}', '{\"sort_index\":-1}', '2', 'gallery_album', 0),
(236, 1, 1701851825, '', 'api-catalog-currency', 1, 0, '{\"id\":3,\"code\":\"INR\",\"rate\":0.25,\"position\":0,\"name\":\"Indian Rupee\",\"before\":\"₹\",\"after\":\"/-\",\"enabled\":1}', '{\"rate\":\"0.2500\",\"before\":\"Rs.\"}', '3', '{{%catalog_currency}}', 0),
(237, 1, 1701951848, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":6,\"value_id\":33,\"currency_id\":3,\"qty\":1,\"price\":1425,\"unit_id\":4}', NULL, '6-33-3-1-4', 'catalog_article_price', 0),
(238, 1, 1701958577, '', 'api-catalog-featuregroupref', 1, 0, '{\"feature_id\":8,\"group_id\":7,\"position\":1,\"is_base\":\"1\"}', '{\"position\":0,\"is_base\":0}', '8-7', '{{%catalog_feature_group_ref}}', 0),
(239, 1, 1701958586, '', 'api-catalog-featuregroupref', 1, 0, '{\"feature_id\":9,\"group_id\":7,\"position\":2,\"is_base\":0}', '{\"position\":0}', '9-7', '{{%catalog_feature_group_ref}}', 0),
(240, 1, 1701963292, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":33}', NULL, '7-33', 'catalog_article_value_ref', 0),
(241, 1, 1701963292, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":34}', NULL, '7-34', 'catalog_article_value_ref', 0),
(242, 1, 1701963292, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":31}', NULL, '7-31', 'catalog_article_value_ref', 0),
(243, 1, 1701963292, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":32}', NULL, '7-32', 'catalog_article_value_ref', 0),
(244, 1, 1701963292, '', 'api-catalog-article', 1, 0, '{\"id\":7,\"name\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\",\"product_id\":28,\"text\":\"Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.\",\"code\":\"{\\\"en\\\":\\\"HONCHK0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":126,\"image_id\":116,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":3}', '{\"name\":\"Honey Chocolate Dip Cake\",\"code\":\"HONCHK0001\",\"updated_at\":2147483647}', '7', 'catalog_article', 0),
(245, 1, 1701963457, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":7,\"value_id\":33,\"currency_id\":3,\"qty\":1,\"price\":1452,\"unit_id\":4}', NULL, '7-33-3-1-4', 'catalog_article_price', 0),
(246, 1, 1701963496, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":7,\"value_id\":34,\"currency_id\":3,\"qty\":1,\"price\":2453,\"unit_id\":4}', NULL, '7-34-3-1-4', 'catalog_article_price', 0),
(247, 1, 1701963579, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":7,\"value_id\":31,\"currency_id\":3,\"qty\":1,\"price\":251,\"unit_id\":4}', NULL, '7-31-3-1-4', 'catalog_article_price', 0),
(248, 1, 1701965212, '', 'api-catalog-feature', 1, 0, '{\"id\":8,\"name\":\"Size\",\"position\":1,\"enabled\":1}', '{\"position\":0}', '8', 'catalog_feature', 0),
(249, 1, 1701965220, '', 'api-catalog-feature', 1, 0, '{\"id\":9,\"name\":\"Version\",\"position\":2,\"enabled\":1}', '{\"position\":0}', '9', 'catalog_feature', 0),
(250, 1, 1701965291, '', 'api-catalog-value', 0, 1, '{\"id\":36,\"name\":\"6 inch 5 layer\",\"feature_id\":8,\"position\":3}', NULL, '36', '{{%catalog_value}}', 0),
(251, 1, 1701965317, '', 'api-catalog-value', 1, 0, '{\"id\":33,\"name\":\"6 inch\",\"feature_id\":8,\"position\":1}', '{\"position\":0}', '33', '{{%catalog_value}}', 0),
(252, 1, 1701965324, '', 'api-catalog-value', 1, 0, '{\"id\":34,\"name\":\"12 inch\",\"feature_id\":8,\"position\":2}', '{\"position\":0}', '34', '{{%catalog_value}}', 0),
(253, 1, 1701965330, '', 'api-catalog-value', 1, 0, '{\"id\":36,\"name\":\"6 inch 5 layer\",\"feature_id\":8,\"position\":3}', '[]', '36', '{{%catalog_value}}', 0),
(254, 1, 1701965343, '', 'api-catalog-value', 1, 0, '{\"id\":35,\"name\":\"Pack\",\"feature_id\":8,\"position\":1}', '{\"position\":0}', '35', '{{%catalog_value}}', 0),
(255, 1, 1701965352, '', 'api-catalog-value', 1, 0, '{\"id\":32,\"name\":\"With Egg\",\"feature_id\":9,\"position\":1}', '{\"position\":0}', '32', '{{%catalog_value}}', 0),
(256, 1, 1701965357, '', 'api-catalog-value', 1, 0, '{\"id\":31,\"name\":\"Eggless\",\"feature_id\":9,\"position\":2}', '{\"position\":0}', '31', '{{%catalog_value}}', 0),
(257, 1, 1701965428, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":7,\"value_id\":36,\"currency_id\":3,\"qty\":1,\"price\":2354,\"unit_id\":4}', NULL, '7-36-3-1-4', 'catalog_article_price', 0),
(258, 1, 1701965524, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":33}', NULL, '7-33', 'catalog_article_value_ref', 0),
(259, 1, 1701965524, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":34}', NULL, '7-34', 'catalog_article_value_ref', 0),
(260, 1, 1701965524, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":36}', NULL, '7-36', 'catalog_article_value_ref', 0),
(261, 1, 1701965524, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":31}', NULL, '7-31', 'catalog_article_value_ref', 0),
(262, 1, 1701965524, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":7,\"value_id\":32}', NULL, '7-32', 'catalog_article_value_ref', 0),
(263, 1, 1701965524, '', 'api-catalog-article', 1, 0, '{\"id\":7,\"name\":\"{\\\"en\\\":\\\"Honey Chocolate Dip Cake\\\"}\",\"product_id\":28,\"text\":\"Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.\",\"code\":\"{\\\"en\\\":\\\"HONCHK0001\\\"}\",\"price\":null,\"price_old\":null,\"currency_id\":0,\"unit_id\":0,\"available\":126,\"image_id\":116,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":3}', '{\"name\":\"Honey Chocolate Dip Cake\",\"code\":\"HONCHK0001\",\"updated_at\":2147483647}', '7', 'catalog_article', 0),
(264, 1, 1701966740, '', 'api-catalog-featuregroupref', 1, 0, '{\"feature_id\":8,\"group_id\":7,\"position\":1,\"is_base\":\"1\"}', '{\"position\":0,\"is_base\":0}', '8-7', '{{%catalog_feature_group_ref}}', 0),
(265, 1, 1701966762, '', 'api-catalog-featuregroupref', 1, 0, '{\"feature_id\":8,\"group_id\":8,\"position\":2,\"is_base\":\"1\"}', '{\"position\":0,\"is_base\":0}', '8-8', '{{%catalog_feature_group_ref}}', 0),
(266, 1, 1702027273, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":33}', NULL, '6-33', 'catalog_article_value_ref', 0),
(267, 1, 1702027273, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":34}', NULL, '6-34', 'catalog_article_value_ref', 0),
(268, 1, 1702027273, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":31}', NULL, '6-31', 'catalog_article_value_ref', 0),
(269, 1, 1702027273, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":6,\"value_id\":32}', NULL, '6-32', 'catalog_article_value_ref', 0),
(270, 1, 1702027273, '', 'api-catalog-article', 1, 0, '{\"id\":6,\"name\":\"{\\\"en\\\":\\\"Brown Choclolate Cake\\\"}\",\"product_id\":28,\"text\":\"Cakes are frequently described according to their physical form. Cakes may be small and intended for individual consumption. Larger cakes may be made to be sliced and served as part of a meal or social function. Common shapes include: Bundt cakesCake dressCake ballsCake popsConical, such as the …\",\"code\":\"{\\\"en\\\":\\\"BROW0001\\\"}\",\"price\":2425,\"price_old\":2640,\"currency_id\":0,\"unit_id\":0,\"available\":1,\"image_id\":83,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":3}', '{\"name\":\"Brown Choclolate Cake\",\"code\":\"BROW0001\",\"price\":null,\"price_old\":null,\"updated_at\":2147483647}', '6', 'catalog_article', 0),
(271, 1, 1702093316, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":33}', NULL, '9-33', 'catalog_article_value_ref', 0),
(272, 1, 1702093316, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":34}', NULL, '9-34', 'catalog_article_value_ref', 0),
(273, 1, 1702093316, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":36}', NULL, '9-36', 'catalog_article_value_ref', 0),
(274, 1, 1702093316, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":31}', NULL, '9-31', 'catalog_article_value_ref', 0),
(275, 1, 1702093316, '', 'api-catalog-articlevalueref', 0, 1, '{\"article_id\":9,\"value_id\":32}', NULL, '9-32', 'catalog_article_value_ref', 0),
(276, 1, 1702093316, '', 'api-catalog-article', 1, 0, '{\"id\":9,\"name\":\"{\\\"en\\\":\\\"Vanilla Cake with Butter Cream\\\"}\",\"product_id\":30,\"text\":\"It’s notoriously hard to find a really good, classic cupcake recipe. Many promise game changing techniques, but all too often they fall short.\\n\\nSo why should you believe me when I say this is the last Vanilla Cupcake recipe you’ll ever use?\",\"code\":\"{\\\"en\\\":\\\"VNL00234\\\"}\",\"price\":875,\"price_old\":1020,\"currency_id\":0,\"unit_id\":0,\"available\":100,\"image_id\":86,\"created_at\":2147483647,\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"position\":0,\"enabled\":1,\"album_id\":2}', '{\"name\":\"Vanilla Cake with Butter Cream\",\"code\":\"VNL00234\",\"price\":null,\"price_old\":null,\"updated_at\":2147483647,\"album_id\":1}', '9', 'catalog_article', 0),
(277, 1, 1702093460, '', 'api-catalog-articleprice', 1, 0, '{\"article_id\":9,\"value_id\":\"31\",\"currency_id\":3,\"qty\":1,\"price\":749,\"unit_id\":\"4\"}', '{\"value_id\":32,\"price\":542,\"unit_id\":5}', '9-31-3-1-4', 'catalog_article_price', 0),
(278, 1, 1702093624, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":9,\"value_id\":33,\"currency_id\":3,\"qty\":1,\"price\":849,\"unit_id\":4}', NULL, '9-33-3-1-4', 'catalog_article_price', 0),
(279, 1, 1702093979, '', 'api-catalog-articleprice', 0, 1, '{\"article_id\":9,\"value_id\":34,\"currency_id\":3,\"qty\":1,\"price\":1499,\"unit_id\":4}', NULL, '9-34-3-1-4', 'catalog_article_price', 0),
(280, 1, 1702094438, '', 'api-catalog-articleprice', 1, 0, '{\"article_id\":9,\"value_id\":31,\"currency_id\":3,\"qty\":1,\"price\":0,\"unit_id\":4}', '{\"price\":749}', '9-31-3-1-4', 'catalog_article_price', 0),
(281, 1, 1702094452, '', 'api-catalog-articleprice', 1, 0, '{\"article_id\":9,\"value_id\":32,\"currency_id\":3,\"qty\":1,\"price\":140,\"unit_id\":4}', '{\"price\":1240}', '9-32-3-1-4', 'catalog_article_price', 0),
(282, 1, 1702136100, '', 'api-catalog-articleprice', 1, 0, '{\"article_id\":6,\"value_id\":31,\"currency_id\":3,\"qty\":1,\"price\":140,\"unit_id\":4}', '{\"price\":1000}', '6-31-3-1-4', 'catalog_article_price', 0),
(283, 0, 1702232362, '', 'api-cart-buyer', 0, 1, '{\"id\":1,\"name\":\"Harikrishna\",\"phone\":\"385845245852\",\"email\":\"pravinya.valluri@mymail.com\",\"created_at\":1702232362,\"entity\":\"0\",\"delivery\":null}', NULL, '1', '{{%buyer}}', 0),
(284, 0, 1702232696, '', 'api-cart-buyer', 0, 1, '{\"id\":2,\"name\":\"Harikrishna\",\"phone\":\"383858452458\",\"email\":\"pravinya.valluri@mymail.com\",\"created_at\":1702232696,\"entity\":\"0\",\"delivery\":null}', NULL, '2', '{{%buyer}}', 0),
(285, 0, 1702232828, '', 'api-cart-buyer', 0, 1, '{\"id\":3,\"name\":\"Harikrishna\",\"phone\":\"383838584524\",\"email\":\"pravinya.valluri@mymail.com\",\"created_at\":1702232828,\"entity\":\"0\",\"delivery\":null}', NULL, '3', '{{%buyer}}', 0),
(286, 0, 1702232890, '', 'api-cart-buyer', 0, 1, '{\"id\":4,\"name\":\"Harikrishna\",\"phone\":\"383838385845\",\"email\":\"pravinya.valluri@mymail.com\",\"created_at\":1702232890,\"entity\":\"0\",\"delivery\":null}', NULL, '4', '{{%buyer}}', 0),
(287, 0, 1702232922, '', 'api-cart-buyer', 0, 1, '{\"id\":5,\"name\":\"Harikrishna\",\"phone\":\"383838383858\",\"email\":\"pravinya.valluri@mymail.com\",\"created_at\":1702232922,\"entity\":\"0\",\"delivery\":null}', NULL, '5', '{{%buyer}}', 0),
(288, 0, 1702232972, '', 'api-cart-buyer', 0, 1, '{\"id\":6,\"name\":\"Harikrishna\",\"phone\":\"383838383838\",\"email\":\"pravinya.valluri@mymail.com\",\"created_at\":1702232972,\"entity\":\"0\",\"delivery\":null}', NULL, '6', '{{%buyer}}', 0),
(289, 0, 1702276348, '', 'api-cart-buyer', 0, 1, '{\"id\":7,\"name\":\"Purnachandra Rao V\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702276348,\"entity\":\"0\",\"delivery\":null}', NULL, '7', '{{%buyer}}', 0),
(290, 0, 1702278096, '', 'api-cart-buyer', 1, 0, '{\"id\":7,\"name\":\"Purnachandra Rao V\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702276348,\"entity\":0,\"delivery\":\"\"}', '{\"delivery\":null}', '7', '{{%buyer}}', 0),
(291, 0, 1702278139, '', 'api-cart-buyer', 0, 1, '{\"id\":8,\"name\":\"Purnachandra Rao V\",\"phone\":\"383808331852\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702278139,\"entity\":\"0\",\"delivery\":null}', NULL, '8', '{{%buyer}}', 0),
(292, 0, 1702278816, '', 'api-cart-buyer', 1, 0, '{\"id\":8,\"name\":\"Purnachandra Rao V\",\"phone\":\"383808331852\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702278139,\"entity\":0,\"delivery\":\"\"}', '{\"delivery\":null}', '8', '{{%buyer}}', 0),
(293, 0, 1702278830, '', 'api-cart-buyer', 1, 0, '{\"id\":8,\"name\":\"Purnachandra Rao V\",\"phone\":\"383808331852\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702278139,\"entity\":0,\"delivery\":\"\"}', '[]', '8', '{{%buyer}}', 0),
(294, 0, 1702294163, '', 'api-cart-buyer', 0, 1, '{\"id\":9,\"name\":\"Purnachandra Rao V\",\"phone\":\"383838083318\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702294163,\"entity\":\"0\",\"delivery\":null}', NULL, '9', '{{%buyer}}', 0),
(295, 0, 1702294419, '', 'api-cart-buyer', 0, 1, '{\"id\":10,\"name\":\"Purnachandra Rao V\",\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702294419,\"entity\":\"0\",\"delivery\":null}', NULL, '10', '{{%buyer}}', 0),
(296, 0, 1702294419, '', 'api-cart-order', 0, 1, '{\"id\":1,\"buyer_id\":10,\"amount\":12579,\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\"gfhrt bf drthbrtd\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '1', '{{%order}}', 0),
(297, 0, 1702294581, '', 'api-cart-buyer', 1, 0, '{\"id\":10,\"name\":\"Mahesh Babnu\",\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702294419,\"entity\":0,\"delivery\":\"\"}', '{\"name\":\"Purnachandra Rao V\",\"delivery\":null}', '10', '{{%buyer}}', 0),
(298, 0, 1702297657, '', 'api-cart-buyer', 1, 0, '{\"id\":10,\"name\":\"Mahesh Babnu\",\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702294419,\"entity\":0,\"delivery\":\"\"}', '[]', '10', '{{%buyer}}', 0),
(299, 0, 1702297706, '', 'api-cart-buyer', 1, 0, '{\"id\":10,\"name\":\"Mahesh Babnu\",\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702294419,\"entity\":0,\"delivery\":\"\"}', '[]', '10', '{{%buyer}}', 0),
(300, 0, 1702297795, '', 'api-cart-buyer', 0, 1, '{\"id\":11,\"name\":\"Purnachandra Rao V\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":\"0\",\"delivery\":null}', NULL, '11', '{{%buyer}}', 0),
(301, 0, 1702297851, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao V\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '{\"delivery\":null}', '11', '{{%buyer}}', 0),
(302, 0, 1702298372, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao V\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(303, 0, 1702298414, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '{\"name\":\"Purnachandra Rao V\"}', '11', '{{%buyer}}', 0),
(304, 0, 1702298439, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(305, 0, 1702298595, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(306, 0, 1702298595, '', 'api-cart-order', 0, 1, '{\"id\":3,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '3', '{{%order}}', 0),
(307, 0, 1702298749, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(308, 0, 1702298749, '', 'api-cart-order', 0, 1, '{\"id\":4,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '4', '{{%order}}', 0),
(309, 0, 1702298768, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(310, 0, 1702298886, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(311, 0, 1702298886, '', 'api-cart-order', 0, 1, '{\"id\":5,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '5', '{{%order}}', 0),
(312, 0, 1702302112, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(313, 0, 1702302128, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(314, 0, 1702302128, '', 'api-cart-order', 0, 1, '{\"id\":6,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '6', '{{%order}}', 0),
(315, 0, 1702302194, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(316, 0, 1702302194, '', 'api-cart-order', 0, 1, '{\"id\":7,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '7', '{{%order}}', 0),
(317, 0, 1702302404, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0);
INSERT INTO `admin_ngrest_log` (`id`, `user_id`, `timestamp_create`, `route`, `api`, `is_update`, `is_insert`, `attributes_json`, `attributes_diff_json`, `pk_value`, `table_name`, `is_delete`) VALUES
(318, 0, 1702302404, '', 'api-cart-order', 0, 1, '{\"id\":8,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '8', '{{%order}}', 0),
(319, 0, 1702302436, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(320, 0, 1702302436, '', 'api-cart-order', 0, 1, '{\"id\":9,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '9', '{{%order}}', 0),
(321, 0, 1702302537, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(322, 0, 1702302537, '', 'api-cart-order', 0, 1, '{\"id\":10,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '10', '{{%order}}', 0),
(323, 0, 1702302709, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(324, 0, 1702302709, '', 'api-cart-order', 0, 1, '{\"id\":11,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '11', '{{%order}}', 0),
(325, 0, 1702302734, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(326, 0, 1702302734, '', 'api-cart-order', 0, 1, '{\"id\":12,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '12', '{{%order}}', 0),
(327, 0, 1702302824, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(328, 0, 1702302824, '', 'api-cart-order', 0, 1, '{\"id\":13,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '13', '{{%order}}', 0),
(329, 0, 1702303036, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(330, 0, 1702303052, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(331, 0, 1702303052, '', 'api-cart-order', 0, 1, '{\"id\":14,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '14', '{{%order}}', 0),
(332, 0, 1702303236, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(333, 0, 1702303236, '', 'api-cart-order', 0, 1, '{\"id\":15,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '15', '{{%order}}', 0),
(334, 0, 1702303317, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(335, 0, 1702303317, '', 'api-cart-order', 0, 1, '{\"id\":16,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '16', '{{%order}}', 0),
(336, 0, 1702304393, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(337, 0, 1702304420, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(338, 0, 1702304420, '', 'api-cart-order', 0, 1, '{\"id\":17,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '17', '{{%order}}', 0),
(339, 0, 1702304582, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(340, 0, 1702304582, '', 'api-cart-order', 0, 1, '{\"id\":18,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '18', '{{%order}}', 0),
(341, 0, 1702304664, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(342, 0, 1702304664, '', 'api-cart-order', 0, 1, '{\"id\":19,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '19', '{{%order}}', 0),
(343, 0, 1702304688, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(344, 0, 1702304688, '', 'api-cart-order', 0, 1, '{\"id\":20,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '20', '{{%order}}', 0),
(345, 0, 1702304701, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(346, 0, 1702304701, '', 'api-cart-order', 0, 1, '{\"id\":21,\"buyer_id\":11,\"amount\":9677,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '21', '{{%order}}', 0),
(347, 0, 1702304702, '', 'api-cart-orderproduct', 0, 1, '{\"id\":3,\"order_id\":21,\"article_id\":\"7\",\"name\":\"Chocolate Cake, Honey Chocolate Dip Cake\",\"count\":\"3\",\"price\":\"2704\",\"features\":\"[28][8]1+[28][9]1\"}', NULL, '3', 'order_product', 0),
(348, 0, 1702304702, '', 'api-cart-orderproduct', 0, 1, '{\"id\":4,\"order_id\":21,\"article_id\":\"6\",\"name\":\"Chocolate Cake, Brown Choclolate Cake\",\"count\":1,\"price\":\"1565\",\"features\":\"[28][8]0+[28][9]1\"}', NULL, '4', 'order_product', 0),
(349, 0, 1702304760, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao Vall\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '[]', '11', '{{%buyer}}', 0),
(350, 0, 1702304760, '', 'api-cart-order', 0, 1, '{\"id\":22,\"buyer_id\":11,\"amount\":0,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"2\",\"text\":null,\"comment\":\",ljtyujrfyjvbn\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":5}', NULL, '22', '{{%order}}', 0),
(351, 0, 1702306637, '', 'api-cart-buyer', 1, 0, '{\"id\":10,\"name\":\"Purnachandra Rao V\",\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702294419,\"entity\":0,\"delivery\":\"\"}', '{\"name\":\"Mahesh Babnu\"}', '10', '{{%buyer}}', 0),
(352, 0, 1702306637, '', 'api-cart-order', 0, 1, '{\"id\":23,\"buyer_id\":10,\"amount\":3477,\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"1\",\"payment_id\":\"3\",\"text\":null,\"comment\":\"l jkhjrtfhnfgv rtdyh\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":1}', NULL, '23', '{{%order}}', 0),
(353, 0, 1702306637, '', 'api-cart-orderproduct', 0, 1, '{\"id\":5,\"order_id\":23,\"article_id\":\"9\",\"name\":\"Vanilla Cake, Vanilla Cake with Butter Cream\",\"count\":1,\"price\":\"1639\",\"features\":\"[30][8]1+[30][9]0\"}', NULL, '5', 'order_product', 0),
(354, 0, 1702306637, '', 'api-cart-orderproduct', 0, 1, '{\"id\":6,\"order_id\":23,\"article_id\":\"9\",\"name\":\"Vanilla Cake, Vanilla Cake with Butter Cream\",\"count\":1,\"price\":\"989\",\"features\":\"[30][8]0+[30][9]0\"}', NULL, '6', 'order_product', 0),
(355, 0, 1702306637, '', 'api-cart-orderproduct', 0, 1, '{\"id\":7,\"order_id\":23,\"article_id\":\"9\",\"name\":\"Vanilla Cake, Vanilla Cake with Butter Cream\",\"count\":1,\"price\":\"849\",\"features\":\"[30][8]0+[30][9]1\"}', NULL, '7', 'order_product', 0),
(356, 0, 1702306728, '', 'api-cart-buyer', 1, 0, '{\"id\":10,\"name\":\"Purnachandra Rao V\",\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702294419,\"entity\":0,\"delivery\":\"\"}', '[]', '10', '{{%buyer}}', 0),
(357, 0, 1702306728, '', 'api-cart-order', 0, 1, '{\"id\":24,\"buyer_id\":10,\"amount\":0,\"phone\":\"389183318527\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"1\",\"payment_id\":\"3\",\"text\":null,\"comment\":\"l jkhjrtfhnfgv rtdyh\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":1}', NULL, '24', '{{%order}}', 0),
(358, 0, 1702307120, '', 'api-cart-buyer', 1, 0, '{\"id\":11,\"name\":\"Purnachandra Rao V\",\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"created_at\":1702297795,\"entity\":0,\"delivery\":\"\"}', '{\"name\":\"Purnachandra Rao Vall\"}', '11', '{{%buyer}}', 0),
(359, 0, 1702307120, '', 'api-cart-order', 0, 1, '{\"id\":25,\"buyer_id\":11,\"amount\":4953,\"phone\":\"380833185270\",\"email\":\"provdigi@gmail.com\",\"delivery\":null,\"delivery_id\":\"2\",\"payment_id\":\"1\",\"text\":null,\"comment\":\"yjgghjm vcbdfghd\",\"created_at\":{\"expression\":\"NOW()\",\"params\":[]},\"updated_at\":{\"expression\":\"NOW()\",\"params\":[]},\"status\":1}', NULL, '25', '{{%order}}', 0),
(360, 0, 1702307120, '', 'api-cart-orderproduct', 0, 1, '{\"id\":8,\"order_id\":25,\"article_id\":\"9\",\"name\":\"Vanilla Cake, Vanilla Cake with Butter Cream\",\"count\":1,\"price\":\"1499\",\"features\":\"[30][8]1+[30][9]1\"}', NULL, '8', 'order_product', 0),
(361, 0, 1702307120, '', 'api-cart-orderproduct', 0, 1, '{\"id\":9,\"order_id\":25,\"article_id\":\"7\",\"name\":\"Chocolate Cake, Honey Chocolate Dip Cake\",\"count\":1,\"price\":\"2704\",\"features\":\"[28][8]1+[28][9]1\"}', NULL, '9', 'order_product', 0),
(362, 0, 1702307120, '', 'api-cart-orderproduct', 0, 1, '{\"id\":10,\"order_id\":25,\"article_id\":\"8\",\"name\":\"Butter Cookies, Creamy Butter Cookies\",\"count\":1,\"price\":\"750\",\"features\":\"[29][8]0+[29][9]0\"}', NULL, '10', 'order_product', 0),
(363, 0, 1702353135, '', 'api-admin-storageimage', 0, 1, '{\"id\":123,\"file_id\":22,\"filter_id\":10,\"resolution_width\":100,\"resolution_height\":100,\"created_at\":1702353134,\"updated_at\":1702353134}', NULL, '123', '{{%admin_storage_image}}', 0),
(364, 0, 1702353135, '', 'api-admin-storageimage', 0, 1, '{\"id\":124,\"file_id\":23,\"filter_id\":10,\"resolution_width\":100,\"resolution_height\":100,\"created_at\":1702353135,\"updated_at\":1702353135}', NULL, '124', '{{%admin_storage_image}}', 0),
(365, 0, 1702409632, '', 'api-admin-storageimage', 0, 1, '{\"id\":125,\"file_id\":14,\"filter_id\":10,\"resolution_width\":100,\"resolution_height\":100,\"created_at\":1702409632,\"updated_at\":1702409632}', NULL, '125', '{{%admin_storage_image}}', 0),
(366, 0, 1702409775, '', 'api-admin-storageimage', 0, 1, '{\"id\":126,\"file_id\":24,\"filter_id\":10,\"resolution_width\":100,\"resolution_height\":100,\"created_at\":1702409775,\"updated_at\":1702409775}', NULL, '126', '{{%admin_storage_image}}', 0),
(367, 1, 1702530940, '', 'api-admin-storageimage', 0, 1, '{\"id\":127,\"file_id\":29,\"filter_id\":0,\"resolution_width\":720,\"resolution_height\":720,\"created_at\":1702530940,\"updated_at\":1702530940}', NULL, '127', '{{%admin_storage_image}}', 0),
(368, 1, 1702531263, '', 'api-admin-storageimage', 0, 1, '{\"id\":128,\"file_id\":25,\"filter_id\":0,\"resolution_width\":500,\"resolution_height\":334,\"created_at\":1702531263,\"updated_at\":1702531263}', NULL, '128', '{{%admin_storage_image}}', 0),
(369, 1, 1702619674, '', '', 0, 1, '{\"id\":30,\"is_hidden\":false,\"folder_id\":0,\"name_original\":\"0_biscuits-06_fdaf7dd3.jpg\",\"name_new\":\"0-biscuits-06-fdaf7dd3\",\"name_new_compound\":\"0-biscuits-06-fdaf7dd3_deda9bfb.jpg\",\"mime_type\":\"image/jpeg\",\"extension\":\"jpg\",\"hash_file\":\"3b8c76249f156e7297d0dbd3f2977cb3\",\"hash_name\":\"deda9bfb\",\"upload_timestamp\":1702619674,\"file_size\":74954,\"upload_user_id\":1,\"is_deleted\":false,\"passthrough_file\":null,\"passthrough_file_password\":null,\"passthrough_file_stats\":null,\"caption\":null,\"inline_disposition\":0,\"update_timestamp\":1702619674}', NULL, '30', '{{%admin_storage_file}}', 0),
(370, 1, 1702619688, '', 'api-admin-storageimage', 0, 1, '{\"id\":129,\"file_id\":30,\"filter_id\":8,\"resolution_width\":40,\"resolution_height\":40,\"created_at\":1702619688,\"updated_at\":1702619688}', NULL, '129', '{{%admin_storage_image}}', 0),
(371, 1, 1702619688, '', 'api-admin-storageimage', 0, 1, '{\"id\":130,\"file_id\":30,\"filter_id\":4,\"resolution_width\":300,\"resolution_height\":200,\"created_at\":1702619688,\"updated_at\":1702619688}', NULL, '130', '{{%admin_storage_image}}', 0),
(372, 1, 1702619694, '', 'api-admin-storageimage', 0, 1, '{\"id\":131,\"file_id\":30,\"filter_id\":1,\"resolution_width\":800,\"resolution_height\":800,\"created_at\":1702619694,\"updated_at\":1702619694}', NULL, '131', '{{%admin_storage_image}}', 0),
(373, 1, 1702619698, '', 'api-admin-storageimage', 0, 1, '{\"id\":132,\"file_id\":30,\"filter_id\":3,\"resolution_width\":300,\"resolution_height\":300,\"created_at\":1702619698,\"updated_at\":1702619698}', NULL, '132', '{{%admin_storage_image}}', 0),
(374, 1, 1702619702, '', 'api-gallery-cat', 1, 0, '{\"id\":1,\"title\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\",\"cover_image_id\":132,\"description\":\"{\\\"en\\\":\\\"Butter Cookies\\\"}\"}', '{\"title\":\"Butter Cookies\",\"cover_image_id\":44,\"description\":\"Butter Cookies\"}', '1', 'gallery_cat', 0),
(375, 1, 1702621351, '', 'api-admin-queuelog', 0, 1, '{\"id\":1,\"queue_id\":\"1\",\"title\":\"luya\\\\admin\\\\jobs\\\\ScheduleJob\",\"push_timestamp\":1702621351,\"run_timestamp\":null,\"end_timestamp\":null,\"is_error\":null}', NULL, '1', '{{%admin_queue_log}}', 0),
(376, 1, 1702621351, '', 'api-admin-config', 0, 1, '{\"name\":\"queueScheduler.1\",\"value\":\"1\",\"is_system\":1,\"id\":6}', NULL, '6', '{{%admin_config}}', 0),
(377, 1, 1702621351, '', 'api-admin-queuelogerror', 0, 1, '{\"id\":1,\"queue_log_id\":1,\"message\":\"Undefined array key \\\"placeholder_var\\\"\",\"code\":\"2\",\"trace\":\"#0 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php(199): yii\\\\base\\\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\\\\\luya-kicksta...\', 199)\\n#1 [internal function]: luya\\\\cms\\\\models\\\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\\\db\\\\AfterSaveEvent))\\n#2 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\db\\\\AfterSaveEvent))\\n#3 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(1008): yii\\\\base\\\\Component->trigger(\'afterUpdate\', Object(yii\\\\db\\\\AfterSaveEvent))\\n#4 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(834): yii\\\\db\\\\BaseActiveRecord->afterSave(false, Array)\\n#5 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\ActiveRecord.php(680): yii\\\\db\\\\BaseActiveRecord->updateInternal(Array)\\n#6 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(690): yii\\\\db\\\\ActiveRecord->update(true, Array)\\n#7 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\models\\\\Scheduler.php(102): yii\\\\db\\\\BaseActiveRecord->save(true, Array)\\n#8 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\jobs\\\\ScheduleJob.php(32): luya\\\\admin\\\\models\\\\Scheduler->triggerJob()\\n#9 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\Queue.php(243): luya\\\\admin\\\\jobs\\\\ScheduleJob->execute(Object(yii\\\\queue\\\\db\\\\Queue))\\n#10 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(147): yii\\\\queue\\\\Queue->handleMessage(1, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 1)\\n#11 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(79): yii\\\\queue\\\\cli\\\\Queue->handleMessage(1, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 1)\\n#12 [internal function]: yii\\\\queue\\\\db\\\\Queue->yii\\\\queue\\\\db\\\\{closure}(Object(Closure))\\n#13 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\\n#14 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(76): yii\\\\queue\\\\cli\\\\Queue->runWorker(Object(Closure))\\n#15 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\apis\\\\CommonController.php(117): yii\\\\queue\\\\db\\\\Queue->run(false)\\n#16 [internal function]: luya\\\\admin\\\\apis\\\\CommonController->actionSchedulerAdd()\\n#17 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php(57): call_user_func_array(Array, Array)\\n#18 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php(178): yii\\\\base\\\\InlineAction->runWithParams(Array)\\n#19 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php(552): yii\\\\base\\\\Controller->runAction(\'scheduler-add\', Array)\\n#20 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php(103): yii\\\\base\\\\Module->runAction(\'admin/api-admin...\', Array)\\n#21 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\web\\\\Application.php(52): yii\\\\web\\\\Application->handleRequest(Object(luya\\\\web\\\\Request))\\n#22 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php(384): luya\\\\web\\\\Application->handleRequest(Object(luya\\\\web\\\\Request))\\n#23 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(251): yii\\\\base\\\\Application->run()\\n#24 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(195): luya\\\\base\\\\Boot->applicationWeb()\\n#25 C:\\\\luya-kickstarter-bootstrap4\\\\public_html\\\\index.php(8): luya\\\\base\\\\Boot->run()\\n#26 {main}\",\"file\":\"C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php\",\"line\":\"199\",\"created_at\":1702621351,\"updated_at\":1702621351}', NULL, '1', '{{%admin_queue_log_error}}', 0),
(378, 1, 1702621378, '', 'api-admin-queuelog', 0, 1, '{\"id\":2,\"queue_id\":\"2\",\"title\":\"luya\\\\admin\\\\jobs\\\\ScheduleJob\",\"push_timestamp\":1702621377,\"run_timestamp\":null,\"end_timestamp\":null,\"is_error\":null}', NULL, '2', '{{%admin_queue_log}}', 0),
(379, 1, 1702621378, '', 'api-admin-config', 0, 1, '{\"name\":\"queueScheduler.2\",\"value\":\"2\",\"is_system\":1,\"id\":7}', NULL, '7', '{{%admin_config}}', 0),
(380, 1, 1702621379, '', 'api-admin-queuelogerror', 0, 1, '{\"id\":2,\"queue_log_id\":2,\"message\":\"Undefined array key \\\"placeholder_var\\\"\",\"code\":\"2\",\"trace\":\"#0 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php(199): yii\\\\base\\\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\\\\\luya-kicksta...\', 199)\\n#1 [internal function]: luya\\\\cms\\\\models\\\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\\\db\\\\AfterSaveEvent))\\n#2 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\db\\\\AfterSaveEvent))\\n#3 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(1008): yii\\\\base\\\\Component->trigger(\'afterUpdate\', Object(yii\\\\db\\\\AfterSaveEvent))\\n#4 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(808): yii\\\\db\\\\BaseActiveRecord->afterSave(false, Array)\\n#5 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\ActiveRecord.php(680): yii\\\\db\\\\BaseActiveRecord->updateInternal(Array)\\n#6 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(690): yii\\\\db\\\\ActiveRecord->update(true, Array)\\n#7 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\models\\\\Scheduler.php(102): yii\\\\db\\\\BaseActiveRecord->save(true, Array)\\n#8 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\jobs\\\\ScheduleJob.php(32): luya\\\\admin\\\\models\\\\Scheduler->triggerJob()\\n#9 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\Queue.php(243): luya\\\\admin\\\\jobs\\\\ScheduleJob->execute(Object(yii\\\\queue\\\\db\\\\Queue))\\n#10 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(147): yii\\\\queue\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 1)\\n#11 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(79): yii\\\\queue\\\\cli\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 1)\\n#12 [internal function]: yii\\\\queue\\\\db\\\\Queue->yii\\\\queue\\\\db\\\\{closure}(Object(Closure))\\n#13 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\\n#14 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(76): yii\\\\queue\\\\cli\\\\Queue->runWorker(Object(Closure))\\n#15 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\apis\\\\CommonController.php(117): yii\\\\queue\\\\db\\\\Queue->run(false)\\n#16 [internal function]: luya\\\\admin\\\\apis\\\\CommonController->actionSchedulerAdd()\\n#17 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php(57): call_user_func_array(Array, Array)\\n#18 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php(178): yii\\\\base\\\\InlineAction->runWithParams(Array)\\n#19 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php(552): yii\\\\base\\\\Controller->runAction(\'scheduler-add\', Array)\\n#20 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php(103): yii\\\\base\\\\Module->runAction(\'admin/api-admin...\', Array)\\n#21 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\web\\\\Application.php(52): yii\\\\web\\\\Application->handleRequest(Object(luya\\\\web\\\\Request))\\n#22 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php(384): luya\\\\web\\\\Application->handleRequest(Object(luya\\\\web\\\\Request))\\n#23 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(251): yii\\\\base\\\\Application->run()\\n#24 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(195): luya\\\\base\\\\Boot->applicationWeb()\\n#25 C:\\\\luya-kickstarter-bootstrap4\\\\public_html\\\\index.php(8): luya\\\\base\\\\Boot->run()\\n#26 {main}\",\"file\":\"C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php\",\"line\":\"199\",\"created_at\":1702621379,\"updated_at\":1702621379}', NULL, '2', '{{%admin_queue_log_error}}', 0),
(381, 1, 1702622895, '', 'api-admin-queuelogerror', 0, 1, '{\"id\":3,\"queue_log_id\":2,\"message\":\"Undefined array key \\\"placeholder_var\\\"\",\"code\":\"2\",\"trace\":\"#0 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php(199): yii\\\\base\\\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\\\\\luya-kicksta...\', 199)\\n#1 [internal function]: luya\\\\cms\\\\models\\\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\\\db\\\\AfterSaveEvent))\\n#2 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\db\\\\AfterSaveEvent))\\n#3 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(1008): yii\\\\base\\\\Component->trigger(\'afterUpdate\', Object(yii\\\\db\\\\AfterSaveEvent))\\n#4 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(808): yii\\\\db\\\\BaseActiveRecord->afterSave(false, Array)\\n#5 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\ActiveRecord.php(680): yii\\\\db\\\\BaseActiveRecord->updateInternal(Array)\\n#6 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(690): yii\\\\db\\\\ActiveRecord->update(true, Array)\\n#7 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\models\\\\Scheduler.php(102): yii\\\\db\\\\BaseActiveRecord->save(true, Array)\\n#8 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\jobs\\\\ScheduleJob.php(32): luya\\\\admin\\\\models\\\\Scheduler->triggerJob()\\n#9 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\Queue.php(243): luya\\\\admin\\\\jobs\\\\ScheduleJob->execute(Object(yii\\\\queue\\\\db\\\\Queue))\\n#10 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(147): yii\\\\queue\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 2)\\n#11 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(79): yii\\\\queue\\\\cli\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 2)\\n#12 [internal function]: yii\\\\queue\\\\db\\\\Queue->yii\\\\queue\\\\db\\\\{closure}(Object(Closure))\\n#13 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\\n#14 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(76): yii\\\\queue\\\\cli\\\\Queue->runWorker(Object(Closure))\\n#15 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\Bootstrap.php(52): yii\\\\queue\\\\db\\\\Queue->run(false)\\n#16 [internal function]: luya\\\\admin\\\\Bootstrap->luya\\\\admin\\\\{closure}(Object(luya\\\\admin\\\\Bootstrap))\\n#17 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\traits\\\\CacheableTrait.php(110): call_user_func(Object(Closure), Object(luya\\\\admin\\\\Bootstrap))\\n#18 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\Bootstrap.php(47): luya\\\\admin\\\\Bootstrap->getOrSetHasCache(Array, Object(Closure), 1800)\\n#19 [internal function]: luya\\\\admin\\\\Bootstrap->runQueueJob(Object(yii\\\\base\\\\Event))\\n#20 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\base\\\\Event))\\n#21 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php(381): yii\\\\base\\\\Component->trigger(\'beforeRequest\')\\n#22 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(251): yii\\\\base\\\\Application->run()\\n#23 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(195): luya\\\\base\\\\Boot->applicationWeb()\\n#24 C:\\\\luya-kickstarter-bootstrap4\\\\public_html\\\\index.php(8): luya\\\\base\\\\Boot->run()\\n#25 {main}\",\"file\":\"C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php\",\"line\":\"199\",\"created_at\":1702622895,\"updated_at\":1702622895}', NULL, '3', '{{%admin_queue_log_error}}', 0),
(382, 1, 1702624408, '', 'api-admin-queuelogerror', 0, 1, '{\"id\":4,\"queue_log_id\":2,\"message\":\"Undefined array key \\\"placeholder_var\\\"\",\"code\":\"2\",\"trace\":\"#0 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php(199): yii\\\\base\\\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\\\\\luya-kicksta...\', 199)\\n#1 [internal function]: luya\\\\cms\\\\models\\\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\\\db\\\\AfterSaveEvent))\\n#2 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\db\\\\AfterSaveEvent))\\n#3 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(1008): yii\\\\base\\\\Component->trigger(\'afterUpdate\', Object(yii\\\\db\\\\AfterSaveEvent))\\n#4 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(808): yii\\\\db\\\\BaseActiveRecord->afterSave(false, Array)\\n#5 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\ActiveRecord.php(680): yii\\\\db\\\\BaseActiveRecord->updateInternal(Array)\\n#6 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(690): yii\\\\db\\\\ActiveRecord->update(true, Array)\\n#7 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\models\\\\Scheduler.php(102): yii\\\\db\\\\BaseActiveRecord->save(true, Array)\\n#8 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\jobs\\\\ScheduleJob.php(32): luya\\\\admin\\\\models\\\\Scheduler->triggerJob()\\n#9 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\Queue.php(243): luya\\\\admin\\\\jobs\\\\ScheduleJob->execute(Object(yii\\\\queue\\\\db\\\\Queue))\\n#10 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(147): yii\\\\queue\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 3)\\n#11 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(79): yii\\\\queue\\\\cli\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 3)\\n#12 [internal function]: yii\\\\queue\\\\db\\\\Queue->yii\\\\queue\\\\db\\\\{closure}(Object(Closure))\\n#13 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\\n#14 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(76): yii\\\\queue\\\\cli\\\\Queue->runWorker(Object(Closure))\\n#15 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\Bootstrap.php(52): yii\\\\queue\\\\db\\\\Queue->run(false)\\n#16 [internal function]: luya\\\\admin\\\\Bootstrap->luya\\\\admin\\\\{closure}(Object(luya\\\\admin\\\\Bootstrap))\\n#17 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\traits\\\\CacheableTrait.php(110): call_user_func(Object(Closure), Object(luya\\\\admin\\\\Bootstrap))\\n#18 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\Bootstrap.php(47): luya\\\\admin\\\\Bootstrap->getOrSetHasCache(Array, Object(Closure), 1800)\\n#19 [internal function]: luya\\\\admin\\\\Bootstrap->runQueueJob(Object(yii\\\\base\\\\Event))\\n#20 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\base\\\\Event))\\n#21 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php(381): yii\\\\base\\\\Component->trigger(\'beforeRequest\')\\n#22 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(251): yii\\\\base\\\\Application->run()\\n#23 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(195): luya\\\\base\\\\Boot->applicationWeb()\\n#24 C:\\\\luya-kickstarter-bootstrap4\\\\public_html\\\\index.php(8): luya\\\\base\\\\Boot->run()\\n#25 {main}\",\"file\":\"C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php\",\"line\":\"199\",\"created_at\":1702624408,\"updated_at\":1702624408}', NULL, '4', '{{%admin_queue_log_error}}', 0),
(383, 1, 1702625919, '', 'api-admin-queuelogerror', 0, 1, '{\"id\":5,\"queue_log_id\":2,\"message\":\"Undefined array key \\\"placeholder_var\\\"\",\"code\":\"2\",\"trace\":\"#0 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php(199): yii\\\\base\\\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\\\\\luya-kicksta...\', 199)\\n#1 [internal function]: luya\\\\cms\\\\models\\\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\\\db\\\\AfterSaveEvent))\\n#2 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\db\\\\AfterSaveEvent))\\n#3 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(1008): yii\\\\base\\\\Component->trigger(\'afterUpdate\', Object(yii\\\\db\\\\AfterSaveEvent))\\n#4 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(808): yii\\\\db\\\\BaseActiveRecord->afterSave(false, Array)\\n#5 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\ActiveRecord.php(680): yii\\\\db\\\\BaseActiveRecord->updateInternal(Array)\\n#6 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(690): yii\\\\db\\\\ActiveRecord->update(true, Array)\\n#7 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\models\\\\Scheduler.php(102): yii\\\\db\\\\BaseActiveRecord->save(true, Array)\\n#8 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\jobs\\\\ScheduleJob.php(32): luya\\\\admin\\\\models\\\\Scheduler->triggerJob()\\n#9 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\Queue.php(243): luya\\\\admin\\\\jobs\\\\ScheduleJob->execute(Object(yii\\\\queue\\\\db\\\\Queue))\\n#10 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(147): yii\\\\queue\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 4)\\n#11 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(79): yii\\\\queue\\\\cli\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 4)\\n#12 [internal function]: yii\\\\queue\\\\db\\\\Queue->yii\\\\queue\\\\db\\\\{closure}(Object(Closure))\\n#13 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\\n#14 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(76): yii\\\\queue\\\\cli\\\\Queue->runWorker(Object(Closure))\\n#15 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\Bootstrap.php(52): yii\\\\queue\\\\db\\\\Queue->run(false)\\n#16 [internal function]: luya\\\\admin\\\\Bootstrap->luya\\\\admin\\\\{closure}(Object(luya\\\\admin\\\\Bootstrap))\\n#17 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\traits\\\\CacheableTrait.php(110): call_user_func(Object(Closure), Object(luya\\\\admin\\\\Bootstrap))\\n#18 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\Bootstrap.php(47): luya\\\\admin\\\\Bootstrap->getOrSetHasCache(Array, Object(Closure), 1800)\\n#19 [internal function]: luya\\\\admin\\\\Bootstrap->runQueueJob(Object(yii\\\\base\\\\Event))\\n#20 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\base\\\\Event))\\n#21 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php(381): yii\\\\base\\\\Component->trigger(\'beforeRequest\')\\n#22 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(251): yii\\\\base\\\\Application->run()\\n#23 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(195): luya\\\\base\\\\Boot->applicationWeb()\\n#24 C:\\\\luya-kickstarter-bootstrap4\\\\public_html\\\\index.php(8): luya\\\\base\\\\Boot->run()\\n#25 {main}\",\"file\":\"C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php\",\"line\":\"199\",\"created_at\":1702625919,\"updated_at\":1702625919}', NULL, '5', '{{%admin_queue_log_error}}', 0),
(384, 1, 1702627430, '', 'api-admin-queuelogerror', 0, 1, '{\"id\":6,\"queue_log_id\":2,\"message\":\"Undefined array key \\\"placeholder_var\\\"\",\"code\":\"2\",\"trace\":\"#0 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php(199): yii\\\\base\\\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\\\\\luya-kicksta...\', 199)\\n#1 [internal function]: luya\\\\cms\\\\models\\\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\\\db\\\\AfterSaveEvent))\\n#2 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\db\\\\AfterSaveEvent))\\n#3 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(1008): yii\\\\base\\\\Component->trigger(\'afterUpdate\', Object(yii\\\\db\\\\AfterSaveEvent))\\n#4 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(808): yii\\\\db\\\\BaseActiveRecord->afterSave(false, Array)\\n#5 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\ActiveRecord.php(680): yii\\\\db\\\\BaseActiveRecord->updateInternal(Array)\\n#6 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\db\\\\BaseActiveRecord.php(690): yii\\\\db\\\\ActiveRecord->update(true, Array)\\n#7 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\models\\\\Scheduler.php(102): yii\\\\db\\\\BaseActiveRecord->save(true, Array)\\n#8 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\jobs\\\\ScheduleJob.php(32): luya\\\\admin\\\\models\\\\Scheduler->triggerJob()\\n#9 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\Queue.php(243): luya\\\\admin\\\\jobs\\\\ScheduleJob->execute(Object(yii\\\\queue\\\\db\\\\Queue))\\n#10 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(147): yii\\\\queue\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 5)\\n#11 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(79): yii\\\\queue\\\\cli\\\\Queue->handleMessage(2, \'O:27:\\\"luya\\\\\\\\admi...\', 300, 5)\\n#12 [internal function]: yii\\\\queue\\\\db\\\\Queue->yii\\\\queue\\\\db\\\\{closure}(Object(Closure))\\n#13 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\cli\\\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\\n#14 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2-queue\\\\src\\\\drivers\\\\db\\\\Queue.php(76): yii\\\\queue\\\\cli\\\\Queue->runWorker(Object(Closure))\\n#15 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\Bootstrap.php(52): yii\\\\queue\\\\db\\\\Queue->run(false)\\n#16 [internal function]: luya\\\\admin\\\\Bootstrap->luya\\\\admin\\\\{closure}(Object(luya\\\\admin\\\\Bootstrap))\\n#17 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\traits\\\\CacheableTrait.php(110): call_user_func(Object(Closure), Object(luya\\\\admin\\\\Bootstrap))\\n#18 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-admin\\\\src\\\\Bootstrap.php(47): luya\\\\admin\\\\Bootstrap->getOrSetHasCache(Array, Object(Closure), 1800)\\n#19 [internal function]: luya\\\\admin\\\\Bootstrap->runQueueJob(Object(yii\\\\base\\\\Event))\\n#20 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Component.php(633): call_user_func(Array, Object(yii\\\\base\\\\Event))\\n#21 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php(381): yii\\\\base\\\\Component->trigger(\'beforeRequest\')\\n#22 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(251): yii\\\\base\\\\Application->run()\\n#23 C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-core\\\\base\\\\Boot.php(195): luya\\\\base\\\\Boot->applicationWeb()\\n#24 C:\\\\luya-kickstarter-bootstrap4\\\\public_html\\\\index.php(8): luya\\\\base\\\\Boot->run()\\n#25 {main}\",\"file\":\"C:\\\\luya-kickstarter-bootstrap4\\\\vendor\\\\luyadev\\\\luya-module-cms\\\\src\\\\models\\\\NavItemPageBlockItem.php\",\"line\":\"199\",\"created_at\":1702627430,\"updated_at\":1702627430}', NULL, '6', '{{%admin_queue_log_error}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_property`
--

CREATE TABLE `admin_property` (
  `id` int(11) NOT NULL,
  `module_name` varchar(120) DEFAULT NULL,
  `var_name` varchar(40) NOT NULL,
  `class_name` varchar(200) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `sort_index` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_property`
--

INSERT INTO `admin_property` (`id`, `module_name`, `var_name`, `class_name`, `created_at`, `updated_at`, `is_deleted`, `sort_index`) VALUES
(1, 'catalog', 'mainImage', 'siripravi\\catalog\\frontend\\properties\\MainImageProperty', 1701455421, 1701455421, 0, NULL),
(2, 'catalog', 'primaryColor', 'siripravi\\catalog\\frontend\\properties\\PrimaryColorProperty', 1701455421, 1701455421, 0, NULL),
(3, 'catalog', 'secondaryColor', 'siripravi\\catalog\\frontend\\properties\\SecondaryColorProperty', 1701455421, 1701455421, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_proxy_build`
--

CREATE TABLE `admin_proxy_build` (
  `id` int(11) NOT NULL,
  `machine_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `build_token` varchar(190) NOT NULL,
  `config` text NOT NULL,
  `is_complet` tinyint(1) DEFAULT 0,
  `expiration_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_proxy_machine`
--

CREATE TABLE `admin_proxy_machine` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `identifier` varchar(190) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `is_disabled` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_queue`
--

CREATE TABLE `admin_queue` (
  `id` int(11) NOT NULL,
  `channel` varchar(255) NOT NULL,
  `job` blob NOT NULL,
  `pushed_at` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) UNSIGNED NOT NULL DEFAULT 1024,
  `reserved_at` int(11) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `done_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_queue_log`
--

CREATE TABLE `admin_queue_log` (
  `id` int(11) NOT NULL,
  `queue_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `push_timestamp` int(11) NOT NULL,
  `run_timestamp` int(11) DEFAULT NULL,
  `end_timestamp` int(11) DEFAULT NULL,
  `is_error` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_queue_log`
--

INSERT INTO `admin_queue_log` (`id`, `queue_id`, `title`, `push_timestamp`, `run_timestamp`, `end_timestamp`, `is_error`) VALUES
(2, 2, 'luya\\admin\\jobs\\ScheduleJob (attempt: 5, PID: 9620)', 1702621377, 1702627430, 1702627430, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_queue_log_error`
--

CREATE TABLE `admin_queue_log_error` (
  `id` int(11) NOT NULL,
  `queue_log_id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `trace` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `line` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_queue_log_error`
--

INSERT INTO `admin_queue_log_error` (`id`, `queue_log_id`, `message`, `code`, `trace`, `file`, `line`, `created_at`, `updated_at`) VALUES
(1, 1, 'Undefined array key \"placeholder_var\"', '2', '#0 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php(199): yii\\base\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\luya-kicksta...\', 199)\n#1 [internal function]: luya\\cms\\models\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\db\\AfterSaveEvent))\n#2 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\db\\AfterSaveEvent))\n#3 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(1008): yii\\base\\Component->trigger(\'afterUpdate\', Object(yii\\db\\AfterSaveEvent))\n#4 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(834): yii\\db\\BaseActiveRecord->afterSave(false, Array)\n#5 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\ActiveRecord.php(680): yii\\db\\BaseActiveRecord->updateInternal(Array)\n#6 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(690): yii\\db\\ActiveRecord->update(true, Array)\n#7 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\models\\Scheduler.php(102): yii\\db\\BaseActiveRecord->save(true, Array)\n#8 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\jobs\\ScheduleJob.php(32): luya\\admin\\models\\Scheduler->triggerJob()\n#9 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\Queue.php(243): luya\\admin\\jobs\\ScheduleJob->execute(Object(yii\\queue\\db\\Queue))\n#10 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(147): yii\\queue\\Queue->handleMessage(1, \'O:27:\"luya\\\\admi...\', 300, 1)\n#11 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(79): yii\\queue\\cli\\Queue->handleMessage(1, \'O:27:\"luya\\\\admi...\', 300, 1)\n#12 [internal function]: yii\\queue\\db\\Queue->yii\\queue\\db\\{closure}(Object(Closure))\n#13 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\n#14 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(76): yii\\queue\\cli\\Queue->runWorker(Object(Closure))\n#15 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\apis\\CommonController.php(117): yii\\queue\\db\\Queue->run(false)\n#16 [internal function]: luya\\admin\\apis\\CommonController->actionSchedulerAdd()\n#17 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(57): call_user_func_array(Array, Array)\n#18 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Controller.php(178): yii\\base\\InlineAction->runWithParams(Array)\n#19 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Module.php(552): yii\\base\\Controller->runAction(\'scheduler-add\', Array)\n#20 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\web\\Application.php(103): yii\\base\\Module->runAction(\'admin/api-admin...\', Array)\n#21 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\web\\Application.php(52): yii\\web\\Application->handleRequest(Object(luya\\web\\Request))\n#22 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Application.php(384): luya\\web\\Application->handleRequest(Object(luya\\web\\Request))\n#23 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(251): yii\\base\\Application->run()\n#24 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(195): luya\\base\\Boot->applicationWeb()\n#25 C:\\luya-kickstarter-bootstrap4\\public_html\\index.php(8): luya\\base\\Boot->run()\n#26 {main}', 'C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php', '199', 1702621351, 1702621351),
(2, 2, 'Undefined array key \"placeholder_var\"', '2', '#0 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php(199): yii\\base\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\luya-kicksta...\', 199)\n#1 [internal function]: luya\\cms\\models\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\db\\AfterSaveEvent))\n#2 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\db\\AfterSaveEvent))\n#3 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(1008): yii\\base\\Component->trigger(\'afterUpdate\', Object(yii\\db\\AfterSaveEvent))\n#4 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(808): yii\\db\\BaseActiveRecord->afterSave(false, Array)\n#5 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\ActiveRecord.php(680): yii\\db\\BaseActiveRecord->updateInternal(Array)\n#6 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(690): yii\\db\\ActiveRecord->update(true, Array)\n#7 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\models\\Scheduler.php(102): yii\\db\\BaseActiveRecord->save(true, Array)\n#8 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\jobs\\ScheduleJob.php(32): luya\\admin\\models\\Scheduler->triggerJob()\n#9 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\Queue.php(243): luya\\admin\\jobs\\ScheduleJob->execute(Object(yii\\queue\\db\\Queue))\n#10 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(147): yii\\queue\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 1)\n#11 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(79): yii\\queue\\cli\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 1)\n#12 [internal function]: yii\\queue\\db\\Queue->yii\\queue\\db\\{closure}(Object(Closure))\n#13 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\n#14 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(76): yii\\queue\\cli\\Queue->runWorker(Object(Closure))\n#15 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\apis\\CommonController.php(117): yii\\queue\\db\\Queue->run(false)\n#16 [internal function]: luya\\admin\\apis\\CommonController->actionSchedulerAdd()\n#17 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(57): call_user_func_array(Array, Array)\n#18 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Controller.php(178): yii\\base\\InlineAction->runWithParams(Array)\n#19 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Module.php(552): yii\\base\\Controller->runAction(\'scheduler-add\', Array)\n#20 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\web\\Application.php(103): yii\\base\\Module->runAction(\'admin/api-admin...\', Array)\n#21 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\web\\Application.php(52): yii\\web\\Application->handleRequest(Object(luya\\web\\Request))\n#22 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Application.php(384): luya\\web\\Application->handleRequest(Object(luya\\web\\Request))\n#23 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(251): yii\\base\\Application->run()\n#24 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(195): luya\\base\\Boot->applicationWeb()\n#25 C:\\luya-kickstarter-bootstrap4\\public_html\\index.php(8): luya\\base\\Boot->run()\n#26 {main}', 'C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php', '199', 1702621379, 1702621379),
(3, 2, 'Undefined array key \"placeholder_var\"', '2', '#0 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php(199): yii\\base\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\luya-kicksta...\', 199)\n#1 [internal function]: luya\\cms\\models\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\db\\AfterSaveEvent))\n#2 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\db\\AfterSaveEvent))\n#3 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(1008): yii\\base\\Component->trigger(\'afterUpdate\', Object(yii\\db\\AfterSaveEvent))\n#4 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(808): yii\\db\\BaseActiveRecord->afterSave(false, Array)\n#5 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\ActiveRecord.php(680): yii\\db\\BaseActiveRecord->updateInternal(Array)\n#6 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(690): yii\\db\\ActiveRecord->update(true, Array)\n#7 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\models\\Scheduler.php(102): yii\\db\\BaseActiveRecord->save(true, Array)\n#8 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\jobs\\ScheduleJob.php(32): luya\\admin\\models\\Scheduler->triggerJob()\n#9 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\Queue.php(243): luya\\admin\\jobs\\ScheduleJob->execute(Object(yii\\queue\\db\\Queue))\n#10 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(147): yii\\queue\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 2)\n#11 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(79): yii\\queue\\cli\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 2)\n#12 [internal function]: yii\\queue\\db\\Queue->yii\\queue\\db\\{closure}(Object(Closure))\n#13 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\n#14 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(76): yii\\queue\\cli\\Queue->runWorker(Object(Closure))\n#15 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\Bootstrap.php(52): yii\\queue\\db\\Queue->run(false)\n#16 [internal function]: luya\\admin\\Bootstrap->luya\\admin\\{closure}(Object(luya\\admin\\Bootstrap))\n#17 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\traits\\CacheableTrait.php(110): call_user_func(Object(Closure), Object(luya\\admin\\Bootstrap))\n#18 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\Bootstrap.php(47): luya\\admin\\Bootstrap->getOrSetHasCache(Array, Object(Closure), 1800)\n#19 [internal function]: luya\\admin\\Bootstrap->runQueueJob(Object(yii\\base\\Event))\n#20 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\base\\Event))\n#21 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Application.php(381): yii\\base\\Component->trigger(\'beforeRequest\')\n#22 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(251): yii\\base\\Application->run()\n#23 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(195): luya\\base\\Boot->applicationWeb()\n#24 C:\\luya-kickstarter-bootstrap4\\public_html\\index.php(8): luya\\base\\Boot->run()\n#25 {main}', 'C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php', '199', 1702622895, 1702622895),
(4, 2, 'Undefined array key \"placeholder_var\"', '2', '#0 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php(199): yii\\base\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\luya-kicksta...\', 199)\n#1 [internal function]: luya\\cms\\models\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\db\\AfterSaveEvent))\n#2 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\db\\AfterSaveEvent))\n#3 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(1008): yii\\base\\Component->trigger(\'afterUpdate\', Object(yii\\db\\AfterSaveEvent))\n#4 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(808): yii\\db\\BaseActiveRecord->afterSave(false, Array)\n#5 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\ActiveRecord.php(680): yii\\db\\BaseActiveRecord->updateInternal(Array)\n#6 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(690): yii\\db\\ActiveRecord->update(true, Array)\n#7 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\models\\Scheduler.php(102): yii\\db\\BaseActiveRecord->save(true, Array)\n#8 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\jobs\\ScheduleJob.php(32): luya\\admin\\models\\Scheduler->triggerJob()\n#9 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\Queue.php(243): luya\\admin\\jobs\\ScheduleJob->execute(Object(yii\\queue\\db\\Queue))\n#10 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(147): yii\\queue\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 3)\n#11 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(79): yii\\queue\\cli\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 3)\n#12 [internal function]: yii\\queue\\db\\Queue->yii\\queue\\db\\{closure}(Object(Closure))\n#13 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\n#14 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(76): yii\\queue\\cli\\Queue->runWorker(Object(Closure))\n#15 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\Bootstrap.php(52): yii\\queue\\db\\Queue->run(false)\n#16 [internal function]: luya\\admin\\Bootstrap->luya\\admin\\{closure}(Object(luya\\admin\\Bootstrap))\n#17 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\traits\\CacheableTrait.php(110): call_user_func(Object(Closure), Object(luya\\admin\\Bootstrap))\n#18 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\Bootstrap.php(47): luya\\admin\\Bootstrap->getOrSetHasCache(Array, Object(Closure), 1800)\n#19 [internal function]: luya\\admin\\Bootstrap->runQueueJob(Object(yii\\base\\Event))\n#20 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\base\\Event))\n#21 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Application.php(381): yii\\base\\Component->trigger(\'beforeRequest\')\n#22 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(251): yii\\base\\Application->run()\n#23 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(195): luya\\base\\Boot->applicationWeb()\n#24 C:\\luya-kickstarter-bootstrap4\\public_html\\index.php(8): luya\\base\\Boot->run()\n#25 {main}', 'C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php', '199', 1702624408, 1702624408),
(5, 2, 'Undefined array key \"placeholder_var\"', '2', '#0 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php(199): yii\\base\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\luya-kicksta...\', 199)\n#1 [internal function]: luya\\cms\\models\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\db\\AfterSaveEvent))\n#2 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\db\\AfterSaveEvent))\n#3 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(1008): yii\\base\\Component->trigger(\'afterUpdate\', Object(yii\\db\\AfterSaveEvent))\n#4 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(808): yii\\db\\BaseActiveRecord->afterSave(false, Array)\n#5 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\ActiveRecord.php(680): yii\\db\\BaseActiveRecord->updateInternal(Array)\n#6 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(690): yii\\db\\ActiveRecord->update(true, Array)\n#7 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\models\\Scheduler.php(102): yii\\db\\BaseActiveRecord->save(true, Array)\n#8 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\jobs\\ScheduleJob.php(32): luya\\admin\\models\\Scheduler->triggerJob()\n#9 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\Queue.php(243): luya\\admin\\jobs\\ScheduleJob->execute(Object(yii\\queue\\db\\Queue))\n#10 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(147): yii\\queue\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 4)\n#11 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(79): yii\\queue\\cli\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 4)\n#12 [internal function]: yii\\queue\\db\\Queue->yii\\queue\\db\\{closure}(Object(Closure))\n#13 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\n#14 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(76): yii\\queue\\cli\\Queue->runWorker(Object(Closure))\n#15 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\Bootstrap.php(52): yii\\queue\\db\\Queue->run(false)\n#16 [internal function]: luya\\admin\\Bootstrap->luya\\admin\\{closure}(Object(luya\\admin\\Bootstrap))\n#17 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\traits\\CacheableTrait.php(110): call_user_func(Object(Closure), Object(luya\\admin\\Bootstrap))\n#18 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\Bootstrap.php(47): luya\\admin\\Bootstrap->getOrSetHasCache(Array, Object(Closure), 1800)\n#19 [internal function]: luya\\admin\\Bootstrap->runQueueJob(Object(yii\\base\\Event))\n#20 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\base\\Event))\n#21 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Application.php(381): yii\\base\\Component->trigger(\'beforeRequest\')\n#22 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(251): yii\\base\\Application->run()\n#23 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(195): luya\\base\\Boot->applicationWeb()\n#24 C:\\luya-kickstarter-bootstrap4\\public_html\\index.php(8): luya\\base\\Boot->run()\n#25 {main}', 'C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php', '199', 1702625919, 1702625919),
(6, 2, 'Undefined array key \"placeholder_var\"', '2', '#0 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php(199): yii\\base\\ErrorHandler->handleError(2, \'Undefined array...\', \'C:\\\\luya-kicksta...\', 199)\n#1 [internal function]: luya\\cms\\models\\NavItemPageBlockItem->eventAfterUpdate(Object(yii\\db\\AfterSaveEvent))\n#2 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\db\\AfterSaveEvent))\n#3 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(1008): yii\\base\\Component->trigger(\'afterUpdate\', Object(yii\\db\\AfterSaveEvent))\n#4 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(808): yii\\db\\BaseActiveRecord->afterSave(false, Array)\n#5 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\ActiveRecord.php(680): yii\\db\\BaseActiveRecord->updateInternal(Array)\n#6 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\db\\BaseActiveRecord.php(690): yii\\db\\ActiveRecord->update(true, Array)\n#7 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\models\\Scheduler.php(102): yii\\db\\BaseActiveRecord->save(true, Array)\n#8 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\jobs\\ScheduleJob.php(32): luya\\admin\\models\\Scheduler->triggerJob()\n#9 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\Queue.php(243): luya\\admin\\jobs\\ScheduleJob->execute(Object(yii\\queue\\db\\Queue))\n#10 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(147): yii\\queue\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 5)\n#11 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(79): yii\\queue\\cli\\Queue->handleMessage(2, \'O:27:\"luya\\\\admi...\', 300, 5)\n#12 [internal function]: yii\\queue\\db\\Queue->yii\\queue\\db\\{closure}(Object(Closure))\n#13 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\cli\\Queue.php(114): call_user_func(Object(Closure), Object(Closure))\n#14 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2-queue\\src\\drivers\\db\\Queue.php(76): yii\\queue\\cli\\Queue->runWorker(Object(Closure))\n#15 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\Bootstrap.php(52): yii\\queue\\db\\Queue->run(false)\n#16 [internal function]: luya\\admin\\Bootstrap->luya\\admin\\{closure}(Object(luya\\admin\\Bootstrap))\n#17 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\traits\\CacheableTrait.php(110): call_user_func(Object(Closure), Object(luya\\admin\\Bootstrap))\n#18 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-admin\\src\\Bootstrap.php(47): luya\\admin\\Bootstrap->getOrSetHasCache(Array, Object(Closure), 1800)\n#19 [internal function]: luya\\admin\\Bootstrap->runQueueJob(Object(yii\\base\\Event))\n#20 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Component.php(633): call_user_func(Array, Object(yii\\base\\Event))\n#21 C:\\luya-kickstarter-bootstrap4\\vendor\\yiisoft\\yii2\\base\\Application.php(381): yii\\base\\Component->trigger(\'beforeRequest\')\n#22 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(251): yii\\base\\Application->run()\n#23 C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-core\\base\\Boot.php(195): luya\\base\\Boot->applicationWeb()\n#24 C:\\luya-kickstarter-bootstrap4\\public_html\\index.php(8): luya\\base\\Boot->run()\n#25 {main}', 'C:\\luya-kickstarter-bootstrap4\\vendor\\luyadev\\luya-module-cms\\src\\models\\NavItemPageBlockItem.php', '199', 1702627430, 1702627430);

-- --------------------------------------------------------

--
-- Table structure for table `admin_scheduler`
--

CREATE TABLE `admin_scheduler` (
  `id` int(11) NOT NULL,
  `model_class` varchar(255) NOT NULL,
  `primary_key` varchar(255) NOT NULL,
  `target_attribute_name` varchar(255) NOT NULL,
  `new_attribute_value` varchar(255) NOT NULL,
  `old_attribute_value` varchar(255) DEFAULT NULL,
  `schedule_timestamp` int(11) NOT NULL,
  `is_done` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_scheduler`
--

INSERT INTO `admin_scheduler` (`id`, `model_class`, `primary_key`, `target_attribute_name`, `new_attribute_value`, `old_attribute_value`, `schedule_timestamp`, `is_done`) VALUES
(2, 'luya\\cms\\models\\NavItemPageBlockItem', '4', 'is_hidden', '0', NULL, 1702621332, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_search_data`
--

CREATE TABLE `admin_search_data` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp_create` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `num_rows` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_session`
--

CREATE TABLE `admin_session` (
  `id` char(64) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_storage_effect`
--

CREATE TABLE `admin_storage_effect` (
  `id` int(11) NOT NULL,
  `identifier` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `imagine_name` varchar(255) DEFAULT NULL,
  `imagine_json_params` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_storage_effect`
--

INSERT INTO `admin_storage_effect` (`id`, `identifier`, `name`, `imagine_name`, `imagine_json_params`) VALUES
(1, 'thumbnail', 'Thumbnail', 'thumbnail', '{\"vars\":[{\"var\":\"width\",\"label\":\"Breit in Pixel\"},{\"var\":\"height\",\"label\":\"Hoehe in Pixel\"},{\"var\":\"mode\",\"label\":\"outbound or inset\"},{\"var\":\"saveOptions\",\"label\":\"save options\"}]}'),
(2, 'crop', 'Crop', 'crop', '{\"vars\":[{\"var\":\"width\",\"label\":\"Breit in Pixel\"},{\"var\":\"height\",\"label\":\"Hoehe in Pixel\"},{\"var\":\"saveOptions\",\"label\":\"save options\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `admin_storage_file`
--

CREATE TABLE `admin_storage_file` (
  `id` int(11) NOT NULL,
  `is_hidden` tinyint(1) DEFAULT 0,
  `folder_id` int(11) DEFAULT 0,
  `name_original` varchar(255) DEFAULT NULL,
  `name_new` varchar(255) DEFAULT NULL,
  `name_new_compound` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `hash_file` varchar(255) DEFAULT NULL,
  `hash_name` varchar(255) DEFAULT NULL,
  `upload_timestamp` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT 0,
  `upload_user_id` int(11) DEFAULT 0,
  `is_deleted` tinyint(1) DEFAULT 0,
  `passthrough_file` tinyint(1) DEFAULT 0,
  `passthrough_file_password` varchar(40) DEFAULT NULL,
  `passthrough_file_stats` int(11) DEFAULT 0,
  `caption` text DEFAULT NULL,
  `inline_disposition` tinyint(1) DEFAULT 0,
  `update_timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_storage_file`
--

INSERT INTO `admin_storage_file` (`id`, `is_hidden`, `folder_id`, `name_original`, `name_new`, `name_new_compound`, `mime_type`, `extension`, `hash_file`, `hash_name`, `upload_timestamp`, `file_size`, `upload_user_id`, `is_deleted`, `passthrough_file`, `passthrough_file_password`, `passthrough_file_stats`, `caption`, `inline_disposition`, `update_timestamp`) VALUES
(1, 0, 0, 'background.jpg', 'background', 'background_7479ffd7.jpg', 'image/jpeg', 'jpg', '1086924feaee626ef7f207457c629395', '7479ffd7', 1701456844, 466161, 1, 0, 0, NULL, 0, NULL, 0, 1701456844),
(2, 0, 0, 'wallpaper-header.jpg', 'wallpaper-header', 'wallpaper-header_e7b10580.jpg', 'image/jpeg', 'jpg', '7838efc76470a910c820883a9039783d', 'e7b10580', 1701457181, 235479, 1, 0, 0, NULL, 0, NULL, 0, 1701457181),
(3, 0, 0, 'service.jpg', 'service', 'service_f1d1a4a3.jpg', 'image/jpeg', 'jpg', 'b334b1d9f070a2b268b54a4f21115257', 'f1d1a4a3', 1701457266, 81689, 1, 0, 0, NULL, 0, NULL, 0, 1701457266),
(4, 0, 0, 'team-1.jpg', 'team-1', 'team-1_bb8f120f.jpg', 'image/jpeg', 'jpg', '6d9188afa2250b3186066fb28a2be23c', 'bb8f120f', 1701457348, 17144, 1, 0, 0, NULL, 0, NULL, 0, 1701457348),
(5, 0, 0, 'team-2.jpg', 'team-2', 'team-2_010f90e4.jpg', 'image/jpeg', 'jpg', '93d35053a4e35c26ce32682bdfd68b01', '010f90e4', 1701457361, 12969, 1, 0, 0, NULL, 0, NULL, 0, 1701457361),
(6, 0, 0, 'team-3.jpg', 'team-3', 'team-3_23b44480.jpg', 'image/jpeg', 'jpg', '30fcf193ba7939efa0d12c8843c22a0c', '23b44480', 1701457375, 27060, 1, 0, 0, NULL, 0, NULL, 0, 1701457375),
(7, 0, 0, 'hero.jpg', 'hero', 'hero_6609a51e.jpg', 'image/jpeg', 'jpg', '36c7d351382bff7ca147fe74f2c46079', '6609a51e', 1701457536, 145988, 1, 0, 0, NULL, 0, NULL, 0, 1701457536),
(8, 0, 0, 'main.jpeg', 'main', 'main_f02545c1.jpeg', 'image/jpeg', 'jpeg', 'c2261b0c1be04193f40115ccea34a823', 'f02545c1', 1701457670, 226645, 1, 0, 0, NULL, 0, NULL, 0, 1701457670),
(9, 0, 0, 'cake-3.jpg', 'cake-3', 'cake-3_6014e8ed.jpg', 'image/jpeg', 'jpg', 'b8888758fc435b042437b13df1b90062', '6014e8ed', 1701457714, 3756, 1, 0, 0, NULL, 0, NULL, 0, 1701457714),
(10, 0, 0, 'food.jpg', 'food', 'food_d15c4c2c.jpg', 'image/jpeg', 'jpg', 'e9f25f9e9daf2e355e7c44b5877c46ba', 'd15c4c2c', 1701457770, 1313772, 1, 0, 0, NULL, 0, NULL, 0, 1701457770),
(11, 0, 0, 'menu.jpg', 'menu', 'menu_b554dca6.jpg', 'image/jpeg', 'jpg', '668ae73d7b9ead7c0594c4fdc228088b', 'b554dca6', 1701457917, 75218, 1, 0, 0, NULL, 0, NULL, 0, 1701457917),
(12, 0, 0, 'cake-2.jpg', 'cake-2', 'cake-2_c1a4c1ec.jpg', 'image/jpeg', 'jpg', '49af060e60bab77851c6f456472b1d92', 'c1a4c1ec', 1701457970, 3239, 1, 0, 0, NULL, 0, NULL, 0, 1701457970),
(13, 0, 0, 'DSCN3070.JPG', 'dscn3070', 'dscn3070_47e227dc.jpg', 'image/jpeg', 'jpg', 'f30c70c09564f0ce3368c23cb0124023', '47e227dc', 1701484994, 2108333, 1, 0, 0, NULL, 0, NULL, 0, 1701484994),
(14, 0, 0, 'DSCN4124.JPG', 'dscn4124', 'dscn4124_46182e7d.jpg', 'image/jpeg', 'jpg', 'ed6683a02340a1bc779813b559e29f42', '46182e7d', 1701485042, 2090490, 1, 0, 0, NULL, 0, NULL, 0, 1701485042),
(15, 0, 0, 'DSCN4153.JPG', 'dscn4153', 'dscn4153_c5de8c38.jpg', 'image/jpeg', 'jpg', '292ada33b0d6ab60ea4d71242693f07c', 'c5de8c38', 1701485109, 2145613, 1, 0, 0, NULL, 0, NULL, 0, 1701485109),
(16, 0, 0, 'DSCN4155.JPG', 'dscn4155', 'dscn4155_e8ea4cce.jpg', 'image/jpeg', 'jpg', '25a9bc68814e0b79bf2ea1c1bc99d188', 'e8ea4cce', 1701485109, 2210101, 1, 0, 0, NULL, 0, NULL, 0, 1701485109),
(17, 0, 0, 'DSCN4157.JPG', 'dscn4157', 'dscn4157_35d45367.jpg', 'image/jpeg', 'jpg', '779fdb08fad63908e200e54d75777a3c', '35d45367', 1701485110, 2308614, 1, 0, 0, NULL, 0, NULL, 0, 1701485110),
(18, 0, 0, 'DSCN4158.JPG', 'dscn4158', 'dscn4158_1a876e32.jpg', 'image/jpeg', 'jpg', '7010c2b57610136ec685be79a97d7c8c', '1a876e32', 1701485110, 2126838, 1, 0, 0, NULL, 0, NULL, 0, 1701485110),
(19, 0, 0, 'DSCN4160.JPG', 'dscn4160', 'dscn4160_06be5247.jpg', 'image/jpeg', 'jpg', '00bdc599cd5483719fb3477b3eda470f', '06be5247', 1701485111, 2297791, 1, 0, 0, NULL, 0, NULL, 0, 1701485111),
(20, 0, 0, 'DSCN3068.JPG', 'dscn3068', 'dscn3068_fbae9c09.jpg', 'image/jpeg', 'jpg', '657133dccd3c13ff2feb1736554988ab', 'fbae9c09', 1701485302, 2042621, 1, 0, 0, NULL, 0, NULL, 0, 1701485302),
(21, 0, 0, 'DSCN3069.JPG', 'dscn3069', 'dscn3069_01058c7c.jpg', 'image/jpeg', 'jpg', 'e1057e26681522dff10760de22b5a2ad', '01058c7c', 1701485461, 2185481, 1, 0, 0, NULL, 0, NULL, 0, 1701485461),
(22, 0, 0, 'DSCN3068.JPG', 'dscn3068', 'dscn3068_47f4b343.jpg', 'image/jpeg', 'jpg', '657133dccd3c13ff2feb1736554988ab', '47f4b343', 1701486287, 2042621, 1, 0, 0, NULL, 0, NULL, 0, 1701486287),
(23, 0, 0, 'Copy of 969591_353205668136069_260131175_n.jpg', 'copy-of-969591-353205668136069-260131175-n', 'copy-of-969591-353205668136069-260131175-n_dbc481c5.jpg', 'image/jpeg', 'jpg', '74d65b06032b56214913ff84cea7af37', 'dbc481c5', 1701486513, 82565, 1, 0, 0, NULL, 0, NULL, 0, 1701486513),
(24, 0, 0, 'Copy (2) of 8649_359303160859653_1471872640_n.jpg', 'copy-2-of-8649-359303160859653-1471872640-n', 'copy-2-of-8649-359303160859653-1471872640-n_e0b31ae0.jpg', 'image/jpeg', 'jpg', '2163cbf388fbda54131c32581acda074', 'e0b31ae0', 1701486699, 28597, 1, 0, 0, NULL, 0, NULL, 0, 1701486699),
(25, 0, 0, 'Copy of 969930_380158885440747_788752854_n.jpg', 'copy-of-969930-380158885440747-788752854-n', 'copy-of-969930-380158885440747-788752854-n_eb02ff2f.jpg', 'image/jpeg', 'jpg', 'a56d320e84cc075ed6e9160acbf9097e', 'eb02ff2f', 1701525395, 30911, 1, 0, 0, NULL, 0, NULL, 0, 1701525395),
(26, 0, 0, 'cupcake (10).png', 'cupcake-10', 'cupcake-10_cecb3953.png', 'image/png', 'png', 'b947fe82bc713f8c891847f60382b966', 'cecb3953', 1701569002, 1112994, 1, 0, 0, NULL, 0, NULL, 0, 1701569002),
(27, 0, 0, '2.jpg', '2', '2_4e02b7a5.jpg', 'image/jpeg', 'jpg', 'eed6eeed1dc5bf1bc3cce28291fdc8f1', '4e02b7a5', 1701831152, 40055, 1, 0, 0, NULL, 0, NULL, 0, 1701831152),
(28, 0, 0, '1.jpg', '1', '1_3b75a1e0.jpg', 'image/jpeg', 'jpg', '214d048bd79d7861146a4446f22e255a', '3b75a1e0', 1701831227, 94066, 1, 0, 0, NULL, 0, NULL, 0, 1701831227),
(29, 0, 0, '3.jpg', '3', '3_d94b5339.jpg', 'image/jpeg', 'jpg', 'ad6196a35bfbb197858915ab02c9c7e0', 'd94b5339', 1701831395, 32544, 1, 0, 0, NULL, 0, NULL, 0, 1701831395),
(30, 0, 0, '0_biscuits-06_fdaf7dd3.jpg', '0-biscuits-06-fdaf7dd3', '0-biscuits-06-fdaf7dd3_deda9bfb.jpg', 'image/jpeg', 'jpg', '3b8c76249f156e7297d0dbd3f2977cb3', 'deda9bfb', 1702619674, 74954, 1, 0, 0, NULL, 0, NULL, 0, 1702619674);

-- --------------------------------------------------------

--
-- Table structure for table `admin_storage_filter`
--

CREATE TABLE `admin_storage_filter` (
  `id` int(11) NOT NULL,
  `identifier` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_storage_filter`
--

INSERT INTO `admin_storage_filter` (`id`, `identifier`, `name`) VALUES
(1, 'large-crop', 'Crop large (800x800)'),
(2, 'large-thumbnail', 'Thumbnail large (800xnull)'),
(3, 'medium-crop', 'Crop medium (300x300)'),
(4, 'medium-thumbnail', 'Thumbnail medium (300xnull)'),
(5, 'small-crop', 'Crop small (100x100)'),
(6, 'small-landscape', 'Landscape small (150x50)'),
(7, 'small-thumbnail', 'Thumbnail small (100xnull)'),
(8, 'tiny-crop', 'Crop tiny (40x40)'),
(9, 'tiny-thumbnail', 'Thumbnail tiny (40xnull)'),
(10, 'my-filter', 'my App Filter');

-- --------------------------------------------------------

--
-- Table structure for table `admin_storage_filter_chain`
--

CREATE TABLE `admin_storage_filter_chain` (
  `id` int(11) NOT NULL,
  `sort_index` int(11) DEFAULT NULL,
  `filter_id` int(11) DEFAULT NULL,
  `effect_id` int(11) DEFAULT NULL,
  `effect_json_values` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_storage_filter_chain`
--

INSERT INTO `admin_storage_filter_chain` (`id`, `sort_index`, `filter_id`, `effect_id`, `effect_json_values`) VALUES
(1, NULL, 1, 1, '{\"width\":800,\"height\":800}'),
(2, NULL, 2, 1, '{\"width\":800,\"height\":null}'),
(3, NULL, 3, 1, '{\"width\":300,\"height\":300}'),
(4, NULL, 4, 1, '{\"width\":300,\"height\":null}'),
(5, NULL, 5, 1, '{\"width\":100,\"height\":100}'),
(6, NULL, 6, 1, '{\"width\":150,\"height\":50}'),
(7, NULL, 7, 1, '{\"width\":100,\"height\":null}'),
(8, NULL, 8, 1, '{\"width\":40,\"height\":40}'),
(9, NULL, 9, 1, '{\"width\":40,\"height\":null}'),
(10, NULL, 10, 1, '{\"width\":100,\"height\":100}');

-- --------------------------------------------------------

--
-- Table structure for table `admin_storage_folder`
--

CREATE TABLE `admin_storage_folder` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `timestamp_create` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_storage_image`
--

CREATE TABLE `admin_storage_image` (
  `id` int(11) NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `filter_id` int(11) DEFAULT NULL,
  `resolution_width` int(11) DEFAULT NULL,
  `resolution_height` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_storage_image`
--

INSERT INTO `admin_storage_image` (`id`, `file_id`, `filter_id`, `resolution_width`, `resolution_height`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 40, 40, 1701456845, 1701456845),
(2, 1, 4, 300, 169, 1701456845, 1701456845),
(3, 1, 0, 1366, 768, 1701456848, 1701456848),
(4, 1, 1, 800, 768, 1701457143, 1701457143),
(5, 2, 8, 40, 40, 1701457182, 1701457182),
(6, 2, 4, 300, 188, 1701457182, 1701457182),
(7, 2, 1, 800, 800, 1701457183, 1701457183),
(8, 2, 0, 1280, 800, 1701457200, 1701457200),
(9, 3, 8, 40, 40, 1701457267, 1701457267),
(10, 3, 4, 300, 169, 1701457267, 1701457267),
(11, 3, 0, 1920, 1080, 1701457269, 1701457269),
(12, 4, 8, 40, 40, 1701457348, 1701457348),
(13, 4, 4, 300, 300, 1701457348, 1701457348),
(14, 4, 0, 500, 500, 1701457350, 1701457350),
(15, 5, 8, 40, 40, 1701457362, 1701457362),
(16, 5, 4, 300, 300, 1701457362, 1701457362),
(17, 5, 0, 500, 500, 1701457364, 1701457364),
(18, 6, 8, 40, 40, 1701457376, 1701457376),
(19, 6, 4, 300, 300, 1701457376, 1701457376),
(20, 6, 0, 500, 500, 1701457378, 1701457378),
(21, 7, 8, 40, 40, 1701457537, 1701457537),
(22, 7, 4, 300, 169, 1701457537, 1701457537),
(23, 7, 0, 1920, 1080, 1701457540, 1701457540),
(24, 7, 3, 300, 300, 1701457551, 1701457551),
(25, 8, 8, 40, 40, 1701457671, 1701457671),
(26, 8, 4, 300, 123, 1701457671, 1701457671),
(27, 8, 0, 1670, 680, 1701457675, 1701457675),
(28, 9, 8, 40, 40, 1701457714, 1701457714),
(29, 9, 4, 150, 85, 1701457714, 1701457714),
(30, 9, 0, 150, 85, 1701457721, 1701457721),
(31, 9, 3, 150, 85, 1701457730, 1701457730),
(32, 10, 8, 40, 40, 1701457771, 1701457771),
(33, 10, 4, 300, 201, 1701457771, 1701457771),
(34, 10, 3, 300, 300, 1701457773, 1701457773),
(35, 1, 3, 300, 300, 1701457889, 1701457889),
(36, 11, 8, 40, 40, 1701457918, 1701457918),
(37, 11, 4, 300, 215, 1701457918, 1701457918),
(38, 11, 0, 600, 430, 1701457922, 1701457922),
(39, 12, 8, 40, 40, 1701457970, 1701457970),
(40, 12, 4, 150, 85, 1701457970, 1701457970),
(41, 12, 0, 150, 85, 1701457973, 1701457973),
(42, 12, 3, 150, 85, 1701457978, 1701457978),
(43, 10, 0, 2500, 1667, 1701458445, 1701458445),
(44, 10, 1, 800, 800, 1701458452, 1701458452),
(45, 9, 1, 150, 85, 1701458499, 1701458499),
(46, 13, 8, 40, 40, 1701484995, 1701484995),
(47, 13, 4, 300, 225, 1701484996, 1701484996),
(48, 13, 1, 800, 800, 1701485012, 1701485012),
(49, 14, 8, 40, 40, 1701485043, 1701485043),
(50, 14, 4, 300, 225, 1701485043, 1701485043),
(51, 14, 0, 3648, 2736, 1701485052, 1701485052),
(52, 14, 1, 800, 800, 1701485062, 1701485062),
(53, 15, 8, 40, 40, 1701485111, 1701485111),
(54, 15, 4, 300, 225, 1701485112, 1701485112),
(55, 16, 8, 40, 40, 1701485112, 1701485112),
(56, 16, 4, 300, 225, 1701485112, 1701485112),
(57, 17, 8, 40, 40, 1701485113, 1701485113),
(58, 17, 4, 300, 225, 1701485113, 1701485113),
(59, 18, 8, 40, 40, 1701485114, 1701485114),
(60, 18, 4, 300, 225, 1701485114, 1701485114),
(61, 19, 8, 40, 40, 1701485114, 1701485114),
(62, 19, 4, 300, 225, 1701485115, 1701485115),
(63, 19, 0, 3648, 2736, 1701485134, 1701485134),
(64, 19, 3, 300, 300, 1701485135, 1701485135),
(65, 18, 0, 3648, 2736, 1701485136, 1701485136),
(66, 18, 3, 300, 300, 1701485137, 1701485137),
(67, 16, 0, 3648, 2736, 1701485137, 1701485137),
(68, 16, 3, 300, 300, 1701485138, 1701485138),
(69, 14, 3, 300, 300, 1701485139, 1701485139),
(70, 15, 0, 3648, 2736, 1701485140, 1701485140),
(71, 15, 3, 300, 300, 1701485141, 1701485141),
(72, 20, 8, 40, 40, 1701485303, 1701485303),
(73, 20, 4, 300, 225, 1701485303, 1701485303),
(74, 20, 0, 3648, 2736, 1701485323, 1701485323),
(75, 20, 1, 800, 800, 1701485331, 1701485331),
(76, 21, 8, 40, 40, 1701485461, 1701485461),
(77, 21, 4, 300, 225, 1701485462, 1701485462),
(78, 21, 0, 3648, 2736, 1701485467, 1701485467),
(79, 21, 1, 800, 800, 1701485472, 1701485472),
(80, 20, 3, 300, 300, 1701485906, 1701485906),
(81, 22, 8, 40, 40, 1701486287, 1701486287),
(82, 22, 4, 300, 225, 1701486288, 1701486288),
(83, 22, 1, 800, 800, 1701486297, 1701486297),
(84, 23, 8, 40, 40, 1701486514, 1701486514),
(85, 23, 4, 300, 438, 1701486514, 1701486514),
(86, 23, 1, 565, 800, 1701486531, 1701486531),
(87, 24, 8, 40, 40, 1701486699, 1701486699),
(88, 24, 4, 300, 400, 1701486699, 1701486699),
(89, 23, 3, 300, 300, 1701486701, 1701486701),
(90, 25, 8, 40, 40, 1701525396, 1701525396),
(91, 25, 4, 300, 201, 1701525396, 1701525396),
(92, 25, 3, 300, 300, 1701525400, 1701525400),
(93, 26, 8, 40, 40, 1701569003, 1701569003),
(94, 26, 4, 300, 300, 1701569003, 1701569003),
(95, 26, 0, 1000, 1000, 1701569007, 1701569007),
(96, 22, 3, 300, 300, 1701675544, 1701675544),
(97, 13, 3, 300, 300, 1701675585, 1701675585),
(98, 19, 1, 800, 800, 1701685001, 1701685001),
(99, 18, 1, 800, 800, 1701685002, 1701685002),
(100, 16, 1, 800, 800, 1701685002, 1701685002),
(101, 15, 1, 800, 800, 1701685003, 1701685003),
(102, 19, 2, 800, 600, 1701685090, 1701685090),
(103, 18, 2, 800, 600, 1701685090, 1701685090),
(104, 16, 2, 800, 600, 1701685091, 1701685091),
(105, 14, 2, 800, 600, 1701685091, 1701685091),
(106, 15, 2, 800, 600, 1701685092, 1701685092),
(107, 27, 8, 40, 40, 1701831152, 1701831152),
(108, 27, 4, 300, 300, 1701831152, 1701831152),
(109, 27, 0, 400, 400, 1701831156, 1701831156),
(110, 28, 8, 40, 40, 1701831228, 1701831228),
(111, 28, 4, 300, 169, 1701831228, 1701831228),
(112, 28, 0, 1280, 720, 1701831236, 1701831236),
(113, 28, 1, 800, 720, 1701831254, 1701831254),
(114, 29, 8, 40, 40, 1701831395, 1701831395),
(115, 29, 4, 300, 300, 1701831395, 1701831395),
(116, 24, 1, 360, 480, 1701831408, 1701831408),
(117, 24, 3, 300, 300, 1701831420, 1701831420),
(118, 28, 3, 300, 300, 1701831866, 1701831866),
(119, 27, 3, 300, 300, 1701831867, 1701831867),
(120, 24, 0, 360, 480, 1701831870, 1701831870),
(121, 27, 1, 400, 400, 1701831968, 1701831968),
(122, 13, 0, 3648, 2736, 1701832026, 1701832026),
(123, 22, 10, 100, 100, 1702353134, 1702353134),
(124, 23, 10, 100, 100, 1702353135, 1702353135),
(125, 14, 10, 100, 100, 1702409632, 1702409632),
(126, 24, 10, 100, 100, 1702409775, 1702409775),
(127, 29, 0, 720, 720, 1702530940, 1702530940),
(128, 25, 0, 500, 334, 1702531263, 1702531263),
(129, 30, 8, 40, 40, 1702619688, 1702619688),
(130, 30, 4, 300, 200, 1702619688, 1702619688),
(131, 30, 1, 800, 800, 1702619694, 1702619694),
(132, 30, 3, 300, 300, 1702619698, 1702619698);

-- --------------------------------------------------------

--
-- Table structure for table `admin_tag`
--

CREATE TABLE `admin_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `translation` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_tag_relation`
--

CREATE TABLE `admin_tag_relation` (
  `tag_id` int(11) NOT NULL,
  `table_name` varchar(120) NOT NULL,
  `pk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `title` smallint(1) DEFAULT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_salt` varchar(255) DEFAULT NULL,
  `auth_token` varchar(190) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `secure_token` varchar(40) DEFAULT NULL,
  `secure_token_timestamp` int(11) DEFAULT 0,
  `force_reload` tinyint(1) DEFAULT 0,
  `settings` text DEFAULT NULL,
  `cookie_token` varchar(255) DEFAULT NULL,
  `is_api_user` tinyint(1) DEFAULT 0,
  `api_rate_limit` int(11) DEFAULT NULL,
  `api_allowed_ips` varchar(255) DEFAULT NULL,
  `api_last_activity` int(11) DEFAULT NULL,
  `email_verification_token` varchar(40) DEFAULT NULL,
  `email_verification_token_timestamp` int(11) DEFAULT NULL,
  `login_attempt` int(11) DEFAULT NULL,
  `login_attempt_lock_expiration` int(11) DEFAULT NULL,
  `is_request_logger_enabled` tinyint(1) DEFAULT 0,
  `login_2fa_enabled` tinyint(1) DEFAULT 0,
  `login_2fa_secret` varchar(255) DEFAULT NULL,
  `login_2fa_backup_key` varchar(255) DEFAULT NULL,
  `password_verification_token` varchar(40) DEFAULT NULL,
  `password_verification_token_timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `firstname`, `lastname`, `title`, `email`, `password`, `password_salt`, `auth_token`, `is_deleted`, `secure_token`, `secure_token_timestamp`, `force_reload`, `settings`, `cookie_token`, `is_api_user`, `api_rate_limit`, `api_allowed_ips`, `api_last_activity`, `email_verification_token`, `email_verification_token_timestamp`, `login_attempt`, `login_attempt_lock_expiration`, `is_request_logger_enabled`, `login_2fa_enabled`, `login_2fa_secret`, `login_2fa_backup_key`, `password_verification_token`, `password_verification_token_timestamp`) VALUES
(1, 'purnachandra', 'valluri', 1, 'provdigi@gmail.com', '$2y$13$oLGNgAFtW2EdjN/uzyPQs.O43OH0LZGE9WDqFYCfePULir6RDhG/W', 'RbxHfWbDZCd0U_L-Hm99FzylRICq-2AD', '76bb292b263326bbba7f159a6b1a461725d61f9706f64de247924150bd8f96124m3ebfiAQoAMlGRr0k9_EKRXniZwl_e1', 0, NULL, 0, 0, '{\"ngrestorder\":{\"admin/api-gallery-album\":{\"sort\":4,\"field\":\"sort_index\"},\"admin/api-catalog-featuregroupref\":{\"sort\":4,\"field\":\"position\"}},\"togglegroup\":{\"8\":0},\"blockfav\":{\"16\":{\"id\":16,\"name\":\"Post Block\",\"icon\":\"cake\",\"preview_enabled\":false,\"full_name\":\"<i class=\\\"material-icons\\\">cake</i> <span>Post Block</span>\",\"favorized\":false,\"newblock\":1}}}', NULL, 0, NULL, NULL, 1702660036, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_auth_notification`
--

CREATE TABLE `admin_user_auth_notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  `is_muted` tinyint(1) DEFAULT 0,
  `model_latest_pk_value` varchar(255) DEFAULT NULL,
  `model_class` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_user_auth_notification`
--

INSERT INTO `admin_user_auth_notification` (`id`, `user_id`, `auth_id`, `is_muted`, `model_latest_pk_value`, `model_class`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 0, '[46]', 'luya\\cms\\models\\Block', 1701455568, 1702618720),
(2, 1, 27, 0, '[]', 'luya\\admin\\models\\Logger', 1701455632, 1701455632),
(3, 1, 26, 0, '[]', 'luya\\admin\\models\\QueueLogError', 1701455636, 1701455636),
(4, 1, 28, 0, '[175]', 'luya\\admin\\models\\NgrestLog', 1701455639, 1701671066),
(5, 1, 31, 0, '[]', 'luya\\admin\\models\\StorageImage', 1701455654, 1701455654),
(6, 1, 35, 0, '[9]', 'siripravi\\catalog\\models\\Group', 1701456276, 1701456276),
(7, 1, 36, 0, '[30]', 'siripravi\\catalog\\models\\Product', 1701456279, 1701456279),
(8, 1, 37, 0, '[9]', 'siripravi\\catalog\\models\\Article', 1701456280, 1701456280),
(9, 1, 5, 0, '[1]', 'luya\\cms\\models\\Theme', 1701456867, 1701456867),
(10, 1, 46, 0, '[4]', 'luya\\gallery\\models\\Cat', 1701458423, 1701831160),
(11, 1, 45, 0, '[3]', 'luya\\gallery\\models\\Album', 1701458459, 1701831256),
(12, 1, 38, 0, '[6]', 'siripravi\\catalog\\models\\Related', 1701484913, 1701484913),
(13, 1, 7, 0, '[8]', 'luya\\cms\\models\\BlockGroup', 1701511238, 1702618714),
(14, 1, 20, 0, '[1]', 'luya\\admin\\models\\Group', 1701511253, 1701511253),
(15, 1, 47, 0, '[11]', 'app\\modules\\cart\\models\\Buyer', 1701511542, 1702618702),
(16, 1, 50, 0, '[3]', 'app\\modules\\cart\\models\\Delivery', 1701511593, 1701511593),
(17, 1, 51, 0, '[6]', 'app\\modules\\cart\\models\\Payment', 1701511597, 1701511597),
(18, 1, 48, 0, '[25]', 'app\\modules\\cart\\models\\Order', 1701511741, 1702530769),
(19, 1, 52, 0, '[10]', 'app\\modules\\cart\\models\\OrderProduct', 1701512932, 1702530790),
(20, 1, 44, 0, '[36]', 'siripravi\\catalog\\models\\Value', 1701529001, 1701965292),
(21, 1, 41, 0, '[3]', 'siripravi\\catalog\\models\\Currency', 1701529073, 1701529073),
(22, 1, 40, 0, '[5]', 'siripravi\\catalog\\models\\Unit', 1701529082, 1701529082),
(23, 1, 43, 0, '[9]', 'siripravi\\catalog\\models\\Feature', 1701529415, 1701529415),
(24, 1, 4, 0, '[5]', 'luya\\cms\\models\\Layout', 1701670979, 1701670979),
(25, 1, 3, 0, '[1]', 'luya\\cms\\models\\Website', 1701670982, 1701670982),
(26, 1, 53, 0, '[9]', 'siripravi\\catalog\\models\\FeatureGroupRef', 1701966701, 1701966701),
(27, 1, 39, 0, '[9]', 'siripravi\\catalog\\models\\ArticlePrice', 1702131070, 1702131070),
(28, 1, 42, 0, '[4]', 'siripravi\\catalog\\models\\Brand', 1702625473, 1702625473);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_device`
--

CREATE TABLE `admin_user_device` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `auth_key` varchar(190) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `user_agent_checksum` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_user_device`
--

INSERT INTO `admin_user_device` (`id`, `user_id`, `auth_key`, `user_agent`, `user_agent_checksum`, `created_at`, `updated_at`) VALUES
(20, 1, '$2y$13$NGXaZjWOPNVi3ICioYOuS.rdv/bdXYFTNeHzp8eNdkdh1fiSAd1Be', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', '9a06b74d179be932b2c28a940b278ea1b3eeb1bc', 1702657341, 1702657939);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_group`
--

CREATE TABLE `admin_user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_user_group`
--

INSERT INTO `admin_user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_login`
--

CREATE TABLE `admin_user_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp_create` int(11) NOT NULL,
  `auth_token` varchar(120) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `is_destroyed` tinyint(1) DEFAULT 1,
  `user_agent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_user_login`
--

INSERT INTO `admin_user_login` (`id`, `user_id`, `timestamp_create`, `auth_token`, `ip`, `is_destroyed`, `user_agent`) VALUES
(1, 1, 1701455551, '21e351594d17ef350273ab028f339f7e87db2dddb4bff895788772a1cf6ab5d6-pbsl4HSboP291D7m-_wqHUDp2Jhm3EV', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(2, 1, 1701484879, '90603f41d71eae0d7e44b4339dcbfaadbd6b159ef27617c1f7dc8723eda38daeladN0eeTHxCt23GrGm-h10rhKILVnx8Z', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(3, 1, 1701509847, 'a94dc4ef36f8b78dfc416cbf5682fd59f7a13b0ef18c544300b5c0b328117471OXdueu4v5wOoJaXOS9YXTJFwGCLgZ46t', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(4, 1, 1701521118, 'b3198a22dd210ee173747f580f91f8a05cd8122fdf19d5a5bc8f97291be3569dE3yJR9ZFpyXzvX1jTntqnXa1LbMRlgKV', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(5, 1, 1701525307, 'a0c3d03af58d2b9be1e4cf70ece0efcf21d21712664fef729c2316ef1c016ed595v6Mvqo7X6IH1Y8fGX1zlXpGbmspA_6', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(6, 1, 1701532221, 'dcb6836cea9beff79b7964366561e3b6f848ada5f6a3f40b0143f45783b3ae98gn7ispO9e4p3E1JvLaIXvPdddcx0ZPe1', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(7, 1, 1701568359, '6b539f01ae17ffc059b5a4ecf82be23198561d7ec602df6849d63f01e53faf81WEgf8-JJM6j5fZt7ofrTB-4KRb9xHrTg', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(8, 1, 1701664657, 'd95b88a69c5f1284abe9b191c86bfa6884ad1e610bcfa8bda1be23ff40361aad20qrS36hWZD2Mo1jZpHxLNcUlGQkpiII', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(9, 1, 1701670959, '5ff1f076a3c64a20cf39c339cf05e1e111df7ed230c181775f8de4441610c35cToXj-X9Jmix3IcqQWpE6S0DYMU4eliah', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(10, 1, 1701675320, '8da7bbd1913fe260d6a7a7a04dfb4e6bcfec55f0dd6e88f12361015448f023497b9iN8YLGLpQZaRlOH6C1hh5XMva2N0A', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(11, 1, 1701830947, 'a985e2d40e74b17e069fbc3f174ed1010d9f71d1e2d0053c204930f6e03c1e57Yw5arehmNOxOZfA9ztoAp2fLZGAeW4oC', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(12, 1, 1701851798, '3475ac834a2cee19902762a1e71fc4d3d3f804f567020e2d165093f4495bd6d8bp6uCQ9Zfp3nAZlA1tpS0Cldqhvlawyk', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(13, 1, 1701951584, 'b3fe19c67e3dca3586d778d4cd3154f8c5940646254ca186766d35637a4ff917tddhx2jgNHlxrGVBnNe_hDWDd8wbXYoV', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(14, 1, 1701963199, '10ebb393d38a577a78f8ea1f7d97cb1071ef0e363a9543cbc00e5afb60469b0753PYm4YsawAZWDih4hpoxLNN9AMQZwiu', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(15, 1, 1701968603, '20ac782d6d38899cac4cd19270d1917f293bd457bbda3b139d65177101eac192B772BCrVK2xy3ACFe5E9Cgxh874ZQ-46', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(16, 1, 1702004440, '6ba981b4890e66d631bdb363083c57de48d09c9ee18fe19c1f8a80c859e03560a0C0mlCdgMNgeBpyuR3HyXbHMh2FrxJg', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(17, 1, 1702026806, '67cda8ff9e43cf7ab53479944959de7662999e6858571e5b02c11e68ffca6688gAXh_k75kcvEFShk0rewU1mufGN1Ef26', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(18, 1, 1702093048, 'd253f4b1fc113b1fae86bc2b484cb83a8e84336b7f5fdb05b003a42ce0cb6fca2vg9FmBRg8vtNbycL9SA46tCeBkyqUru', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(19, 1, 1702121452, '86a9cfb4dd0bab503aafa691f3a3b1f199fb884b6820de6260ae1eaab59b211cxwoqGtf82Z5jhk9Cw9YLEIbtB3OQslWA', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(20, 1, 1702135991, '0a96f2199fd43addb0e90b8b5c803477dd1fe5503d935c2f2a250d342e3cdb53wbkQBzOClKJFSuDG9J-qPdzybEXps4vt', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0'),
(21, 1, 1702190420, 'cc9ce78bf918cbc8ed76dd2bd2893bf26168ab73191e5b1b5c61df08959342da6dgTa3D4z6hQwg7aFGYxm0DDqIon-D26', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(22, 1, 1702530752, '923685135be14ba60db596e2ea117ef119a5106d3aeb081a6722245e5366f44f3fNPwGzigg43sZLF8fPX499TtiH9SpIy', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(23, 1, 1702616075, 'be8ff7e1e9ab66b3e0188c3a48f1cc07bd25ae8e585b5875840b166095e107abD5v2CH7P7kbpXPtQgPeWXyJZ7WtcLLap', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(24, 1, 1702657340, 'e1b1c0d953b9365611bf26c00b013327d0afdee9117fcc396596454834b59476UWH95Vkb0Rqx9vkwq6Ne4khsg7Kl6-Sd', '::1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0'),
(25, 1, 1702657939, '76bb292b263326bbba7f159a6b1a461725d61f9706f64de247924150bd8f96124m3ebfiAQoAMlGRr0k9_EKRXniZwl_e1', '::1', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_login_lockout`
--

CREATE TABLE `admin_user_login_lockout` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `attempt_count` int(11) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_online`
--

CREATE TABLE `admin_user_online` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_timestamp` int(11) NOT NULL,
  `invoken_route` varchar(120) NOT NULL,
  `lock_pk` varchar(255) DEFAULT NULL,
  `lock_table` varchar(255) DEFAULT NULL,
  `lock_translation` varchar(255) DEFAULT NULL,
  `lock_translation_args` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_request`
--

CREATE TABLE `admin_user_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `request_url` varchar(255) NOT NULL,
  `request_method` varchar(255) NOT NULL,
  `response_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `a_user`
--

CREATE TABLE `a_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `notify_about_comment_on_email` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a_user`
--

INSERT INTO `a_user` (`id`, `username`, `fullname`, `avatar`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `github`, `twitter`, `facebook`, `status`, `created_at`, `updated_at`, `notify_about_comment_on_email`) VALUES
(1, 'purnachandra', NULL, NULL, 'GQpu6cRQRVaUL9G58W4-eYfdpkCNKBHS', '$2y$13$7TCFMGPJIJjixJAo5lXeweiVgUdSN7Pf49Xo.0l8Chbw.3wV5fpOS', 'A-KX-etvNLaQ0NvMc_Lg_WLkevVsRBeD_1700125338', 'provdigi@gmail.com', NULL, NULL, NULL, 10, 1700125338, 1700125338, 0),
(2, 'pravinya', '', '2.jpg', 'Yx_Jm5u207zO-mwX1Uqj3iUXzkH1g1Zk', '$2y$13$c5IR6yvAz/QwUegcEWT9xeizt.M5JKJuzt4pm/./yiPLqa.MuEGse', 'uC1Jf8jBPFDqcLeCgyXTHZjkJ98jl_dX_1700327593', 'pravinya.valluri@gmail.com', NULL, NULL, NULL, 10, 1700327593, 1700328192, 0);

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `entity` tinyint(1) DEFAULT NULL,
  `delivery` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `name`, `phone`, `email`, `created_at`, `entity`, `delivery`) VALUES
(9, 'Purnachandra Rao V', '383838083318', 'provdigi@gmail.com', 1702294163, 0, NULL),
(10, 'Purnachandra Rao V', '389183318527', 'provdigi@gmail.com', 1702294419, 0, ''),
(11, 'Purnachandra Rao V', '380833185270', 'provdigi@gmail.com', 1702297795, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_article`
--

CREATE TABLE `catalog_article` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `product_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `price` decimal(9,2) DEFAULT NULL,
  `price_old` decimal(9,2) DEFAULT NULL,
  `currency_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `available` int(11) NOT NULL DEFAULT 1,
  `image_id` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `album_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_article`
--

INSERT INTO `catalog_article` (`id`, `name`, `product_id`, `text`, `code`, `price`, `price_old`, `currency_id`, `unit_id`, `available`, `image_id`, `created_at`, `updated_at`, `position`, `enabled`, `album_id`) VALUES
(6, '{\"en\":\"Brown Choclolate Cake\"}', 28, 'Cakes are frequently described according to their physical form. Cakes may be small and intended for individual consumption. Larger cakes may be made to be sliced and served as part of a meal or social function. Common shapes include: Bundt cakesCake dressCake ballsCake popsConical, such as the …', '{\"en\":\"BROW0001\"}', 2425.00, 2640.00, 0, 0, 1, 83, 2147483647, 2147483647, 0, 1, 3),
(7, '{\"en\":\"Honey Chocolate Dip Cake\"}', 28, 'Honey cake has had a long and diverse evolution. From breadcrumbs mashed with honey came the sweet and spiced cake we know today. Whether you like it, love it, or will always pass on this Rosh Hashanah classic, its evolution exemplifies the culinary journey of Jewish Diaspora. This is more than a cake; it connects Jews to Torah, holidays and the sweetness of life.', '{\"en\":\"HONCHK0001\"}', NULL, NULL, 0, 0, 126, 116, 2147483647, 2147483647, 0, 1, 3),
(8, '{\"en\":\"Creamy Butter Cookies\"}', 29, 'Buttor Cream biscuites topped with chocolate drops', '{\"en\":\"BISC9034\"}', NULL, NULL, 0, 0, 1, 52, 2147483647, 2147483647, 0, 1, 1),
(9, '{\"en\":\"Vanilla Cake with Butter Cream\"}', 30, 'It’s notoriously hard to find a really good, classic cupcake recipe. Many promise game changing techniques, but all too often they fall short.\n\nSo why should you believe me when I say this is the last Vanilla Cupcake recipe you’ll ever use?', '{\"en\":\"VNL00234\"}', 875.00, 1020.00, 0, 0, 100, 86, 2147483647, 2147483647, 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_article_price`
--

CREATE TABLE `catalog_article_price` (
  `article_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `unit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catalog_article_price`
--

INSERT INTO `catalog_article_price` (`article_id`, `value_id`, `currency_id`, `qty`, `price`, `unit_id`) VALUES
(6, 31, 3, 1, 140, 4),
(6, 32, 3, 1, 647, 4),
(6, 33, 3, 1, 1425, 4),
(6, 34, 3, 1, 786, 4),
(7, 31, 3, 1, 251, 4),
(7, 33, 3, 1, 1452, 4),
(7, 34, 3, 1, 2453, 4),
(7, 36, 3, 1, 2354, 4),
(7, 32, 3, 20, 580, 4),
(8, 35, 3, 1, 20, 4),
(8, 35, 3, 1, 750, 5),
(9, 31, 3, 1, 0, 4),
(9, 32, 3, 1, 140, 4),
(9, 33, 3, 1, 849, 4),
(9, 34, 3, 1, 1499, 4);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_article_value_ref`
--

CREATE TABLE `catalog_article_value_ref` (
  `article_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `catalog_article_value_ref`
--

INSERT INTO `catalog_article_value_ref` (`article_id`, `value_id`) VALUES
(6, 31),
(6, 32),
(6, 33),
(6, 34),
(7, 31),
(7, 32),
(7, 33),
(7, 34),
(7, 36),
(8, 31),
(8, 32),
(8, 35),
(9, 31),
(9, 32),
(9, 33),
(9, 34),
(9, 36);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_brand`
--

CREATE TABLE `catalog_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_brand`
--

INSERT INTO `catalog_brand` (`id`, `name`, `image_id`, `position`, `enabled`) VALUES
(3, 'Britannia', 38, 0, 1),
(4, 'Cookie', 41, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_currency`
--

CREATE TABLE `catalog_currency` (
  `id` int(11) NOT NULL,
  `code` varchar(3) NOT NULL,
  `rate` decimal(8,4) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `before` varchar(20) NOT NULL,
  `after` varchar(20) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_currency`
--

INSERT INTO `catalog_currency` (`id`, `code`, `rate`, `position`, `name`, `before`, `after`, `enabled`) VALUES
(3, 'INR', 0.2500, 0, 'Indian Rupee', '₹', '/-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_delivery`
--

CREATE TABLE `catalog_delivery` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_feature`
--

CREATE TABLE `catalog_feature` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `catalog_feature`
--

INSERT INTO `catalog_feature` (`id`, `name`, `position`, `enabled`) VALUES
(8, 'Size', 1, 1),
(9, 'Version', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_feature_filter`
--

CREATE TABLE `catalog_feature_filter` (
  `feature_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_feature_group_ref`
--

CREATE TABLE `catalog_feature_group_ref` (
  `feature_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `is_base` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `catalog_feature_group_ref`
--

INSERT INTO `catalog_feature_group_ref` (`feature_id`, `group_id`, `position`, `is_base`) VALUES
(8, 7, 1, 1),
(8, 8, 2, 1),
(9, 7, 0, 0),
(9, 8, 0, 0),
(9, 9, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_group`
--

CREATE TABLE `catalog_group` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(225) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `cover_image_id` int(11) DEFAULT NULL,
  `images_list` text DEFAULT NULL,
  `teaser` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_group`
--

INSERT INTO `catalog_group` (`id`, `parent_id`, `name`, `slug`, `cover_image_id`, `images_list`, `teaser`, `text`, `created_at`, `updated_at`, `main`, `position`, `enabled`) VALUES
(7, 0, 'Cakes', 'cakes', 86, NULL, 'delicious cakes', 'A cake is a type of flour confection that is usually baked and made from flour, sugar, eggs, fat, a liquid, and a leavening agent, such as baking soda or baking powder. Cakes can be simple or elaborate and share features with desserts such as pastries, meringues, custards, and pies. The most common ingredients include flour, sugar, eggs, fat (such as butter, oil, or margarine), a liquid, and a leavening agent, such as baking soda or baking powder. Common additional ingredients include dried, candied, or fresh fruit, nuts, cocoa, and...', 2147483647, 2147483647, 1, 1, 1),
(8, 0, 'Cookies', 'cookies', 24, NULL, 'crispy cookies', NULL, 2147483647, 2147483647, 1, 2, 1),
(9, NULL, 'Cupcakes', 'cupcakes', 34, NULL, 'Cupcakes', 'Cupcakes', 2147483647, 2147483647, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_payment`
--

CREATE TABLE `catalog_payment` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product`
--

CREATE TABLE `catalog_product` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `cover_image_id` int(11) DEFAULT NULL,
  `images_list` text DEFAULT NULL,
  `teaser` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `price_from` int(11) NOT NULL DEFAULT 0,
  `view` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_product`
--

INSERT INTO `catalog_product` (`id`, `name`, `slug`, `brand_id`, `cover_image_id`, `images_list`, `teaser`, `text`, `created_at`, `updated_at`, `price_from`, `view`, `position`, `enabled`) VALUES
(28, 'Chocolate Cake', 'chocolate-cake', NULL, 75, NULL, NULL, NULL, 2147483647, 2147483647, 1250, '1', 1, 1),
(29, 'Butter Cookies', 'butter-cookies', NULL, 92, NULL, NULL, NULL, 2147483647, 2147483647, 25, NULL, 0, 1),
(30, 'Vanilla Cake', 'vanilla-cake', 3, 38, NULL, NULL, NULL, 2147483647, 2147483647, 254, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_group_ref`
--

CREATE TABLE `catalog_product_group_ref` (
  `product_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_product_group_ref`
--

INSERT INTO `catalog_product_group_ref` (`product_id`, `group_id`) VALUES
(28, 7),
(29, 8),
(30, 7);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_related_ref`
--

CREATE TABLE `catalog_product_related_ref` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_product_related_ref`
--

INSERT INTO `catalog_product_related_ref` (`product_id`, `related_id`, `position`) VALUES
(28, 6, 0),
(29, 6, 0),
(30, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_status`
--

CREATE TABLE `catalog_product_status` (
  `product_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_related`
--

CREATE TABLE `catalog_related` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `catalog_related`
--

INSERT INTO `catalog_related` (`id`, `name`, `position`) VALUES
(6, 'Popular Cakes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_review`
--

CREATE TABLE `catalog_review` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rating` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_set`
--

CREATE TABLE `catalog_set` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_unit`
--

CREATE TABLE `catalog_unit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(100) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_unit`
--

INSERT INTO `catalog_unit` (`id`, `name`, `code`, `position`, `enabled`) VALUES
(4, 'Piece', 'PCS', 0, 1),
(5, 'Pack of 20', 'PKT', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_value`
--

CREATE TABLE `catalog_value` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `feature_id` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `catalog_value`
--

INSERT INTO `catalog_value` (`id`, `name`, `feature_id`, `position`) VALUES
(31, 'Eggless', 9, 2),
(32, 'With Egg', 9, 1),
(33, '6 inch', 8, 1),
(34, '12 inch', 8, 2),
(35, 'Pack', 8, 1),
(36, '6 inch 5 layer', 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cms_block`
--

CREATE TABLE `cms_block` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `class` varchar(255) NOT NULL,
  `is_disabled` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_block`
--

INSERT INTO `cms_block` (`id`, `group_id`, `class`, `is_disabled`) VALUES
(1, 1, '\\luya\\cms\\frontend\\blocks\\HtmlBlock', 0),
(2, 1, '\\luya\\cms\\frontend\\blocks\\MirrorLanguageBlock', 0),
(3, 1, '\\luya\\cms\\frontend\\blocks\\ModuleBlock', 0),
(4, 2, '\\siripravi\\catalog\\frontend\\blocks\\CategoryBlock', 0),
(5, 2, '\\siripravi\\catalog\\frontend\\blocks\\HeadTeaserBlock', 0),
(6, 2, '\\siripravi\\catalog\\frontend\\blocks\\RelatedGroupBlock', 0),
(7, 3, '\\luya\\gallery\\frontend\\blocks\\GalleryAlbum', 0),
(8, 4, '\\app\\blocks\\AboutBlock', 0),
(9, 4, '\\app\\blocks\\BannerBlock', 0),
(10, 4, '\\app\\blocks\\CarouselBlock', 0),
(11, 4, '\\app\\blocks\\ContactBlock', 0),
(12, 4, '\\app\\blocks\\FactsBlock', 0),
(13, 4, '\\app\\blocks\\FeatureBlock', 0),
(14, 4, '\\app\\blocks\\MenuBlock', 0),
(15, 4, '\\app\\blocks\\NavbarBlock', 0),
(16, 4, '\\app\\blocks\\PostBlock', 0),
(17, 4, '\\app\\blocks\\ReviewBlock', 0),
(18, 4, '\\app\\blocks\\SectionBlock', 0),
(19, 4, '\\app\\blocks\\ServicesBlock', 0),
(20, 4, '\\app\\blocks\\SiteAboutBlock', 0),
(21, 4, '\\app\\blocks\\TeamBlock', 0),
(22, 4, '\\app\\blocks\\TopbarBlock', 0),
(23, 2, '\\luya\\themes\\frontend\\blocks\\BannerBlock', 0),
(24, 2, '\\luya\\themes\\frontend\\blocks\\CarouselBlock', 0),
(25, 2, '\\luya\\themes\\frontend\\blocks\\FeatureBlock', 0),
(26, 2, '\\luya\\themes\\frontend\\blocks\\HeadTeaserBlock', 0),
(27, 2, '\\luya\\themes\\frontend\\blocks\\MenuBlock', 0),
(28, 2, '\\luya\\themes\\frontend\\blocks\\PostBlock', 0),
(29, 2, '\\luya\\themes\\frontend\\blocks\\SectionBlock', 0),
(30, 5, '\\luya\\bootstrap4\\blocks\\CarouselBlock', 0),
(31, 6, '\\luya\\bootstrap4\\blocks\\ImageBlock', 0),
(32, 3, '\\luya\\generic\\blocks\\FileListBlock', 0),
(33, 3, '\\luya\\generic\\blocks\\LineBlock', 0),
(34, 7, '\\luya\\generic\\blocks\\ListBlock', 0),
(35, 7, '\\luya\\generic\\blocks\\QuoteBlock', 0),
(36, 7, '\\luya\\generic\\blocks\\TextBlock', 0),
(37, 7, '\\luya\\generic\\blocks\\TitleBlock', 0),
(38, 7, '\\luya\\generic\\blocks\\WysiwygBlock', 0),
(39, 4, '\\dev7ch\\slick\\blocks\\SlickBlock', 0),
(40, 8, '\\luya\\forms\\blocks\\CheckboxesBlock', 0),
(41, 8, '\\luya\\forms\\blocks\\DatepickerBlock', 0),
(42, 8, '\\luya\\forms\\blocks\\FileBlock', 0),
(43, 8, '\\luya\\forms\\blocks\\FormBlock', 0),
(44, 8, '\\luya\\forms\\blocks\\SelectBlock', 0),
(45, 8, '\\luya\\forms\\blocks\\SummaryBlock', 0),
(46, 8, '\\luya\\forms\\blocks\\TextBlock', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_block_group`
--

CREATE TABLE `cms_block_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `identifier` varchar(120) NOT NULL,
  `created_timestamp` int(11) DEFAULT 0,
  `class` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_block_group`
--

INSERT INTO `cms_block_group` (`id`, `name`, `is_deleted`, `identifier`, `created_timestamp`, `class`) VALUES
(1, 'block_group_dev_elements', 0, 'development-group', 1701455421, '\\luya\\cms\\frontend\\blockgroups\\DevelopmentGroup'),
(2, 'Catalog Blocks', 0, 'theme-collection-group', 1701455421, '\\siripravi\\catalog\\frontend\\blockgroups\\BlockCollectionGroup'),
(3, 'block_group_basic_elements', 0, 'main-group', 1701455421, '\\luya\\cms\\frontend\\blockgroups\\MainGroup'),
(4, 'block_group_project_elements', 0, 'project-group', 1701455421, '\\luya\\cms\\frontend\\blockgroups\\ProjectGroup'),
(5, 'Bootstrap 4', 0, 'bootstrap4', 1701455421, '\\luya\\bootstrap4\\blockgroups\\BootstrapGroup'),
(6, 'block_group_media_group', 0, 'media-group', 1701455421, '\\luya\\cms\\frontend\\blockgroups\\MediaGroup'),
(7, 'block_group_text_elements', 0, 'text-group', 1701455421, '\\luya\\cms\\frontend\\blockgroups\\TextGroup'),
(8, 'Forms', 0, 'forms-group', 1702617151, '\\luya\\forms\\blockgroups\\FormGroup');

-- --------------------------------------------------------

--
-- Table structure for table `cms_config`
--

CREATE TABLE `cms_config` (
  `name` varchar(80) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_layout`
--

CREATE TABLE `cms_layout` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `json_config` text DEFAULT NULL,
  `view_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_layout`
--

INSERT INTO `cms_layout` (`id`, `name`, `json_config`, `view_file`) VALUES
(1, 'Main', '{\"placeholders\":[[{\"label\":\"Content\",\"var\":\"content\"}]]}', '@app/views/cmslayouts\\main.php'),
(3, 'Cake Baker - Detail', '{\"placeholders\":[[{\"label\":\"Banner\",\"var\":\"banner\"},{\"label\":\"Main\",\"var\":\"main\"},{\"label\":\"Related\",\"var\":\"related\"}]]}', '@app/themes/cakeBaker/views\\cmslayouts\\detail.php'),
(4, 'Cake Baker - Theme', '{\"placeholders\":[[{\"label\":\"Header\",\"var\":\"header\"},{\"label\":\"Main\",\"var\":\"main\"},{\"label\":\"Highlights\",\"var\":\"highlights\"}]]}', '@app/themes/cakeBaker/views\\cmslayouts\\theme.php'),
(5, 'Cake Baker - Twocol', '{\"placeholders\":[[{\"label\":\"Left\",\"var\":\"left\"},{\"label\":\"Right\",\"var\":\"right\"}]]}', '@app/themes/cakeBaker/views\\cmslayouts\\twocol.php');

-- --------------------------------------------------------

--
-- Table structure for table `cms_log`
--

CREATE TABLE `cms_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT 0,
  `is_insertion` tinyint(1) DEFAULT 0,
  `is_update` tinyint(1) DEFAULT 0,
  `is_deletion` tinyint(1) DEFAULT 0,
  `timestamp` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `data_json` text DEFAULT NULL,
  `table_name` varchar(120) DEFAULT NULL,
  `row_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav`
--

CREATE TABLE `cms_nav` (
  `id` int(11) NOT NULL,
  `nav_container_id` int(11) NOT NULL,
  `parent_nav_id` int(11) NOT NULL DEFAULT 0,
  `sort_index` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `is_hidden` tinyint(1) DEFAULT 0,
  `is_home` tinyint(1) DEFAULT 0,
  `is_offline` tinyint(1) DEFAULT 0,
  `is_draft` tinyint(1) DEFAULT 0,
  `layout_file` varchar(255) DEFAULT NULL,
  `publish_from` int(11) DEFAULT NULL,
  `publish_till` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_nav`
--

INSERT INTO `cms_nav` (`id`, `nav_container_id`, `parent_nav_id`, `sort_index`, `is_deleted`, `is_hidden`, `is_home`, `is_offline`, `is_draft`, `layout_file`, `publish_from`, `publish_till`) VALUES
(1, 1, 0, 1, 0, 0, 1, 0, 0, NULL, NULL, NULL),
(2, 1, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav_container`
--

CREATE TABLE `cms_nav_container` (
  `id` int(11) NOT NULL,
  `website_id` int(11) NOT NULL DEFAULT 1,
  `name` varchar(180) NOT NULL,
  `alias` varchar(180) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_nav_container`
--

INSERT INTO `cms_nav_container` (`id`, `website_id`, `name`, `alias`, `is_deleted`) VALUES
(1, 1, 'Default Container', 'default', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav_item`
--

CREATE TABLE `cms_nav_item` (
  `id` int(11) NOT NULL,
  `nav_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `nav_item_type` int(11) NOT NULL,
  `nav_item_type_id` int(11) NOT NULL,
  `create_user_id` int(11) NOT NULL,
  `update_user_id` int(11) NOT NULL,
  `timestamp_create` int(11) DEFAULT 0,
  `timestamp_update` int(11) DEFAULT 0,
  `title` varchar(180) NOT NULL,
  `alias` varchar(180) NOT NULL,
  `description` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `title_tag` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `is_url_strict_parsing_disabled` tinyint(1) DEFAULT 0,
  `is_cacheable` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_nav_item`
--

INSERT INTO `cms_nav_item` (`id`, `nav_id`, `lang_id`, `nav_item_type`, `nav_item_type_id`, `create_user_id`, `update_user_id`, `timestamp_create`, `timestamp_update`, `title`, `alias`, `description`, `keywords`, `title_tag`, `image_id`, `is_url_strict_parsing_disabled`, `is_cacheable`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1701455525, 1702658234, 'Homepage', 'homepage', NULL, NULL, NULL, NULL, 0, 0),
(2, 2, 1, 1, 2, 1, 1, 1701568768, 1701569811, 'Contact Us', 'contact-us', NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav_item_module`
--

CREATE TABLE `cms_nav_item_module` (
  `id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `controller_name` varchar(255) DEFAULT NULL,
  `action_name` varchar(255) DEFAULT NULL,
  `action_params` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav_item_page`
--

CREATE TABLE `cms_nav_item_page` (
  `id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `nav_item_id` int(11) DEFAULT NULL,
  `timestamp_create` int(11) NOT NULL,
  `create_user_id` int(11) NOT NULL,
  `version_alias` varchar(250) DEFAULT NULL,
  `timestamp_update` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_nav_item_page`
--

INSERT INTO `cms_nav_item_page` (`id`, `layout_id`, `nav_item_id`, `timestamp_create`, `create_user_id`, `version_alias`, `timestamp_update`) VALUES
(1, 1, 1, 1701455525, 1, 'Initial', NULL),
(2, 5, 2, 1701568768, 1, 'Initial', 1701568768);

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav_item_page_block_item`
--

CREATE TABLE `cms_nav_item_page_block_item` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `placeholder_var` varchar(80) NOT NULL,
  `nav_item_page_id` int(11) DEFAULT NULL,
  `prev_id` int(11) DEFAULT NULL,
  `json_config_values` text DEFAULT NULL,
  `json_config_cfg_values` text DEFAULT NULL,
  `is_dirty` tinyint(1) DEFAULT 0,
  `create_user_id` int(11) DEFAULT 0,
  `update_user_id` int(11) DEFAULT 0,
  `timestamp_create` int(11) DEFAULT 0,
  `timestamp_update` int(11) DEFAULT 0,
  `sort_index` int(11) DEFAULT 0,
  `is_hidden` tinyint(1) DEFAULT 0,
  `variation` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_nav_item_page_block_item`
--

INSERT INTO `cms_nav_item_page_block_item` (`id`, `block_id`, `placeholder_var`, `nav_item_page_id`, `prev_id`, `json_config_values`, `json_config_cfg_values`, `is_dirty`, `create_user_id`, `update_user_id`, `timestamp_create`, `timestamp_update`, `sort_index`, `is_hidden`, `variation`) VALUES
(2, 8, 'content', 1, 0, NULL, NULL, 0, 1, 0, 1701457074, 1701457074, 2, 0, '0'),
(4, 21, 'content', 1, 0, '{\"__e\":\"__o\"}', '{\"images\":{\"0\":{\"imageId\":14,\"caption\":\"\"},\"1\":{\"imageId\":17,\"caption\":\"\"},\"2\":{\"imageId\":20,\"caption\":\"\"}}}', 1, 1, 1, 1701457105, 1701457382, 3, 0, '0'),
(5, 4, 'content', 1, 0, NULL, NULL, 0, 1, 0, 1701457488, 1701457488, 1, 0, '0'),
(7, 11, 'left', 2, 0, NULL, NULL, 0, 1, 0, 1701568884, 1701568884, 0, 0, '0'),
(8, 16, 'right', 2, 0, '{\"image\":0,\"text\":\"<p style=\\\"box-sizing: border-box; text-rendering: optimizelegibility; letter-spacing: 0.2px; color: rgb(51, 51, 51); font-size: 18px; line-height: 1.9; font-family: &quot;Open Sans&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, roboto, oxygen-sans, ubuntu, cantarell, &quot;Helvetica Neue&quot;, sans-serif;\\\">Your website\\u2019s contact page is one of the most important pages for your visitors to access. A contact page acts as the gateway for customers to reach out to your brand directly, often conveying your brand\\u2019s commitment to transparency and communication.<\\/p><p style=\\\"box-sizing: border-box; text-rendering: optimizelegibility; letter-spacing: 0.2px; color: rgb(51, 51, 51); font-size: 18px; line-height: 1.9; font-family: &quot;Open Sans&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, roboto, oxygen-sans, ubuntu, cantarell, &quot;Helvetica Neue&quot;, sans-serif;\\\">Although many businesses think of their contact pages as a lower priority, the way you design and structure yours could determine how visitors perceive your brand. A well-designed page can help you acquire leads, field potential concerns, and keep an open line of communication with your customer base.<\\/p>\",\"title\":\"Contact Us\"}', '{\"__e\":\"__o\"}', 1, 1, 1, 1701568892, 1701569811, 0, 0, '0'),
(14, 9, 'content', 1, 0, '{\"image\":11}', '{\"background-type\":\"image\",\"title-heading\":\"h1\"}', 1, 1, 1, 1702658147, 1702658234, 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav_item_redirect`
--

CREATE TABLE `cms_nav_item_redirect` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `target` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav_permission`
--

CREATE TABLE `cms_nav_permission` (
  `group_id` int(11) NOT NULL,
  `nav_id` int(11) NOT NULL,
  `inheritance` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav_property`
--

CREATE TABLE `cms_nav_property` (
  `id` int(11) NOT NULL,
  `nav_id` int(11) NOT NULL,
  `admin_prop_id` int(11) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_redirect`
--

CREATE TABLE `cms_redirect` (
  `id` int(11) NOT NULL,
  `timestamp_create` int(11) DEFAULT NULL,
  `catch_path` varchar(255) NOT NULL,
  `redirect_path` varchar(255) NOT NULL,
  `redirect_status_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme`
--

CREATE TABLE `cms_theme` (
  `id` int(11) NOT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `base_path` varchar(191) NOT NULL,
  `json_config` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_theme`
--

INSERT INTO `cms_theme` (`id`, `is_default`, `base_path`, `json_config`) VALUES
(1, 1, '@app/themes/cakeBaker', '{\"name\":\"cakeBaker\",\"parentTheme\":null,\"pathMap\":[],\"description\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `cms_website`
--

CREATE TABLE `cms_website` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `host` varchar(191) NOT NULL,
  `aliases` varchar(255) DEFAULT NULL,
  `redirect_to_host` tinyint(1) NOT NULL DEFAULT 0,
  `theme_id` int(11) DEFAULT NULL,
  `default_lang` varchar(2) DEFAULT NULL,
  `group_ids` text DEFAULT NULL,
  `user_ids` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_website`
--

INSERT INTO `cms_website` (`id`, `name`, `is_default`, `is_active`, `is_deleted`, `host`, `aliases`, `redirect_to_host`, `theme_id`, `default_lang`, `group_ids`, `user_ids`) VALUES
(1, 'default', 1, 1, 0, '', NULL, 0, NULL, NULL, '[{\"value\":0}]', '[{\"value\":0}]');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `position` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `type`, `position`, `name`, `enabled`) VALUES
(1, 2, 1, 'Pickup', 1),
(2, 3, 2, 'By Post', 1),
(3, 4, 3, 'Delivery by courier', 1);

-- --------------------------------------------------------

--
-- Table structure for table `forms_form`
--

CREATE TABLE `forms_form` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `subject` text DEFAULT NULL,
  `email_intro` text DEFAULT NULL,
  `email_outro` text DEFAULT NULL,
  `copy_to_attribute` varchar(255) DEFAULT NULL,
  `recipients` text DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms_submission`
--

CREATE TABLE `forms_submission` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_done` tinyint(1) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms_submission_value`
--

CREATE TABLE `forms_submission_value` (
  `id` int(11) NOT NULL,
  `submission_id` int(11) DEFAULT NULL,
  `attribute` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `hint` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_album`
--

CREATE TABLE `gallery_album` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT 0,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `cover_image_id` int(11) DEFAULT 0,
  `timestamp_create` int(11) DEFAULT 0,
  `timestamp_update` int(11) DEFAULT 0,
  `is_highlight` tinyint(1) DEFAULT 0,
  `sort_index` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_album`
--

INSERT INTO `gallery_album` (`id`, `cat_id`, `title`, `description`, `cover_image_id`, `timestamp_create`, `timestamp_update`, `is_highlight`, `sort_index`) VALUES
(1, 1, '{\"en\":\"Butter Cookies\"}', '{\"en\":\"butter cookies\"}', 45, 0, 0, 1, 1),
(2, 2, '{\"en\":\"Chocolate Cakes\"}', '{\"en\":\"chocolate cakes\"}', 75, 0, 0, 1, 0),
(3, 4, '{\"en\":\"Honey Chocolate Cake\"}', '{\"en\":\"Honey Chocolate Cakes are made with Honey and Chocolate\"}', 113, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_album_image`
--

CREATE TABLE `gallery_album_image` (
  `image_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `sortindex` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_album_image`
--

INSERT INTO `gallery_album_image` (`image_id`, `album_id`, `sortindex`) VALUES
(51, 1, 4),
(63, 1, 1),
(65, 1, 2),
(67, 1, 3),
(70, 1, 5),
(109, 2, 2),
(109, 3, 2),
(112, 2, 1),
(112, 3, 1),
(120, 2, 4),
(120, 3, 4),
(122, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_cat`
--

CREATE TABLE `gallery_cat` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `cover_image_id` int(11) DEFAULT 0,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_cat`
--

INSERT INTO `gallery_cat` (`id`, `title`, `cover_image_id`, `description`) VALUES
(1, '{\"en\":\"Butter Cookies\"}', 132, '{\"en\":\"Butter Cookies\"}'),
(2, '{\"en\":\"Chocolate Cakes\"}', 75, '{\"en\":\"chocaolate cakes\"}'),
(3, '{\"en\":\"Vanilla Cakes\"}', 79, '{\"en\":\"vanilla cakes\"}'),
(4, '{\"en\":\"Honey Chocolate Cake\"}', 109, '{\"en\":\"Honey Chocolate Dip Cake\"}');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1701455399),
('m140209_132017_init', 1702388063),
('m140403_174025_create_account_table', 1702388063),
('m140504_113157_update_tables', 1702388063),
('m140504_130429_create_token_table', 1702388063),
('m140830_171933_fix_ip_field', 1702388063),
('m140830_172703_change_account_table_name', 1702388063),
('m141104_104622_admin_group', 1701455401),
('m141104_104631_admin_user_group', 1701455401),
('m141104_114809_admin_user', 1701455401),
('m141203_121042_admin_lang', 1701455401),
('m141203_143052_cms_cat', 1701455401),
('m141203_143059_cms_nav', 1701455401),
('m141203_143111_cms_nav_item', 1701455401),
('m141208_134038_cms_nav_item_page', 1701455401),
('m141222_110026_update_ip_field', 1702388063),
('m141222_135246_alter_username_length', 1702399410),
('m150106_095003_cms_layout', 1701455401),
('m150108_154017_cms_block', 1701455401),
('m150108_155009_cms_nav_item_page_block_item', 1701455401),
('m150122_125429_cms_nav_item_module', 1701455401),
('m150205_141350_block_group', 1701455401),
('m150304_152220_admin_storage_folder', 1701455401),
('m150304_152238_admin_storage_file', 1701455401),
('m150304_152244_admin_storage_filter', 1701455401),
('m150304_152250_admin_storage_effect', 1701455401),
('m150304_152256_admin_storage_image', 1701455401),
('m150309_142652_admin_storage_filter_chain', 1701455401),
('m150323_125407_admin_auth', 1701455401),
('m150323_132625_admin_group_auth', 1701455401),
('m150331_125022_admin_ngrest_log', 1701455401),
('m150504_094950_gallery_album', 1701455401),
('m150504_132138_gallery_album_image', 1701455401),
('m150601_105400_gallery_cat', 1701455401),
('m150614_103145_update_social_account_table', 1702399410),
('m150615_094744_admin_user_login', 1701455401),
('m150617_200836_admin_user_online', 1701455401),
('m150623_212711_fix_username_notnull', 1702399410),
('m150626_084948_admin_search_data', 1701455401),
('m150915_081559_admin_config', 1701455401),
('m150924_112309_cms_nav_prop', 1701455401),
('m150924_120914_admin_prop', 1701455401),
('m151012_072207_cms_log', 1701455401),
('m151022_143429_cms_nav_item_redirect', 1701455401),
('m151026_161841_admin_tag', 1701455401),
('m151218_234654_add_timezone_to_profile', 1702399411),
('m160629_092417_cmspermissiontable', 1701455402),
('m160915_081618_create_admin_logger_table', 1701455402),
('m161219_150240_admin_lang_soft_delete', 1701455402),
('m161220_183300_lcp_base_tables', 1701455402),
('m161226_003706_add_user_group_table', 1702399411),
('m170106_160013_add_approved_at_column_to_user', 1702399411),
('m170116_120553_cms_block_variation_field', 1701455402),
('m170131_104109_user_model_updates', 1701455402),
('m170218_215610_cms_nav_layout_file', 1701455402),
('m170301_084325_cms_config', 1701455402),
('m170304_083000_override_user_profile', 1702446044),
('m170619_103728_cms_blocksettings', 1701455402),
('m170926_144137_add_admin_user_session_id_column', 1701455402),
('m170926_164913_add_ngrest_log_diff_data', 1701455402),
('m171003_065811_add_class_column_to_block_group_table', 1701455402),
('m171009_083835_add_admin_user_login_destroy_info', 1701455402),
('m171023_145135_gallery_ref_table_sortindex', 1701455402),
('m171121_170909_add_publish_at_date', 1701455402),
('m171129_104706_config_add_system_type', 1701455402),
('m171206_113949_cms_redirection_table', 1701455402),
('m180120_153829_create_buyer_table', 1701492272),
('m180120_154828_create_order_table', 1701493986),
('m180120_154829_create_order_table', 1701505506),
('m180214_134657_system_user_ngrest_deletion', 1701455402),
('m180326_170839_file_disposition', 1701455402),
('m180412_092824_user_security_columns_v12', 1701455402),
('m180527_225613_user_login_ipv6', 1701455402),
('m180619_134519_indexes', 1701455402),
('m180723_120432_indexes', 1701455403),
('m180723_123237_indexes', 1701455403),
('m181023_135132_scheduler', 1701455403),
('m181113_120432_user_index', 1701455403),
('m190219_142706_og_image', 1701455403),
('m190220_105505_cms_redirect_target_field', 1701455403),
('m190227_123549_cms_nav_item_strict_url_parsing', 1701455403),
('m190327_140741_auth_pool_field', 1701455403),
('m190508_142342_admin_user_api_request', 1701455403),
('m190521_145029_admin_user_notification', 1701455403),
('m190529_123549_cms_nav_item_module_route_and_params', 1701455404),
('m190728_084936_cms_theme', 1701455404),
('m200128_141129_v3_update', 1701455404),
('m200226_211908_nav_item_is_cacheable', 1701455404),
('m200706_202002_cms_website', 1701455404),
('m200910_114548_basetables', 1702617021),
('m201112_133820_db_session_table', 1701455404),
('m210422_134420_v4_update', 1701455404),
('m210510_082714_admin_config_text', 1701455404),
('m210605_172811_cms_website_permissions', 1701455404),
('m210708_091145_v4', 1701455404),
('m231202_083449_create_buyer_table', 1701508170),
('m311024_135132_tag', 1701455404);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `delivery` varchar(255) DEFAULT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `buyer_id`, `amount`, `phone`, `email`, `delivery`, `delivery_id`, `payment_id`, `text`, `comment`, `created_at`, `updated_at`, `status`) VALUES
(1, 10, 12579, '389183318527', 'provdigi@gmail.com', NULL, 2, 2, NULL, 'gfhrt bf drthbrtd', 2147483647, 2147483647, 5),
(2, 10, 8112, '389183318527', 'provdigi@gmail.com', NULL, 1, 2, NULL, 'sdfwef sdfs efwe wfe ', 2147483647, 2147483647, 5),
(3, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(4, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(5, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(6, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(7, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(8, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(9, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(10, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(11, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(12, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(13, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(14, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(15, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(16, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(17, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(18, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(19, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(20, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(21, 11, 9677, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(22, 11, 0, '380833185270', 'provdigi@gmail.com', NULL, 2, 2, NULL, ',ljtyujrfyjvbn', 2147483647, 2147483647, 5),
(23, 10, 3477, '389183318527', 'provdigi@gmail.com', NULL, 1, 3, NULL, 'l jkhjrtfhnfgv rtdyh', 2147483647, 2147483647, 1),
(24, 10, 0, '389183318527', 'provdigi@gmail.com', NULL, 1, 3, NULL, 'l jkhjrtfhnfgv rtdyh', 2147483647, 2147483647, 1),
(25, 11, 4953, '380833185270', 'provdigi@gmail.com', NULL, 2, 1, NULL, 'yjgghjm vcbdfghd', 2147483647, 2147483647, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `features` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `article_id`, `name`, `count`, `price`, `features`) VALUES
(1, 1, 7, NULL, 0, 0, ''),
(2, 1, 7, NULL, 0, 0, ''),
(3, 21, 7, 'Chocolate Cake, Honey Chocolate Dip Cake', 3, 2704, '[28][8]1+[28][9]1'),
(4, 21, 6, 'Chocolate Cake, Brown Choclolate Cake', 1, 1565, '[28][8]0+[28][9]1'),
(5, 23, 9, 'Vanilla Cake, Vanilla Cake with Butter Cream', 1, 1639, '[30][8]1+[30][9]0'),
(6, 23, 9, 'Vanilla Cake, Vanilla Cake with Butter Cream', 1, 989, '[30][8]0+[30][9]0'),
(7, 23, 9, 'Vanilla Cake, Vanilla Cake with Butter Cream', 1, 849, '[30][8]0+[30][9]1'),
(8, 25, 9, 'Vanilla Cake, Vanilla Cake with Butter Cream', 1, 1499, '[30][8]1+[30][9]1'),
(9, 25, 7, 'Chocolate Cake, Honey Chocolate Dip Cake', 1, 2704, '[28][8]1+[28][9]1'),
(10, 25, 8, 'Butter Cookies, Creamy Butter Cookies', 1, 750, '[29][8]0+[29][9]0');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `position` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `type`, `position`, `name`, `enabled`) VALUES
(1, 2, 1, 'Cash upon receipt', 1),
(2, 3, 2, 'Payment by card', 1),
(3, 2, 3, 'Cash on delivery', 1),
(4, 1, 4, 'Payment to a PrivatBank card', 1),
(5, 4, 5, 'Payment in installments', 1),
(6, 5, 6, 'Installment', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `patronymic` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `phone` int(16) DEFAULT NULL,
  `info` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `name`, `surname`, `patronymic`, `avatar`, `phone`, `info`) VALUES
(1, 8, 'pravinya', NULL, NULL, '2.jpg', NULL, ''),
(2, 10, 'hello', NULL, NULL, '2.jpg', NULL, ''),
(3, 12, 'Gunn', 'Chandra Reddy', '', NULL, 0, ''),
(4, 30, 'two', 'hello2', 'dsd', NULL, 2147483647, ''),
(5, 31, 'nbd', 'hgrr', '', NULL, 2147483647, '');

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `data` text DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(8, 'Rcxu8ShIIEknyPYG0zVYuTAlCbnw8EX8', 1702401461, 0),
(10, '4-VVjVwk_dX3l9Fv5BK4fE3uacLo6Vcq', 1702442225, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `user_group_id` int(11) DEFAULT NULL,
  `approved_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `user_group_id`, `approved_at`) VALUES
(8, 'provdigi1@gmail.com', 'provdigi1@gmail.com', '$2y$13$GmuVZdEOd/XNTq23FW9fWeGpFiQwRvqvEpLYbHqbYBYNQsfW8SWD.', 'KGt8JcaqQ1LaWlNA0Q3rEFAytTEnQLHe', 1702401460, NULL, NULL, '::1', 1702401461, 1702401461, 0, NULL, NULL),
(10, 'hello@coderseden.com', 'hello@coderseden.com', '$2y$13$EpU3dtGwyf802g6XaBk2/uzwdgufDpyHSO4.VfQHwNhV7DcEm9gba', 'GdQzN_qdvTyaaaSbMVnRJ6Ct65Ldc00r', 1702442270, NULL, NULL, '::1', 1702442225, 1702442225, 0, NULL, NULL),
(12, 'provdigi@gmail.com', 'provdigi@gmail.com', '$2y$13$hOdTJWxGa7tUeLLm4jkS0.8gPZUY5rsLU1kciX3sg6nLqFue1Ehvi', 'ijWRLD1L2LHxVxB7Bh678W697gVKr-Od', 1702494185, NULL, NULL, '::1', 1702476958, 1702476958, 0, NULL, 1702476958),
(30, 'hello2@coderseden.com', 'hello2@coderseden.com', '$2y$13$YVANK0CG04dyzppC49AK8.R.Iw2tUSkWU1MIMU/6fghoWiqBLVN3m', 'h10hNq8h-5frAzOW_scnls16R0PbnLri', 1702497244, NULL, NULL, '::1', 1702497223, 1702497223, 0, NULL, NULL),
(31, 'hello3@coderseden.com', 'hello3@coderseden.com', '$2y$13$3QY4/DpBvygXZSdsLUSNLO.35JqPQtX7O2eWmuKCMEza4ut8SBaVC', 'KQxNpjTwSb5t5HOihNc22goUAp1jGLKE', 1702497830, NULL, NULL, '::1', 1702497795, 1702497795, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `user_profile_id` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `house` varchar(255) DEFAULT NULL,
  `apartment` varchar(11) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `postoffice` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `user_profile_id`, `country`, `region`, `city`, `street`, `house`, `apartment`, `zipcode`, `postoffice`) VALUES
(1, 2, 'India', 'Telangana', 'Hyderabad', 'Lakshmi Nagar Colony', '16-11-741/D/15, SBI Officers Colony', 'Mathrukrupa', 500036, NULL),
(2, 5, 'India', 'Meridian Villa,#678,Banjarahills,Hyderabad,TG-85654852,52874563', 'Hyderabad', 'Parvathnagar', '111-14-254/55/4', 'Meghana', 500018, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_group_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_auth`
--
ALTER TABLE `admin_auth`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_route` (`route`),
  ADD KEY `index_api` (`api`);

--
-- Indexes for table `admin_config`
--
ALTER TABLE `admin_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_name` (`name`);

--
-- Indexes for table `admin_group`
--
ALTER TABLE `admin_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_group_auth`
--
ALTER TABLE `admin_group_auth`
  ADD KEY `index_admin_group_auth_group_id` (`group_id`),
  ADD KEY `index_auth_id` (`auth_id`),
  ADD KEY `index_group_id_auth_id` (`group_id`,`auth_id`);

--
-- Indexes for table `admin_lang`
--
ALTER TABLE `admin_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_short_code` (`short_code`);

--
-- Indexes for table `admin_logger`
--
ALTER TABLE `admin_logger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_ngrest_log`
--
ALTER TABLE `admin_ngrest_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_ngrest_log_user_id` (`user_id`);

--
-- Indexes for table `admin_property`
--
ALTER TABLE `admin_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `var_name` (`var_name`),
  ADD KEY `index_var_name` (`var_name`),
  ADD KEY `index_class_name` (`class_name`);

--
-- Indexes for table `admin_proxy_build`
--
ALTER TABLE `admin_proxy_build`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `build_token` (`build_token`),
  ADD KEY `index_machine_id` (`machine_id`),
  ADD KEY `index_build_token` (`build_token`);

--
-- Indexes for table `admin_proxy_machine`
--
ALTER TABLE `admin_proxy_machine`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifier` (`identifier`),
  ADD KEY `index_access_token` (`access_token`),
  ADD KEY `index_identifier` (`identifier`),
  ADD KEY `index_is_deleted` (`is_deleted`),
  ADD KEY `index_identifier_is_deleted` (`identifier`,`is_deleted`);

--
-- Indexes for table `admin_queue`
--
ALTER TABLE `admin_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channel` (`channel`),
  ADD KEY `reserved_at` (`reserved_at`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `admin_queue_log`
--
ALTER TABLE `admin_queue_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue_id` (`queue_id`);

--
-- Indexes for table `admin_queue_log_error`
--
ALTER TABLE `admin_queue_log_error`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_queue_log_error_queue_log_id` (`queue_log_id`);

--
-- Indexes for table `admin_scheduler`
--
ALTER TABLE `admin_scheduler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_search_data`
--
ALTER TABLE `admin_search_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_session`
--
ALTER TABLE `admin_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_storage_effect`
--
ALTER TABLE `admin_storage_effect`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifier` (`identifier`);

--
-- Indexes for table `admin_storage_file`
--
ALTER TABLE `admin_storage_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_storage_file_index1` (`folder_id`,`is_hidden`,`is_deleted`,`name_original`),
  ADD KEY `admin_storage_file_index2` (`is_deleted`,`id`),
  ADD KEY `index_upload_user_id` (`upload_user_id`),
  ADD KEY `index_id_hash_name_is_deleted` (`id`,`hash_name`,`is_deleted`),
  ADD KEY `index_name_new_compound` (`name_new_compound`);

--
-- Indexes for table `admin_storage_filter`
--
ALTER TABLE `admin_storage_filter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifier` (`identifier`);

--
-- Indexes for table `admin_storage_filter_chain`
--
ALTER TABLE `admin_storage_filter_chain`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_filter_id` (`filter_id`),
  ADD KEY `index_effect_id` (`effect_id`);

--
-- Indexes for table `admin_storage_folder`
--
ALTER TABLE `admin_storage_folder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_storage_image`
--
ALTER TABLE `admin_storage_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_storage_image_index1` (`file_id`),
  ADD KEY `index_image_filter_id` (`filter_id`),
  ADD KEY `index_file_id_filter_id` (`file_id`,`filter_id`);

--
-- Indexes for table `admin_tag`
--
ALTER TABLE `admin_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `admin_tag_relation`
--
ALTER TABLE `admin_tag_relation`
  ADD PRIMARY KEY (`tag_id`,`table_name`,`pk_id`),
  ADD KEY `index_tag_id` (`tag_id`),
  ADD KEY `index_table_name` (`table_name`),
  ADD KEY `index_pk_id` (`pk_id`),
  ADD KEY `index_table_name_pk_id` (`table_name`,`pk_id`);

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `auth_token` (`auth_token`),
  ADD KEY `index_email` (`email`),
  ADD KEY `index_admin_user_auth_token` (`auth_token`),
  ADD KEY `index_is_deleted_auth_token` (`is_deleted`,`auth_token`),
  ADD KEY `index_is_deleted_id` (`is_deleted`,`id`),
  ADD KEY `index_api_last_activity_id` (`api_last_activity`,`id`);

--
-- Indexes for table `admin_user_auth_notification`
--
ALTER TABLE `admin_user_auth_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_user_auth_notification_user_id` (`user_id`),
  ADD KEY `index_admin_user_auth_notification_auth_id` (`auth_id`);

--
-- Indexes for table `admin_user_device`
--
ALTER TABLE `admin_user_device`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_key` (`auth_key`),
  ADD KEY `index_admin_user_device_user_id` (`user_id`);

--
-- Indexes for table `admin_user_group`
--
ALTER TABLE `admin_user_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_user_group_user_id` (`user_id`),
  ADD KEY `index_admin_user_group_group_id` (`group_id`),
  ADD KEY `index_user_id_group_id` (`user_id`,`group_id`);

--
-- Indexes for table `admin_user_login`
--
ALTER TABLE `admin_user_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_user_login_user_id` (`user_id`),
  ADD KEY `index_ip` (`ip`),
  ADD KEY `index_admin_user_login_auth_token` (`auth_token`),
  ADD KEY `index_is_destroyed` (`is_destroyed`),
  ADD KEY `index_user_id_timestamp_create` (`user_id`,`timestamp_create`);

--
-- Indexes for table `admin_user_login_lockout`
--
ALTER TABLE `admin_user_login_lockout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_user_login_lockout_user_id` (`user_id`);

--
-- Indexes for table `admin_user_online`
--
ALTER TABLE `admin_user_online`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_user_online_user_id` (`user_id`);

--
-- Indexes for table `admin_user_request`
--
ALTER TABLE `admin_user_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_user_admin_user_id` (`user_id`);

--
-- Indexes for table `a_user`
--
ALTER TABLE `a_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_article`
--
ALTER TABLE `catalog_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_article_price`
--
ALTER TABLE `catalog_article_price`
  ADD PRIMARY KEY (`article_id`,`currency_id`,`unit_id`,`qty`,`value_id`) USING BTREE,
  ADD KEY `fk-catalog_article_price-currency_id` (`currency_id`);

--
-- Indexes for table `catalog_article_value_ref`
--
ALTER TABLE `catalog_article_value_ref`
  ADD PRIMARY KEY (`article_id`,`value_id`),
  ADD KEY `fk-catalog_article_value_ref-value_id` (`value_id`);

--
-- Indexes for table `catalog_brand`
--
ALTER TABLE `catalog_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-catalog_brand-image_id` (`image_id`);

--
-- Indexes for table `catalog_currency`
--
ALTER TABLE `catalog_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_delivery`
--
ALTER TABLE `catalog_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_feature`
--
ALTER TABLE `catalog_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_feature_filter`
--
ALTER TABLE `catalog_feature_filter`
  ADD PRIMARY KEY (`feature_id`,`group_id`),
  ADD KEY `fk-nxt_feature_filter-category_id` (`group_id`);

--
-- Indexes for table `catalog_feature_group_ref`
--
ALTER TABLE `catalog_feature_group_ref`
  ADD PRIMARY KEY (`feature_id`,`group_id`);

--
-- Indexes for table `catalog_group`
--
ALTER TABLE `catalog_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-catalog_group-parent_id` (`parent_id`),
  ADD KEY `fk-catalog_group-cover_image_id` (`cover_image_id`);

--
-- Indexes for table `catalog_payment`
--
ALTER TABLE `catalog_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_product`
--
ALTER TABLE `catalog_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-catalog_product-brand_id` (`brand_id`);

--
-- Indexes for table `catalog_product_group_ref`
--
ALTER TABLE `catalog_product_group_ref`
  ADD PRIMARY KEY (`product_id`,`group_id`),
  ADD KEY `fk-catalog_product_group_ref-group_id` (`group_id`);

--
-- Indexes for table `catalog_product_related_ref`
--
ALTER TABLE `catalog_product_related_ref`
  ADD PRIMARY KEY (`product_id`,`related_id`),
  ADD KEY `fk-catalog_product_related_ref-related_id` (`related_id`) USING BTREE;

--
-- Indexes for table `catalog_product_status`
--
ALTER TABLE `catalog_product_status`
  ADD PRIMARY KEY (`product_id`,`status_id`),
  ADD KEY `fk-product_status-status_id` (`status_id`);

--
-- Indexes for table `catalog_related`
--
ALTER TABLE `catalog_related`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_review`
--
ALTER TABLE `catalog_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-review-product_id` (`product_id`) USING BTREE;

--
-- Indexes for table `catalog_set`
--
ALTER TABLE `catalog_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_unit`
--
ALTER TABLE `catalog_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_value`
--
ALTER TABLE `catalog_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-catalog_value-feature_id` (`feature_id`);

--
-- Indexes for table `cms_block`
--
ALTER TABLE `cms_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_cms_block_group_id` (`group_id`),
  ADD KEY `index_cms_block_class` (`class`);

--
-- Indexes for table `cms_block_group`
--
ALTER TABLE `cms_block_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_config`
--
ALTER TABLE `cms_config`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `cms_layout`
--
ALTER TABLE `cms_layout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_log`
--
ALTER TABLE `cms_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_cms_log_user_id` (`user_id`);

--
-- Indexes for table `cms_nav`
--
ALTER TABLE `cms_nav`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_cms_nav_nav_container` (`nav_container_id`),
  ADD KEY `index_cms_nav_parent_nav_id` (`parent_nav_id`);

--
-- Indexes for table `cms_nav_container`
--
ALTER TABLE `cms_nav_container`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_nav_item`
--
ALTER TABLE `cms_nav_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_cms_nav_item_alias` (`alias`),
  ADD KEY `index_cms_nav_item_nav_id` (`nav_id`),
  ADD KEY `index_cms_nav_item_lang_id` (`lang_id`),
  ADD KEY `index_cms_nav_item_nav_item_type_id` (`nav_item_type_id`),
  ADD KEY `index_cms_nav_item_create_user_id` (`create_user_id`),
  ADD KEY `index_cms_nav_item_update_user_id` (`update_user_id`);

--
-- Indexes for table `cms_nav_item_module`
--
ALTER TABLE `cms_nav_item_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_nav_item_page`
--
ALTER TABLE `cms_nav_item_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_cms_nav_item_page_layout_id` (`layout_id`),
  ADD KEY `index_cms_nav_item_page_nav_item_id` (`nav_item_id`),
  ADD KEY `index_cms_nav_item_page_create_user_id` (`create_user_id`);

--
-- Indexes for table `cms_nav_item_page_block_item`
--
ALTER TABLE `cms_nav_item_page_block_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_cms_nav_item_page_block_item_block_id` (`block_id`),
  ADD KEY `index_cms_nav_item_page_block_item_placeholder_var` (`placeholder_var`),
  ADD KEY `index_cms_nav_item_page_block_item_nav_item_page_id` (`nav_item_page_id`),
  ADD KEY `index_cms_nav_item_page_block_item_prev_id` (`prev_id`),
  ADD KEY `index_cms_nav_item_page_block_item_create_user_id` (`create_user_id`),
  ADD KEY `index_cms_nav_item_page_block_item_update_user_id` (`update_user_id`),
  ADD KEY `index_nipi_pv_pi_ih_si` (`nav_item_page_id`,`placeholder_var`,`prev_id`,`is_hidden`,`sort_index`);

--
-- Indexes for table `cms_nav_item_redirect`
--
ALTER TABLE `cms_nav_item_redirect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_nav_permission`
--
ALTER TABLE `cms_nav_permission`
  ADD KEY `index_cms_nav_permission_group_id` (`group_id`),
  ADD KEY `index_cms_nav_permission_nav_id` (`nav_id`),
  ADD KEY `index_cms_nav_permission_group_id_nav_id` (`group_id`,`nav_id`);

--
-- Indexes for table `cms_nav_property`
--
ALTER TABLE `cms_nav_property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_cms_nav_property_nav_id` (`nav_id`),
  ADD KEY `index_cms_nav_property_admin_prop_id` (`admin_prop_id`);

--
-- Indexes for table `cms_redirect`
--
ALTER TABLE `cms_redirect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_theme`
--
ALTER TABLE `cms_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_path` (`base_path`);

--
-- Indexes for table `cms_website`
--
ALTER TABLE `cms_website`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `host` (`host`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms_form`
--
ALTER TABLE `forms_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms_submission`
--
ALTER TABLE `forms_submission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `forms_submission_value`
--
ALTER TABLE `forms_submission_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `submission_id` (`submission_id`);

--
-- Indexes for table `gallery_album`
--
ALTER TABLE `gallery_album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_album_image`
--
ALTER TABLE `gallery_album_image`
  ADD PRIMARY KEY (`image_id`,`album_id`);

--
-- Indexes for table `gallery_cat`
--
ALTER TABLE `gallery_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-order-buyer_id` (`buyer_id`),
  ADD KEY `fk-order-delivery_id` (`delivery_id`),
  ADD KEY `fk-order-payment_id` (`payment_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-order_product-order_id` (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_user_id:user_id` (`user_id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`),
  ADD KEY `user:user_group_id` (`user_group_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_address_user_profile_id:profile_id` (`user_profile_id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_auth`
--
ALTER TABLE `admin_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `admin_config`
--
ALTER TABLE `admin_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_group`
--
ALTER TABLE `admin_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_lang`
--
ALTER TABLE `admin_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_logger`
--
ALTER TABLE `admin_logger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_ngrest_log`
--
ALTER TABLE `admin_ngrest_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=385;

--
-- AUTO_INCREMENT for table `admin_property`
--
ALTER TABLE `admin_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_proxy_build`
--
ALTER TABLE `admin_proxy_build`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_proxy_machine`
--
ALTER TABLE `admin_proxy_machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_queue`
--
ALTER TABLE `admin_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_queue_log`
--
ALTER TABLE `admin_queue_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_queue_log_error`
--
ALTER TABLE `admin_queue_log_error`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_scheduler`
--
ALTER TABLE `admin_scheduler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_search_data`
--
ALTER TABLE `admin_search_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_storage_effect`
--
ALTER TABLE `admin_storage_effect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_storage_file`
--
ALTER TABLE `admin_storage_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `admin_storage_filter`
--
ALTER TABLE `admin_storage_filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_storage_filter_chain`
--
ALTER TABLE `admin_storage_filter_chain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_storage_folder`
--
ALTER TABLE `admin_storage_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_storage_image`
--
ALTER TABLE `admin_storage_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `admin_tag`
--
ALTER TABLE `admin_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_user_auth_notification`
--
ALTER TABLE `admin_user_auth_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `admin_user_device`
--
ALTER TABLE `admin_user_device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `admin_user_group`
--
ALTER TABLE `admin_user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_user_login`
--
ALTER TABLE `admin_user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `admin_user_login_lockout`
--
ALTER TABLE `admin_user_login_lockout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `admin_user_online`
--
ALTER TABLE `admin_user_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `admin_user_request`
--
ALTER TABLE `admin_user_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `a_user`
--
ALTER TABLE `a_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `catalog_article`
--
ALTER TABLE `catalog_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `catalog_brand`
--
ALTER TABLE `catalog_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `catalog_currency`
--
ALTER TABLE `catalog_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catalog_delivery`
--
ALTER TABLE `catalog_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `catalog_feature`
--
ALTER TABLE `catalog_feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `catalog_group`
--
ALTER TABLE `catalog_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `catalog_payment`
--
ALTER TABLE `catalog_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catalog_product`
--
ALTER TABLE `catalog_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `catalog_related`
--
ALTER TABLE `catalog_related`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `catalog_review`
--
ALTER TABLE `catalog_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `catalog_set`
--
ALTER TABLE `catalog_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catalog_unit`
--
ALTER TABLE `catalog_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `catalog_value`
--
ALTER TABLE `catalog_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `cms_block`
--
ALTER TABLE `cms_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `cms_block_group`
--
ALTER TABLE `cms_block_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cms_layout`
--
ALTER TABLE `cms_layout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms_log`
--
ALTER TABLE `cms_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_nav`
--
ALTER TABLE `cms_nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_nav_container`
--
ALTER TABLE `cms_nav_container`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_nav_item`
--
ALTER TABLE `cms_nav_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_nav_item_module`
--
ALTER TABLE `cms_nav_item_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_nav_item_page`
--
ALTER TABLE `cms_nav_item_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_nav_item_page_block_item`
--
ALTER TABLE `cms_nav_item_page_block_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cms_nav_item_redirect`
--
ALTER TABLE `cms_nav_item_redirect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_nav_property`
--
ALTER TABLE `cms_nav_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_redirect`
--
ALTER TABLE `cms_redirect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_theme`
--
ALTER TABLE `cms_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_website`
--
ALTER TABLE `cms_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `forms_form`
--
ALTER TABLE `forms_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms_submission`
--
ALTER TABLE `forms_submission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms_submission_value`
--
ALTER TABLE `forms_submission_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_album`
--
ALTER TABLE `gallery_album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallery_cat`
--
ALTER TABLE `gallery_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `catalog_review`
--
ALTER TABLE `catalog_review`
  ADD CONSTRAINT `fk-review_product_id` FOREIGN KEY (`product_id`) REFERENCES `catalog_product` (`id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_user_id:user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user:user_group_id` FOREIGN KEY (`user_group_id`) REFERENCES `user_group` (`id`);

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_user_profile_id:profile_id` FOREIGN KEY (`user_profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
