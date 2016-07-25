<?php
    if($_POST['action'] == 'Kaydet'){
        $available = $_POST['AVAILABLE_FOR_FREELANCE'] == 'available' ? true : false;

        if(set_option('CONTACT_FORM_ADDRESS', $_POST['CONTACT_FORM_ADDRESS'])
            && set_option('SLOGAN_CONTACT', $_POST['SLOGAN_CONTACT'])
            && set_option('SLOGAN_ALT_CONTACT', $_POST['SLOGAN_ALT_CONTACT'])
            && set_option('AVAILABLE_FOR_FREELANCE', $_POST['AVAILABLE_FOR_FREELANCE'])
            && set_option('CONTACT_TWITTER', $_POST['CONTACT_TWITTER'])
            && set_option('CONTACT_FACEBOOK', $_POST['CONTACT_FACEBOOK'])
            && set_option('CONTACT_LINKEDIN', $_POST['CONTACT_LINKEDIN'])){
            postMessage('Başarıyla Kaydedildi!');
        }
        else{
            postMessage('Hata Oluştu', true);
        }
    }
?>

<form method="post">
    <input type="checkbox" name="AVAILABLE_FOR_FREELANCE" value="available" <?php echo (get_option('AVAILABLE_FOR_FREELANCE') == true ? 'checked=\'checked\' ' : ''); ?> />
    <h4 style="clear:none; width:500px; margin: 6px 0 0 0;">Freelance Projeler İçin Müsaitim</h4>
    <br clear='all' /><br /><br />

    <h4>Slogan</h4>
    <input type="text" name="SLOGAN_CONTACT" value="<?php echo get_option('SLOGAN_CONTACT'); ?>" />
    <br clear='all' /><br />

    <h4>Alt Slogan</h4>
    <input type="text" name="SLOGAN_ALT_CONTACT" value="<?php echo get_option('SLOGAN_ALT_CONTACT'); ?>" />
    <br clear='all' /><br />

    <h4>Formun Gideceği Mail Adresi</h4>
    <input type="text" name="CONTACT_FORM_ADDRESS" value="<?php echo get_option('CONTACT_FORM_ADDRESS'); ?>">
    <br clear='all' /><br /><br />

    <hr>
    <br clear='all' /><br />

    <h4>Twitter</h4>
    <input type="text" name="CONTACT_TWITTER" value="<?php echo get_option('CONTACT_TWITTER'); ?>">
    <br clear='all' /><br />

    <h4>Facebook</h4>
    <input type="text" name="CONTACT_FACEBOOK" value="<?php echo get_option('CONTACT_FACEBOOK'); ?>">
    <br clear='all' /><br />

    <h4>Linkedin</h4>
    <input type="text" name="CONTACT_LINKEDIN" value="<?php echo get_option('CONTACT_LINKEDIN'); ?>">
    <br clear='all' /><br />


    <input type="submit" name="action" value="Kaydet" />
</form>