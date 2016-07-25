<?php
if($_POST['action'] == 'Kaydet'){
    if(set_option('SLOGAN_HOMEPAGE', $_POST['SLOGAN_HOMEPAGE'])
        && set_option('SLOGAN_ALT_HOMEPAGE', $_POST['SLOGAN_ALT_HOMEPAGE'])){
        postMessage('Başarıyla Kaydedildi!');
    }
    else{
        postMessage('Hata Oluştu', true);
    }
}
?>

<form method="post">
    <h4>Slogan</h4>
    <input type="text" name="SLOGAN_HOMEPAGE" value="<?php echo get_option('SLOGAN_HOMEPAGE'); ?>" />
    <br clear='all' /><br />

    <h4>Alt Slogan</h4>
    <input type="text" name="SLOGAN_ALT_HOMEPAGE" value="<?php echo get_option('SLOGAN_ALT_HOMEPAGE'); ?>" />
    <br clear='all' /><br />

    <input type="submit" name="action" value="Kaydet" />
</form>