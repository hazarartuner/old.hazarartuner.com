<?php require_once 'includes/config.php';

if($_POST['action'] == 'sendMail'){
    stripTagsInArray($_POST);
    extract($_POST, EXTR_OVERWRITE);

    $message = '<b>Full Name :</b> ' . $name . '<br>';
    $message .= '<b>Email :</b> ' . $email . '<br>';
    $message .= '<b>Location :</b> ' . $location . '<br>';
    $message .= '<b>Time Line :</b> ' . $timeline . '<br>';
    $message .= '<b>Project Budget :</b> ' . $budget . '<br>';
    $message .= '<b>Project Info :</b> ' . $info;

    if(sendMail(site_title, 'Contact Form', $message, get_option('CONTACT_FORM_ADDRESS')))
        echo 'success';
    else{
        echo 'error';
    }

    exit;
}

/*$SLOGAN     = 'Let’s Work Together,';
$SLOGAN_ALT = 'or justs say hello..';
*/

$SLOGAN     = get_option('SLOGAN_CONTACT');
$SLOGAN_ALT = get_option('SLOGAN_ALT_CONTACT');

$AVAILABILITY = get_option('AVAILABLE_FOR_FREELANCE') == true ? '<span>Available</span>' : '<span class="not">Not Available</span>';

addScript('js/pages/contact.js');

$contents = $contact;
$master->render();

