<?php
session_start();
error_reporting(E_ALL ^ E_NOTICE); // Setup esnasındaki "Notice" hatalarını gizle.

/* DATABASE *****************************************/
$dbname = 'hazar';
$dbuser = 'root';
$dbpass = 'piXEL.1987';

/*
$dbname = 'pxltrtle_hazarartuner';
$dbuser = 'pxltrtle_hazar';
$dbpass = 'J1Hx(aJNUs4z';
*/

$dbhost = 'localhost';
$dbcharset = 'utf8';
$timezone = '+02:00';
$prefix = "hpa_";

require_once "system/classes/DB.php";
/****************************************************/

$assets_versions = "1.1";

require_once "system/includes/options.php";

if(get_option("admin_debug_mode") == "debugmode")
{
	define("debug_mode", true);
	ini_set("display_startup_errors", true);
	error_reporting(E_ALL ^ E_NOTICE);
	$add_modules_menu = true; // Menüye modules sayfasının eklenip eklenmemesini belirler
}
else
{
	define("debug_mode", false);
	ini_set("display_startup_errors", false);
	error_reporting(0);
	$add_modules_menu = false; // Menüye modules sayfasının eklenip eklenmemesini belirler
}

define("multilanguage_mode", get_option("admin_multilanguage_mode") == "multilanguage" ? true : false);
define("maintanance_mode", get_option("admin_display_mode") == "maintanance" ? true : false);
define("site_address", get_option("admin_site_address"));


// View engine'i bağla
require_once dirname(__FILE__) . "/system/template_engine/View.php";

if(in_admin)
{
	loadView("nofolder");
	setGlobal("debug_mode", debug_mode);
	setGlobal("multilanguage_mode", multilanguage_mode);
	setGlobal("maintanance_mode", maintanance_mode);
}

/* SECURITY */
$secretKey = '-c!sy$q|x(0vd)_7!w*y]m|%e8n!][6u';
$sessionKeysPrefix = "SES521b9fcbc1b04_";
/***************************************************/