<?php require_once "includes/config.php";

if($projects = $PROJECT->listFeaturedPublishedProjectsByCategory(-1, 6, 0)){
    foreach($projects as &$p){
        $file = getThumbInfo($p->image_id, 495, -1);

        $p->logo = $file->url;
        $p->logo_width = $file->width;
        $p->logo_height = $file->height;
    }

    setGlobal('home_projects', $projects);
}
else{
    setGlobal('home_projects', array());
}

$SLOGAN     = get_option('SLOGAN_HOMEPAGE');
$SLOGAN_ALT = get_option('SLOGAN_ALT_HOMEPAGE');
$SLOGAN_BUTTON .= '<a class="button button_200x65 center" href="works">Works</a>';

addScript('js/pages/index.js');

$og_url = site_address . "home";
$contents = $index;
$master->render();
