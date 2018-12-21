/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.23 : Database - springboot
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot`;

/*Table structure for table `oauth_access_token` */

DROP TABLE IF EXISTS `oauth_access_token`;

CREATE TABLE `oauth_access_token` (
  `token_id` varchar(50) NOT NULL,
  `token` blob,
  `authentication_id` varchar(256) DEFAULT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `oauth_access_token` */

insert  into `oauth_access_token`(`token_id`,`token`,`authentication_id`,`user_name`,`client_id`,`authentication`,`refresh_token`) values ('05efdee1c8e2eacd1d09b213744e696c','\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken矠6$\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6匷茜?\0\0xpsr\0java.util.Datehj?KYt\0\0xpw\0\0f与巟psr\0%java.util.Collections$UnmodifiableSet€捬彌€U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0€薧?\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet豯譠曒*\0\0xr\0java.util.HashSet篋厱柛?\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writext\0bearert\0$1a630bcc-bb28-46be-9aaf-e8aa2ecdeab3','ae0730a7316e78978184adb35ba3d119',NULL,'client_1','\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication紷bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken营(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList?%1奠?\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0€薧?\0L\0cq\0~\0xpsr\0java.util.ArrayListx佉櫱a?\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0?\0L\0rolet\0Ljava/lang/String;xpt\0client_credentialsxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>i?\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0client_1sr\0%java.util.Collections$UnmodifiableMap癀t?B\0L\0mq\0~\0xpsr\0java.util.HashMap诹?`?\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0client_credentialst\0	client_idt\0client_1xsr\0%java.util.Collections$UnmodifiableSet€捬彌€U\0\0xq\0~\0	sr\0java.util.LinkedHashSet豯譠曒*\0\0xr\0java.util.HashSet篋厱柛?\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0#w\0\0\0?@\0\0\0\0\0q\0~\0xsq\0~\0\Z?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0#w\0\0\0?@\0\0\0\0\0\0xsq\0~\0#w\0\0\0?@\0\0\0\0\0\0xp',NULL),('5d2f9de3835dddc1e3c072dc66f30d05','\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken矠6$\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6匷茜?\0\0xpsr\0java.util.Datehj?KYt\0\0xpw\0\0f愚fxsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/逩c澬煞\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens?\ncT証\0L\0valueq\0~\0xpt\0$9e771f4c-ed53-4b60-b0b4-fa0db7910f2asq\0~\0	w\0\0f虞V莤sr\0%java.util.Collections$UnmodifiableSet€捬彌€U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0€薧?\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet豯譠曒*\0\0xr\0java.util.HashSet篋厱柛?\0\0xpw\0\0\0?@\0\0\0\0\0t\0allxt\0bearert\0$74660a36-f20a-413e-b208-f4ea85c607ed','a84249379c09898b4c56d2b210c46263','admin','client_code','\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication紷bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken营(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList?%1奠?\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0€薧?\0L\0cq\0~\0xpsr\0java.util.ArrayListx佉櫱a?\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0?\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_ADMINxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>i?\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0client_codesr\0%java.util.Collections$UnmodifiableMap癀t?B\0L\0mq\0~\0xpsr\0java.util.HashMap诹?`?\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0codet\01xoRc6t\0\ngrant_typet\0authorization_codet\0scopet\0allt\0\rresponse_typet\0codet\0redirect_urit\0/auth/t\0\rclient_secrett\0123456t\0	client_idt\0client_codexsr\0%java.util.Collections$UnmodifiableSet€捬彌€U\0\0xq\0~\0	sr\0java.util.LinkedHashSet豯譠曒*\0\0xr\0java.util.HashSet篋厱柛?\0\0xpw\0\0\0?@\0\0\0\0\0q\0~\0!xsq\0~\0-w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0\nROLE_ADMINxsq\0~\0\Z?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0/auth/psq\0~\0-w\0\0\0?@\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0#xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0?\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\09sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0?\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 06E427EF2666A519A605106A89308503psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0?\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0*sr\0java.util.TreeSet輼P摃韲[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0?\0\0xpw\0\0\0q\0~\0xpt\0admin','05f2fdc72045799fd73e336d295ff0a5');

