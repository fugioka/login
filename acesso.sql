/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50141
Source Host           : localhost:3306
Source Database       : acesso

Target Server Type    : MYSQL
Target Server Version : 50141
File Encoding         : 65001

Date: 2013-05-22 21:16:47
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tb_acesso`
-- ----------------------------
DROP TABLE IF EXISTS `tb_acesso`;
CREATE TABLE `tb_acesso` (
  `id_acesso` int(11) NOT NULL AUTO_INCREMENT,
  `desc_acesso` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_acesso`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_acesso
-- ----------------------------
INSERT INTO `tb_acesso` VALUES ('1', 'Usuario Comum');
INSERT INTO `tb_acesso` VALUES ('2', 'Administrador');
INSERT INTO `tb_acesso` VALUES ('3', 'Root');

-- ----------------------------
-- Table structure for `tb_usuario`
-- ----------------------------
DROP TABLE IF EXISTS `tb_usuario`;
CREATE TABLE `tb_usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `login_usuario` varchar(150) DEFAULT NULL,
  `senha_usuario` varchar(255) DEFAULT NULL,
  `id_tipo_acesso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `id_acesso` (`id_tipo_acesso`),
  CONSTRAINT `id_acesso` FOREIGN KEY (`id_tipo_acesso`) REFERENCES `tb_acesso` (`id_acesso`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_usuario
-- ----------------------------
INSERT INTO `tb_usuario` VALUES ('9', 'root', 'root', '3');
