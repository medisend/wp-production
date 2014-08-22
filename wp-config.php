<?php
# Database Configuration
define( 'DB_NAME', 'wp_medisend' );
define( 'DB_USER', 'medisend' );
define( 'DB_PASSWORD', 'yGtjpwPeKqjXkO2PRJVK' );
define( 'DB_HOST', '127.0.0.1' );
define( 'DB_HOST_SLAVE', '127.0.0.1' );
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', 'utf8_unicode_ci');
$table_prefix = 'wp_';

# Security Salts, Keys, Etc
define('AUTH_KEY',         'yqS5f1|Tk,z=uQK&yVW2~D/El2-U2CiNgMi#E:<O:}Ma`!+yoPO2wnu(AAq~,X)K');
define('SECURE_AUTH_KEY',  'zRsIw+z5zunilp+eFaM^oc(M&M+f:0,Cis3F)@n$|`7{oenEzQ2d%TK.w,S#WS(z');
define('LOGGED_IN_KEY',    '4Q$^`qZ!P(/K@!^tA3GnQW|nwn6wdJl8z.qXdu?T~M?~4j^-9=C4xX+TLQQo`7y+');
define('NONCE_KEY',        'K(xryjGSd5e=CKtfT05dWOT|-Vb-:XxvO2;}yr4Z&rG_edxAur)-O]y$4*V?LE_=');
define('AUTH_SALT',        'rzvbF.Yv$$(W;~%<HA*7<_b{ sG-u$/,y#CCiv:]H/AmkA~AZ}y H:A&+$Yp75x!');
define('SECURE_AUTH_SALT', ')rz<NsJ5QMZv}+_i)R(UV#(^]w,WIh_)ADjVe:U%:QPlo-G5-J+QfL-a6-(:;*`u');
define('LOGGED_IN_SALT',   'emp^HaI=-&,|mEm3KG?3CpuVGa#,JBl!KmNkL^-Vh9sx92XhB~jK`ix2Z%uD$ /F');
define('NONCE_SALT',       'XU9Xo/wno;coW};|r07a_cH?Y#vD<o1j*#4V:ia/{:^o-%5/=Np`y&X!rnrbNFBf');


# Localized Language Stuff

define( 'WP_CACHE', TRUE );

define( 'WP_AUTO_UPDATE_CORE', false );

define( 'PWP_NAME', 'medisend' );

define( 'FS_METHOD', 'direct' );

define( 'FS_CHMOD_DIR', 0775 );

define( 'FS_CHMOD_FILE', 0664 );

define( 'PWP_ROOT_DIR', '/nas/wp' );

define( 'WPE_APIKEY', '4c71a9a68f63e2d42cd372a80949de685ccb8136' );

define( 'WPE_FOOTER_HTML', "" );

define( 'WPE_CLUSTER_ID', '2274' );

define( 'WPE_CLUSTER_TYPE', 'pod' );

define( 'WPE_ISP', true );

define( 'WPE_BPOD', false );

define( 'WPE_RO_FILESYSTEM', false );

define( 'WPE_LARGEFS_BUCKET', 'largefs.wpengine' );

define( 'WPE_CDN_DISABLE_ALLOWED', true );

define( 'DISALLOW_FILE_EDIT', FALSE );

define( 'DISALLOW_FILE_MODS', FALSE );

define( 'DISABLE_WP_CRON', false );

define( 'WPE_FORCE_SSL_LOGIN', false );

define( 'FORCE_SSL_LOGIN', false );

/*SSLSTART*/ if ( isset($_SERVER['HTTP_X_WPE_SSL']) && $_SERVER['HTTP_X_WPE_SSL'] ) $_SERVER['HTTPS'] = 'on'; /*SSLEND*/

define( 'WPE_EXTERNAL_URL', false );

define( 'WP_POST_REVISIONS', FALSE );

define( 'WPE_WHITELABEL', 'wpengine' );

define( 'WP_TURN_OFF_ADMIN_BAR', false );

define( 'WPE_BETA_TESTER', false );

umask(0002);

$wpe_cdn_uris=array ( );

$wpe_no_cdn_uris=array ( );

$wpe_content_regexs=array ( );

$wpe_all_domains=array ( 0 => 'medisend.wpengine.com', );

$wpe_varnish_servers=array ( 0 => 'pod-2274', );

$wpe_special_ips=array ( 0 => '198.58.120.173', );

$wpe_ec_servers=array ( );

$wpe_largefs=array ( );

$wpe_netdna_domains=array ( );

$wpe_netdna_domains_secure=array ( );

$wpe_netdna_push_domains=array ( );

$wpe_domain_mappings=array ( );

$memcached_servers=array ( );

define( 'WPE_CACHE_TYPE', 'generational' );

define( 'WPE_LBMASTER_IP', '198.58.120.173' );
define('WPLANG','');

# WP Engine ID


# WP Engine Settings






# That's It. Pencils down
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
require_once(ABSPATH . 'wp-settings.php');

$_wpe_preamble_path = null; if(false){}
