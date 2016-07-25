<?php

/*
 * Module Name: Projects
 */

require_once  dirname(__FILE__) . '/class/PROJECT_IMAGE.php';
require_once  dirname(__FILE__) . '/class/PROJECT.php';
require_once  dirname(__FILE__) . '/class/CATEGORY.php';
require_once  dirname(__FILE__) . '/class/PROJECT_CATEGORY.php';

addMenu('Projeler', '', 'Projeler', 'projects', dirname(__FILE__) . '/projects.php', 6);
addSubMenu('Proje Ekle', 'Proje Ekle', 'projects', 'add_project', dirname(__FILE__) . '/edit_project.php');
addPage('Proje Bilgileri', 'projects', 'edit_project', dirname(__FILE__) . '/edit_project.php');
addPage('Proje Resmi Ekle', 'projects', 'add_project_image', dirname(__FILE__) . '/edit_project_image.php');
addPage('Proje Resmi Bilgileri', 'projects', 'edit_project_image', dirname(__FILE__) . '/edit_project_image.php');

addMenu("Proje Kategorileri", "", "Proje Kategorileri", "categories", dirname(__FILE__) . "/categories.php", 7);
addSubMenu("Kategori Ekle", "Kategori Ekle", "categories", "add_category", dirname(__FILE__) . "/edit_category.php");
addPage("Kategori Bilgileri", "categories", "edit_category", dirname(__FILE__) . "/edit_category.php");


