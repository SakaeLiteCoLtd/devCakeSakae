CREATE DATABASE testsakaedb;
use testsakaedb;

/*
Navicat MySQL Data Transfer

Source Server         : cakeDB
Source Server Version : 50728
Source Host           : 192.168.4.246:3306
Source Database       : sakaedb

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2022-01-21 12:27:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account_kaikake_elements
-- ----------------------------
CREATE TABLE `account_kaikake_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(20) NOT NULL,
  `plusminus` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=sjis;

-- ----------------------------
-- Table structure for account_material_kaikake_touzas
-- ----------------------------
CREATE TABLE `account_material_kaikake_touzas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kaikake_id` int(11) NOT NULL,
  `kaikake_touza_bank_id` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for account_material_kaikakes
-- ----------------------------
CREATE TABLE `account_material_kaikakes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sup_id` int(11) NOT NULL,
  `kingaku` double NOT NULL,
  `date` date NOT NULL,
  `kaikake_element_id` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_staff` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for account_price_products
-- ----------------------------
CREATE TABLE `account_price_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(14,2) NOT NULL,
  `date_koushin` date NOT NULL,
  `tourokubi` datetime NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for account_product_kaikake_touzas
-- ----------------------------
CREATE TABLE `account_product_kaikake_touzas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kaikake_id` int(11) NOT NULL,
  `kaikake_touza_bank_id` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for account_product_kaikakes
-- ----------------------------
CREATE TABLE `account_product_kaikakes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sup_id` int(11) NOT NULL,
  `kingaku` double NOT NULL,
  `date` date NOT NULL,
  `kaikake_element_id` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_staff` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for account_syoumou_elements
-- ----------------------------
CREATE TABLE `account_syoumou_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for account_touza_banks
-- ----------------------------
CREATE TABLE `account_touza_banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `branch` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=sjis;

-- ----------------------------
-- Table structure for account_urikake_elements
-- ----------------------------
CREATE TABLE `account_urikake_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `plusminus` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for account_urikake_materials
-- ----------------------------
CREATE TABLE `account_urikake_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sup_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `grade` varchar(20) CHARACTER SET sjis NOT NULL,
  `color` varchar(20) CHARACTER SET sjis NOT NULL,
  `amount` double NOT NULL,
  `tanka` double NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_staff` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for account_urikake_price_materials
-- ----------------------------
CREATE TABLE `account_urikake_price_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `customer_code` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_staff` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for account_urikake_touzas
-- ----------------------------
CREATE TABLE `account_urikake_touzas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urikake_id` int(11) NOT NULL,
  `urikake_touza_bank_id` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for account_urikake_zaikohosyous
-- ----------------------------
CREATE TABLE `account_urikake_zaikohosyous` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urikake_id` int(11) NOT NULL,
  `zaikohosyou` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for account_urikakes
-- ----------------------------
CREATE TABLE `account_urikakes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_code` int(11) NOT NULL,
  `kingaku` double NOT NULL,
  `date` date NOT NULL,
  `urikake_element_id` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_staff` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for account_yusyouzai_gaityu_urikakes
-- ----------------------------
CREATE TABLE `account_yusyouzai_gaityu_urikakes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `product_sup_id` int(11) NOT NULL,
  `tanka` double NOT NULL,
  `date_urikake` date NOT NULL,
  `amount` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_staff` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for account_yusyouzai_gaityues
-- ----------------------------
CREATE TABLE `account_yusyouzai_gaityues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `product_sup_id` int(11) NOT NULL,
  `customer_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `chokusou` int(1) NOT NULL DEFAULT '0',
  `flag` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_staff` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for account_yusyouzai_masters
-- ----------------------------
CREATE TABLE `account_yusyouzai_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `customer_code` int(11) NOT NULL,
  `price` double NOT NULL,
  `flag_product_material` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_staff` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for account_yusyouzai_ukeires
-- ----------------------------
CREATE TABLE `account_yusyouzai_ukeires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tanka` double NOT NULL,
  `date_ukeire` date NOT NULL,
  `amount` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_staff` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for assemble_products
-- ----------------------------
CREATE TABLE `assemble_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `child_pid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `inzu` int(11) NOT NULL,
  `self_assemble` int(11) NOT NULL DEFAULT '0',
  `status_self_assemble` int(11) NOT NULL DEFAULT '0',
  `flag` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for attach_order_to_suppliers
-- ----------------------------
CREATE TABLE `attach_order_to_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kari_order_to_supplier_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for box_konpous
-- ----------------------------
CREATE TABLE `box_konpous` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_box` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name_box` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for check_kouteis
-- ----------------------------
CREATE TABLE `check_kouteis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lot_num` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `emp` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `datetime_graph` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `update_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for check_lots
-- ----------------------------
CREATE TABLE `check_lots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime_hakkou` datetime NOT NULL,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lot_num` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `flag_used` int(11) NOT NULL DEFAULT '0',
  `date_deliver` date DEFAULT NULL,
  `place_deliver_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cs_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operator_deliver` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flag_deliver` datetime DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL DEFAULT '9999',
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `handy_index` (`date_deliver`,`place_deliver_code`,`product_code`) USING BTREE,
  KEY `handy_index2` (`product_code`,`lot_num`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for check_lots_doubles
-- ----------------------------
CREATE TABLE `check_lots_doubles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_check_lot` int(11) NOT NULL,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lot_num` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `first_created_time` datetime NOT NULL,
  `first_created_staff` int(11) NOT NULL,
  `second_created_time` datetime NOT NULL,
  `second_created_staff` int(11) NOT NULL,
  `delete_flag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for check_order_dnps
-- ----------------------------
CREATE TABLE `check_order_dnps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_order` date NOT NULL,
  `num_order` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for cont_rejections
-- ----------------------------
CREATE TABLE `cont_rejections` (
  `id` int(11) NOT NULL,
  `cont` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for customers_handys
-- ----------------------------
CREATE TABLE `customers_handys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place_deliver_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for deliver_companies
-- ----------------------------
CREATE TABLE `deliver_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `customer_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for delivers
-- ----------------------------
CREATE TABLE `delivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `place_deliver_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for denpyou_dnp_minoukannous
-- ----------------------------
CREATE TABLE `denpyou_dnp_minoukannous` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_edi_id` int(11) NOT NULL,
  `name_order` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `place_deliver` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `conf_print` varchar(2) COLLATE utf8_unicode_ci DEFAULT '0',
  `minoukannou` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for denpyou_shiires
-- ----------------------------
CREATE TABLE `denpyou_shiires` (
  `id_denpyou` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `id_supplier` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tourokubi` date NOT NULL,
  `kaisu_print` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_denpyou`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for dnp_total_amounts
-- ----------------------------
CREATE TABLE `dnp_total_amounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_order` date NOT NULL,
  `num_order` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name_order` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `line_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_deliver` date NOT NULL,
  `amount` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for file_copy_checks
-- ----------------------------
CREATE TABLE `file_copy_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_folder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `copy_status` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for genjyou_seikeikis
-- ----------------------------
CREATE TABLE `genjyou_seikeikis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seikeiki` int(11) NOT NULL,
  `seikeiki_code` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for im_kikaku_taious
-- ----------------------------
CREATE TABLE `im_kikaku_taious` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `kensahyuo_num` int(11) NOT NULL,
  `kind_kensa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_num` int(11) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_staff` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for im_kikakus
-- ----------------------------
CREATE TABLE `im_kikakus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `im_sokuteidata_head_id` int(11) DEFAULT NULL,
  `size_num` int(11) DEFAULT NULL,
  `size` float DEFAULT NULL,
  `upper` float DEFAULT NULL,
  `lower` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_name` (`im_sokuteidata_head_id`,`size`,`size_num`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for im_sokuteidata_heads
-- ----------------------------
CREATE TABLE `im_sokuteidata_heads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `type_im` int(11) DEFAULT NULL,
  `kind_kensa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inspec_date` date NOT NULL,
  `lot_num` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `torikomi` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_name` (`lot_num`,`product_code`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for im_sokuteidata_results
-- ----------------------------
CREATE TABLE `im_sokuteidata_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `im_sokuteidata_head_id` int(11) NOT NULL,
  `lot_num` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inspec_datetime` datetime NOT NULL,
  `serial` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `size_num` int(11) NOT NULL,
  `result` decimal(10,3) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `staff_inspect` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_name` (`im_sokuteidata_head_id`,`lot_num`,`size_num`,`serial`,`result`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for kadou_seikeis
-- ----------------------------
CREATE TABLE `kadou_seikeis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seikeiki` int(11) NOT NULL,
  `seikeiki_code` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_tm` datetime NOT NULL,
  `finishing_tm` datetime NOT NULL,
  `cycle_shot` decimal(10,3) NOT NULL,
  `amount_shot` int(11) NOT NULL,
  `accomp_rate` decimal(10,3) NOT NULL,
  `present_kensahyou` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `first_lot_num` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_lot_num` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sum_predict_lot_num` int(11) DEFAULT NULL,
  `status_search` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for kadouritsu_seikeikis
-- ----------------------------
CREATE TABLE `kadouritsu_seikeikis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seikeiki` int(11) NOT NULL,
  `date` date NOT NULL,
  `kadouritus` decimal(10,3) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for kari_kadou_seikeis
-- ----------------------------
CREATE TABLE `kari_kadou_seikeis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seikeiki` int(11) NOT NULL,
  `seikeiki_code` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_tm` datetime NOT NULL,
  `finishing_tm` datetime NOT NULL,
  `cycle_shot` decimal(10,3) NOT NULL,
  `amount_shot` int(11) NOT NULL,
  `accomp_rate` decimal(10,3) NOT NULL,
  `present_kensahyou` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `first_lot_num` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_lot_num` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sum_predict_lot_num` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for kari_order_to_suppliers
-- ----------------------------
CREATE TABLE `kari_order_to_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `date_deliver` date NOT NULL,
  `amount` int(11) NOT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `tourokubi` date NOT NULL,
  `flag_attach` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for katakouzous
-- ----------------------------
CREATE TABLE `katakouzous` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `kataban` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `torisu` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_tori` varchar(2) COLLATE utf8_unicode_ci DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for kensahyou_heads
-- ----------------------------
CREATE TABLE `kensahyou_heads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  `type_im` int(11) NOT NULL DEFAULT '0',
  `maisu` int(11) DEFAULT '1',
  `size_1` float DEFAULT NULL,
  `upper_1` float DEFAULT NULL,
  `lower_1` float DEFAULT NULL,
  `size_2` float DEFAULT NULL,
  `upper_2` float DEFAULT NULL,
  `lower_2` float DEFAULT NULL,
  `size_3` float DEFAULT NULL,
  `upper_3` float DEFAULT NULL,
  `lower_3` float DEFAULT NULL,
  `size_4` float DEFAULT NULL,
  `upper_4` float DEFAULT NULL,
  `lower_4` float DEFAULT NULL,
  `size_5` float DEFAULT NULL,
  `upper_5` float DEFAULT NULL,
  `lower_5` float DEFAULT NULL,
  `size_6` float DEFAULT NULL,
  `upper_6` float DEFAULT NULL,
  `lower_6` float DEFAULT NULL,
  `size_7` float DEFAULT NULL,
  `upper_7` float DEFAULT NULL,
  `lower_7` float DEFAULT NULL,
  `size_8` float DEFAULT NULL,
  `upper_8` float DEFAULT NULL,
  `lower_8` float DEFAULT NULL,
  `size_9` float DEFAULT NULL,
  `text_10` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_11` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bik` text COLLATE utf8_unicode_ci,
  `size_12` float DEFAULT NULL,
  `upper_12` float DEFAULT NULL,
  `lower_12` float DEFAULT NULL,
  `size_13` float DEFAULT NULL,
  `upper_13` float DEFAULT NULL,
  `lower_13` float DEFAULT NULL,
  `size_14` float DEFAULT NULL,
  `upper_14` float DEFAULT NULL,
  `lower_14` float DEFAULT NULL,
  `size_15` float DEFAULT NULL,
  `upper_15` float DEFAULT NULL,
  `lower_15` float DEFAULT NULL,
  `size_16` float DEFAULT NULL,
  `upper_16` float DEFAULT NULL,
  `lower_16` float DEFAULT NULL,
  `size_17` float DEFAULT NULL,
  `upper_17` float DEFAULT NULL,
  `lower_17` float DEFAULT NULL,
  `size_18` float DEFAULT NULL,
  `upper_18` float DEFAULT NULL,
  `lower_18` float DEFAULT NULL,
  `size_19` float DEFAULT NULL,
  `upper_19` float DEFAULT NULL,
  `lower_19` float DEFAULT NULL,
  `size_20` float DEFAULT NULL,
  `upper_20` float DEFAULT NULL,
  `lower_20` float DEFAULT NULL,
  `bik_2` text COLLATE utf8_unicode_ci,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for kensahyou_jyunbi_insatsus
-- ----------------------------
CREATE TABLE `kensahyou_jyunbi_insatsus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kensahyou_heads_id` int(11) NOT NULL,
  `date_deliver` date NOT NULL,
  `amount` int(11) NOT NULL,
  `place_line` varchar(25) CHARACTER SET utf8 NOT NULL,
  `field` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for kensahyou_sokuteidatas
-- ----------------------------
CREATE TABLE `kensahyou_sokuteidatas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kensahyou_heads_id` int(11) NOT NULL,
  `product_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lot_num` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manu_date` date NOT NULL,
  `inspec_date` date NOT NULL,
  `cavi_num` int(11) NOT NULL,
  `result_size_1` float DEFAULT NULL,
  `result_size_2` float DEFAULT NULL,
  `result_size_3` float DEFAULT NULL,
  `result_size_4` float DEFAULT NULL,
  `result_size_5` float DEFAULT NULL,
  `result_size_6` float DEFAULT NULL,
  `result_size_7` float DEFAULT NULL,
  `result_size_8` float DEFAULT NULL,
  `result_size_9` float DEFAULT NULL,
  `result_size_10` float DEFAULT NULL,
  `result_size_11` float DEFAULT NULL,
  `result_size_12` float DEFAULT NULL,
  `result_size_13` float DEFAULT NULL,
  `result_size_14` float DEFAULT NULL,
  `result_size_15` float DEFAULT NULL,
  `result_size_16` float DEFAULT NULL,
  `result_size_17` float DEFAULT NULL,
  `result_size_18` float DEFAULT NULL,
  `result_size_19` float DEFAULT NULL,
  `result_size_20` float DEFAULT NULL,
  `result_weight` float DEFAULT NULL,
  `situation_dist1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `situation_dist2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for kind_products
-- ----------------------------
CREATE TABLE `kind_products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `like_product_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for konpous
-- ----------------------------
CREATE TABLE `konpous` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `irisu` int(11) NOT NULL,
  `id_box` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for koutei_file_copy_checks
-- ----------------------------
CREATE TABLE `koutei_file_copy_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_folder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `copy_status` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for koutei_im_kikaku_taious
-- ----------------------------
CREATE TABLE `koutei_im_kikaku_taious` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `kensahyou_size` int(11) NOT NULL,
  `kind_kensa` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `im_size_num` int(11) NOT NULL,
  `shape_detection` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for koutei_im_kikakus
-- ----------------------------
CREATE TABLE `koutei_im_kikakus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `im_sokuteidata_head_id` int(11) DEFAULT NULL,
  `size_num` int(11) DEFAULT NULL,
  `size` decimal(10,3) DEFAULT NULL,
  `upper` decimal(10,3) DEFAULT NULL,
  `lower` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for koutei_im_sokuteidata_heads
-- ----------------------------
CREATE TABLE `koutei_im_sokuteidata_heads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `type_im` int(11) DEFAULT NULL,
  `kind_kensa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inspec_date` date NOT NULL,
  `lot_num` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `torikomi` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for koutei_im_sokuteidata_results
-- ----------------------------
CREATE TABLE `koutei_im_sokuteidata_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `im_sokuteidata_head_id` int(11) NOT NULL,
  `lot_num` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inspec_datetime` datetime NOT NULL,
  `serial` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `size_num` int(11) NOT NULL,
  `result` decimal(10,3) NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `staff_inspect` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for koutei_kensahyou_heads
-- ----------------------------
CREATE TABLE `koutei_kensahyou_heads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  `type_im` int(11) NOT NULL DEFAULT '0',
  `size_1` float DEFAULT NULL,
  `upper_1` float DEFAULT NULL,
  `lower_1` float DEFAULT NULL,
  `size_2` float DEFAULT NULL,
  `upper_2` float DEFAULT NULL,
  `lower_2` float DEFAULT NULL,
  `size_3` float DEFAULT NULL,
  `upper_3` float DEFAULT NULL,
  `lower_3` float DEFAULT NULL,
  `size_4` float DEFAULT NULL,
  `upper_4` float DEFAULT NULL,
  `lower_4` float DEFAULT NULL,
  `size_5` float DEFAULT NULL,
  `upper_5` float DEFAULT NULL,
  `lower_5` float DEFAULT NULL,
  `size_6` float DEFAULT NULL,
  `upper_6` float DEFAULT NULL,
  `lower_6` float DEFAULT NULL,
  `size_7` float DEFAULT NULL,
  `upper_7` float DEFAULT NULL,
  `lower_7` float DEFAULT NULL,
  `size_8` float DEFAULT NULL,
  `upper_8` float DEFAULT NULL,
  `lower_8` float DEFAULT NULL,
  `size_9` float DEFAULT NULL,
  `text_10` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_11` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bik` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for label_csvs
-- ----------------------------
CREATE TABLE `label_csvs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number_sheet` int(11) NOT NULL DEFAULT '0',
  `hanbetsu` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `place1` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `place2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product1` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `product2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_pro1` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name_pro2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `irisu1` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `irisu2` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit1` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit2` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `start_lot` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for label_element_places
-- ----------------------------
CREATE TABLE `label_element_places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place_code` int(11) DEFAULT NULL,
  `place1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `place2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genjyou` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for label_element_units
-- ----------------------------
CREATE TABLE `label_element_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `genjyou` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for label_insideouts
-- ----------------------------
CREATE TABLE `label_insideouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `num_inside` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for label_nashies
-- ----------------------------
CREATE TABLE `label_nashies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tourokubi` date NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for label_setikkatsues
-- ----------------------------
CREATE TABLE `label_setikkatsues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id1` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `product_id2` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `product_id3` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind_set_assemble` int(11) DEFAULT '0',
  `tourokubi` date NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for label_type_products
-- ----------------------------
CREATE TABLE `label_type_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `place_code` int(11) NOT NULL,
  `unit` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for label_types
-- ----------------------------
CREATE TABLE `label_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `row_product` int(11) NOT NULL,
  `row_place` int(11) NOT NULL,
  `row_amount` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for material_types
-- ----------------------------
CREATE TABLE `material_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for materials
-- ----------------------------
CREATE TABLE `materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_substitute` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'grade_colorの文字数が21字以上のとき',
  `material_type_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tani` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multiple_sup` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for minimum_max_stock_products
-- ----------------------------
CREATE TABLE `minimum_max_stock_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `minimum_stock` int(11) NOT NULL,
  `max_stock` int(11) NOT NULL,
  `delete_flag` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for minus_riron_stock_products
-- ----------------------------
CREATE TABLE `minus_riron_stock_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_riron_stock` date NOT NULL,
  `sheet_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_minus` date NOT NULL,
  `amount_minus` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_staff` int(11) DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for moto_lots
-- ----------------------------
CREATE TABLE `moto_lots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hasu_lot` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `moto_lot` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `moto_lot_amount` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for name_kind_set_assembles
-- ----------------------------
CREATE TABLE `name_kind_set_assembles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for name_lot_flag_useds
-- ----------------------------
CREATE TABLE `name_lot_flag_useds` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for non_kadou_seikeis
-- ----------------------------
CREATE TABLE `non_kadou_seikeis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outsource_handy_id` int(11) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for operators_handy
-- ----------------------------
CREATE TABLE `operators_handy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for order_dnp_headers
-- ----------------------------
CREATE TABLE `order_dnp_headers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_order` date NOT NULL,
  `num_order` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for order_dnp_kannous
-- ----------------------------
CREATE TABLE `order_dnp_kannous` (
  `date_order` date NOT NULL,
  `num_order` varchar(20) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `code` varchar(20) NOT NULL,
  `bunnou` int(11) NOT NULL DEFAULT '0',
  `date_deliver` date NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `minoukannou` int(11) DEFAULT '0',
  `delete_flg` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`date_order`,`num_order`,`product_id`,`code`,`bunnou`,`date_deliver`,`delete_flg`)
) ENGINE=InnoDB DEFAULT CHARSET=sjis;

-- ----------------------------
-- Table structure for order_edis
-- ----------------------------
CREATE TABLE `order_edis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place_deliver_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_order` date NOT NULL,
  `price` double DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `line_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_deliver` date NOT NULL,
  `num_order` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `first_date_deliver` date DEFAULT NULL,
  `customer_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `place_line` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `check_denpyou` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `gaityu` int(11) DEFAULT NULL,
  `bunnou` int(11) NOT NULL DEFAULT '0',
  `kannou` int(11) NOT NULL DEFAULT '0',
  `date_bunnou` date DEFAULT NULL,
  `check_kannou` datetime DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `handy_index` (`date_deliver`,`place_deliver_code`,`product_code`,`amount`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for order_materials
-- ----------------------------
CREATE TABLE `order_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `grade` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_order` date NOT NULL,
  `date_stored` date NOT NULL,
  `amount` float NOT NULL,
  `sup_id` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deliv_cp` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `purchaser` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `check_flag` int(11) NOT NULL DEFAULT '0',
  `flg` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `first_date_st` date DEFAULT NULL,
  `real_date_st` date DEFAULT NULL,
  `num_lot` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for order_special_shiires
-- ----------------------------
CREATE TABLE `order_special_shiires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_order` date NOT NULL,
  `from_order` int(11) DEFAULT NULL,
  `num_order` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `order_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` double DEFAULT NULL,
  `date_deliver` date NOT NULL,
  `amount` int(11) NOT NULL,
  `product_supplier_id` int(11) NOT NULL,
  `kannou` int(11) NOT NULL DEFAULT '0',
  `check_kannou` datetime DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_staff` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for order_specials
-- ----------------------------
CREATE TABLE `order_specials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_order` date NOT NULL,
  `num_order` varchar(20) NOT NULL,
  `order_name` varchar(255) NOT NULL,
  `price` double DEFAULT NULL,
  `date_deliver` date NOT NULL,
  `amount` int(11) NOT NULL,
  `cs_id` varchar(20) NOT NULL,
  `kannou` int(11) NOT NULL DEFAULT '0',
  `check_kannou` datetime DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_staff` int(11) DEFAULT '0',
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=sjis;

-- ----------------------------
-- Table structure for order_syoumou_shiire_fooders
-- ----------------------------
CREATE TABLE `order_syoumou_shiire_fooders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_syoumou_shiire_header_id` int(11) NOT NULL,
  `element_shiwake` int(11) NOT NULL,
  `order_product_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `amount` int(11) NOT NULL,
  `date_deliver` date NOT NULL,
  `real_date_deliver` date DEFAULT NULL,
  `kannou` int(11) NOT NULL DEFAULT '0',
  `check_kannou` datetime DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_staff` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for order_syoumou_shiire_headers
-- ----------------------------
CREATE TABLE `order_syoumou_shiire_headers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_order` date NOT NULL,
  `num_order` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `syoumou_supplier_id` int(11) NOT NULL,
  `tax_include` int(11) NOT NULL DEFAULT '0',
  `from_order` int(11) NOT NULL,
  `kannou` int(11) NOT NULL DEFAULT '0',
  `check_kannou` date DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_staff` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for order_to_suppliers
-- ----------------------------
CREATE TABLE `order_to_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(10,2) DEFAULT NULL,
  `date_deliver` date NOT NULL,
  `first_date_deliver` date DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `first_amount` int(11) DEFAULT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `tourokubi` date NOT NULL,
  `id_denpyou` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maisu_denpyou_bunnou` int(11) NOT NULL DEFAULT '0',
  `kanryou_deliver` date DEFAULT NULL,
  `delete_flag` int(11) DEFAULT '0',
  `created_staff` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_supplier_index` (`id_supplier`,`date_deliver`,`product_code`,`amount`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for order_yobistock_suppliers
-- ----------------------------
CREATE TABLE `order_yobistock_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_denpyou` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_order` date NOT NULL,
  `num_order` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `product_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `amount` int(11) NOT NULL,
  `first_amount` int(11) NOT NULL,
  `date_deliver` date NOT NULL,
  `first_date_deliver` date NOT NULL,
  `kanou_flag` int(11) NOT NULL DEFAULT '0',
  `date_kannou` date DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for outsource_handys
-- ----------------------------
CREATE TABLE `outsource_handys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for place_delivers
-- ----------------------------
CREATE TABLE `place_delivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_from_order` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cs_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for price_materials
-- ----------------------------
CREATE TABLE `price_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tourokubi` date NOT NULL,
  `price` double NOT NULL,
  `material_type_id` int(11) DEFAULT NULL,
  `status_buying` int(11) NOT NULL DEFAULT '0',
  `tani` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lot_low` int(11) NOT NULL,
  `lot_upper` int(11) NOT NULL,
  `sup_id` int(11) NOT NULL,
  `emp_id` varchar(5) CHARACTER SET sjis DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_staff` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for price_products
-- ----------------------------
CREATE TABLE `price_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(14,2) NOT NULL,
  `start` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for product_chokusous
-- ----------------------------
CREATE TABLE `product_chokusous` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(40) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for product_gaityus
-- ----------------------------
CREATE TABLE `product_gaityus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `price_shiire` double NOT NULL,
  `flag_denpyou` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for product_suppliers
-- ----------------------------
CREATE TABLE `product_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `handy_id` int(11) DEFAULT NULL,
  `flag_denpyou` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for products
-- ----------------------------
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `place_deliver_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `material_kind` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_grade` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `col_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `color` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` decimal(10,3) NOT NULL,
  `torisu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cycle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_p` int(1) NOT NULL DEFAULT '1',
  `gaityu` int(1) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `ryousan_flag` int(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for result_check_kouteis
-- ----------------------------
CREATE TABLE `result_check_kouteis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `check_koutei_id` int(11) NOT NULL,
  `size_num` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET sjis NOT NULL,
  `update_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for result_zensu_fooders
-- ----------------------------
CREATE TABLE `result_zensu_fooders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `result_zensu_head_id` int(11) NOT NULL,
  `cont_rejection_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `bik` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for result_zensu_heads
-- ----------------------------
CREATE TABLE `result_zensu_heads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lot_num` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `count_inspection` int(11) NOT NULL DEFAULT '1',
  `staff_id` int(11) NOT NULL,
  `datetime_start` datetime NOT NULL,
  `datetime_finish` datetime DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zensu_kensa_index` (`datetime_finish`,`datetime_start`,`product_code`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for riron_stock_products
-- ----------------------------
CREATE TABLE `riron_stock_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_culc` date NOT NULL,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for schedule_kouteis
-- ----------------------------
CREATE TABLE `schedule_kouteis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `seikeiki` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `present_kensahyou` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tantou` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `koutei_index` (`datetime`,`seikeiki`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for seikeis
-- ----------------------------
CREATE TABLE `seikeis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seikeiki` int(11) NOT NULL,
  `seikeiki_code` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starting_tm` datetime NOT NULL,
  `finishing_tm` datetime NOT NULL,
  `cycle_shot` decimal(10,3) NOT NULL,
  `amount_shot` int(11) NOT NULL,
  `accomp_rate` decimal(10,3) NOT NULL,
  `present_kensahyou` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
CREATE TABLE `sessions` (
  `id` char(40) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `created` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `data` text NOT NULL,
  `expires` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for staffs
-- ----------------------------
CREATE TABLE `staffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `l_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '4',
  `date_start` date DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for status_roles
-- ----------------------------
CREATE TABLE `status_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for stock_end_material_tests
-- ----------------------------
CREATE TABLE `stock_end_material_tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price_material_id` int(11) NOT NULL,
  `product_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lot_num` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_material` int(11) NOT NULL COMMENT '0=バージン、1=粉砕、2=バージン＋粉砕',
  `amount` float NOT NULL,
  `state` int(2) NOT NULL DEFAULT '0',
  `status_import_tab` int(2) NOT NULL DEFAULT '0' COMMENT 'csv出力済み＝１',
  `import_tab_staff` int(11) DEFAULT NULL,
  `import_tab_at` datetime DEFAULT NULL,
  `shiped_staff` int(11) DEFAULT NULL,
  `shiped_at` datetime DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for stock_end_materials
-- ----------------------------
CREATE TABLE `stock_end_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price_material_id` int(11) NOT NULL,
  `product_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lot_num` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_material` int(11) NOT NULL COMMENT '0=バージン、1=粉砕、2=バージン＋粉砕',
  `amount` float NOT NULL,
  `state` int(2) NOT NULL DEFAULT '0',
  `status_import_tab` int(2) NOT NULL DEFAULT '0' COMMENT 'csv出力済み＝１',
  `import_tab_staff` int(11) DEFAULT NULL,
  `import_tab_at` datetime DEFAULT NULL,
  `shiped_staff` int(11) DEFAULT NULL,
  `shiped_at` datetime DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for stock_inout_worklogs
-- ----------------------------
CREATE TABLE `stock_inout_worklogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `lot_num` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outsource_code` int(11) NOT NULL,
  `outsource_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `operator_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `flag_manual` smallint(6) NOT NULL DEFAULT '0',
  `is_canceled` smallint(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `date_work` date NOT NULL,
  `canceled_at` datetime DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `handy_index` (`outsource_code`,`date_work`,`product_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for stock_products
-- ----------------------------
CREATE TABLE `stock_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `date_stock` date NOT NULL,
  `amount` int(11) NOT NULL,
  `delete_flag` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for supplier_sections
-- ----------------------------
CREATE TABLE `supplier_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for suppliers
-- ----------------------------
CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_section_id` int(11) NOT NULL,
  `supplier_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `charge_p` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for syoumou_suppliers
-- ----------------------------
CREATE TABLE `syoumou_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `furigana` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_include` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_staff` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_staff` int(5) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for syoyou_keikakus
-- ----------------------------
CREATE TABLE `syoyou_keikakus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_keikaku` date NOT NULL,
  `num_keikaku` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `date_deliver` date NOT NULL,
  `amount` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_staff` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for unit_order_to_suppliers
-- ----------------------------
CREATE TABLE `unit_order_to_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_supplier` int(11) NOT NULL,
  `product_code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `unit_amount` int(11) NOT NULL,
  `kijyun_stock` int(11) NOT NULL DEFAULT '0',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for users
-- ----------------------------
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '1' COMMENT 'ログイン時にチェックするため1にする',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_staff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for zensu_products
-- ----------------------------
CREATE TABLE `zensu_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `shot_cycle` int(11) DEFAULT NULL,
  `kijyun` float DEFAULT NULL,
  `kariunyou` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  `staff_code` int(11) NOT NULL,
  `datetime_touroku` datetime NOT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_staff` int(11) NOT NULL,
  `update_staff` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- View structure for v_order_edis
-- ----------------------------
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order_edis` AS select `OE`.`date_deliver` AS `date_deliver`,`OE`.`place_deliver_code` AS `place_deliver_code`,`OE`.`product_code` AS `product_code`,`OE`.`amount` AS `amount`,ifnull(sum(`CL`.`amount`),0) AS `finish_amount`,if((`OE`.`amount` <= sum(`CL`.`amount`)),1,0) AS `finish_flag`,max(`CL`.`flag_deliver`) AS `datetime_last_check` from (`v_transaction_handys` `OE` left join `check_lots` `CL` on(((`OE`.`date_deliver` = `CL`.`date_deliver`) and (convert(`OE`.`place_deliver_code` using utf8mb4) = convert(`CL`.`place_deliver_code` using utf8mb4)) and (convert(`OE`.`product_code` using utf8mb4) = convert(`CL`.`product_code` using utf8mb4)) and (`CL`.`flag_deliver` is not null) and (`CL`.`flag_used` = 0)))) group by `OE`.`date_deliver`,`OE`.`place_deliver_code`,`OE`.`product_code`,`OE`.`amount` ;

-- ----------------------------
-- View structure for v_transaction_handys
-- ----------------------------
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_transaction_handys` AS select `order_edis`.`date_deliver` AS `date_deliver`,`order_edis`.`place_deliver_code` AS `place_deliver_code`,`order_edis`.`product_code` AS `product_code`,sum(`order_edis`.`amount`) AS `amount` from `order_edis` group by `order_edis`.`date_deliver`,`order_edis`.`place_deliver_code`,`order_edis`.`product_code` having (`order_edis`.`date_deliver` > '2019-09-01') ;
SET FOREIGN_KEY_CHECKS=1;
