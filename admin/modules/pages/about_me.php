<?php
    if($_POST['action'] == 'Kaydet'){
        if(set_option('SLOGAN_ABOUT_ME', $_POST['SLOGAN_ABOUT_ME'])
            && set_option('ABOUT_ME_TEXT', $_POST['ABOUT_ME_TEXT'])
            && set_option('SLOGAN_ALT_ABOUT_ME', $_POST['SLOGAN_ALT_ABOUT_ME'])){
            postMessage('Başarıyla Kaydedildi!');
        }
        else{
            postMessage('Hata Oluştu', true);
        }
    }
?>

<form method="post">
    <h4>Slogan</h4>
    <input type="text" name="SLOGAN_ABOUT_ME" value="<?php echo get_option('SLOGAN_ABOUT_ME'); ?>" />
    <br clear='all' /><br />

    <h4>Alt Slogan</h4>
    <input type="text" name="SLOGAN_ALT_ABOUT_ME" value="<?php echo get_option('SLOGAN_ALT_ABOUT_ME'); ?>" />
    <br clear='all' /><br />

    <h4>İçerik</h4>
    <textarea name="ABOUT_ME_TEXT"><?php echo get_option('ABOUT_ME_TEXT'); ?></textarea>

    <input type="submit" name="action" value="Kaydet" />
</form>