<?php

if($_GET["delete"] > 0){
    if($Category->deleteCategory($_GET["delete"])) {
        postMessage("Başarıyla Silindi!");
        header("Location:admin.php?page=categories");
        exit;
    }
    else{
        postMessage("Hata Oluştu!", true);
    }
}

$data = $Category->listCategories();

echo dataGrid($data, "Kategoriler", "categoriesGrid", "{%name%}", "admin.php?page=add_category", "admin.php?page=edit_category&id={%category_id%}", "admin.php?page=categories&delete={%category_id%}", "category_id", "order_num", "category");
