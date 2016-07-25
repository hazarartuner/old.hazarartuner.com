<?php require_once 'includes/config.php';


$ABOUT_ME = get_option('ABOUT_ME_TEXT');

// check for mail address
$ABOUT_ME = preg_replace('/\r/', '<br />', $ABOUT_ME);
$ABOUT_ME = preg_replace_callback('/[^ ]+?\.[^ ]+?\.[^ ]+/', 'parseLinks', $ABOUT_ME);
$ABOUT_ME = preg_replace('/([^ ]+?@[^ ]+?\.[^ ]+)/', '<a href=\'mailto:$1\'>$1</a>', $ABOUT_ME);

function parseLinks($matches){
    $label = $matches[0];
    if(!preg_match('/^((http:\/\/)|(https:\/\/))/', $label)){
        $link = 'http://' . $label;
    }
    return '<a href=\'' . $link . '\' target=\'_blank\'>' . $label . '</a>';
}

/*$SLOGAN     = 'I\'m Forest... Forest Gump';
$SLOGAN_ALT = 'Let\'s talk about me.';
*/
$SLOGAN     = get_option('SLOGAN_ABOUT_ME');
$SLOGAN_ALT = get_option('SLOGAN_ALT_ABOUT_ME');


addScript('js/pages/profile.js');

$contents = $profile;
$master->render();

