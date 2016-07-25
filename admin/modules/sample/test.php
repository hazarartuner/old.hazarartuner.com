<?php
if($_POST["action"] == "Kaydet"){
    if(saveSitemap() && set_option("TEST_SITEMAP", $_POST["TEST_SITEMAP"])){
        postMessage("Başarıyla Kaydedildi!");
    }
    else{
        postMessage("Hata Oluştu");
    }
}

?>

<form method="post">
    <input type="sitemap" name="TEST_SITEMAP" value="<?php echo get_option("TEST_SITEMAP"); ?>" />

    <input type="submit" name="action" value="Kaydet" />
</form>