/*Table structure for table `oauth_client_details` */

DROP TABLE IF EXISTS `oauth_client_details`;

CREATE TABLE `oauth_client_details` (
  `client_id` varchar(250) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_client_details` */

/*Table structure for table `oauth_refresh_token` */

DROP TABLE IF EXISTS `oauth_refresh_token`;

CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) NOT NULL,
  `token` blob,
  `authentication` blob,
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `oauth_refresh_token` */

insert  into `oauth_refresh_token`(`token_id`,`token`,`authentication`) values ('05f2fdc72045799fd73e336d295ff0a5','\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/逩c澬煞\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens?\ncT証\0L\0valuet\0Ljava/lang/String;xpt\0$9e771f4c-ed53-4b60-b0b4-fa0db7910f2asr\0java.util.Datehj?KYt\0\0xpw\0\0f虞V莤','\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication紷bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken营(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList?%1奠?\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0€薧?\0L\0cq\0~\0xpsr\0java.util.ArrayListx佉櫱a?\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0?\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_ADMINxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>i?\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0client_codesr\0%java.util.Collections$UnmodifiableMap癀t?B\0L\0mq\0~\0xpsr\0java.util.HashMap诹?`?\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0codet\01xoRc6t\0\ngrant_typet\0authorization_codet\0scopet\0allt\0\rresponse_typet\0codet\0redirect_urit\0/auth/t\0\rclient_secrett\0123456t\0	client_idt\0client_codexsr\0%java.util.Collections$UnmodifiableSet€捬彌€U\0\0xq\0~\0	sr\0java.util.LinkedHashSet豯譠曒*\0\0xr\0java.util.HashSet篋厱柛?\0\0xpw\0\0\0?@\0\0\0\0\0q\0~\0!xsq\0~\0-w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0\nROLE_ADMINxsq\0~\0\Z?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0/auth/psq\0~\0-w\0\0\0?@\0\0\0\0\0\0xsq\0~\0-w\0\0\0?@\0\0\0\0\0q\0~\0#xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0?\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\09sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0?\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 06E427EF2666A519A605106A89308503psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0?\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0*sr\0java.util.TreeSet輼P摃韲[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0?\0\0xpw\0\0\0q\0~\0xpt\0admin');

/*Table structure for table `sys_permission` */

DROP TABLE IF EXISTS `sys_permission`;

CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT '',
  `descritpion` varchar(10) DEFAULT '',
  `url` varchar(10) DEFAULT '',
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_permission` */

insert  into `sys_permission`(`id`,`name`,`descritpion`,`url`,`pid`) values (3,'ADMIN','','',NULL),(4,'USER','','',NULL);

/*Table structure for table `sys_permission_role` */

DROP TABLE IF EXISTS `sys_permission_role`;

CREATE TABLE `sys_permission_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_permission_role` */

insert  into `sys_permission_role`(`id`,`role_id`,`permission_id`) values (1,2,4),(2,1,3);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`name`) values (1,'ADMIN'),(2,'USER');

/*Table structure for table `sys_role_user` */

DROP TABLE IF EXISTS `sys_role_user`;

CREATE TABLE `sys_role_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Sys_user_id` int(11) DEFAULT NULL,
  `sys_role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_role_user` */

insert  into `sys_role_user`(`id`,`Sys_user_id`,`sys_role_id`) values (1,2,1),(2,3,2);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`name`,`password`) values (2,'admin','$2a$10$Yks2LoqzBUHEWjyLCnsdtepI4oCNip9yNdf67y19ewF8geORNAO5m'),(3,'xuweichao','$2a$10$kmFQOKZw8l776qXp00Lq9e2drL5MUSpG9YHnQtQwbVzyUjJQwHNha');


