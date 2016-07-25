<?php
$category_id = $_GET["id"] > 0 ? $_GET["id"] : -1;

if($_POST["action"] == "Kaydet"){
    if(($category_id > 0) && $Category->updateCategory($category_id, $_POST["name"])){
        $error = false;
    }
    else if($Category->addCategory($_POST["name"])){
        $error = false;
    }
    else{
        $error = true;
    }

    if($error === true){
        postMessage("Hata Oluştu!", true);
    }
    else{
        postMessage("Başarıyla Kaydedildi!");
        header("Location:admin.php?page=categories");
        exit;
    }
}


$category = $Category->selectCategory($category_id);
?>


<form method="post">
    <h3>Kategori Adı</h3>
    <input type="text" name="name" value="<?php echo $category->name; ?>" />

    <input type="submit" name="action" value="Kaydet" />
</form>