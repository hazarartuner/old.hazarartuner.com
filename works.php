<?php require_once "includes/config.php";

if($projects = $PROJECT->listFeaturedPublishedProjectsByCategory(-1)){
    foreach($projects as &$p){
        $file = getThumbInfo($p->image_id, 495, -1);

        $p->logo = $file->url;
        $p->logo_width = $file->width;
        $p->logo_height = $file->height;
    }

    setGlobal('works_list', $projects);
}
else{
    setGlobal('works_list', array());
}

$SLOGAN     = 'Works';//get_option('SLOGAN_WORKS');
$SLOGAN_ALT = 'Here is some of my works!'; //get_option('SLOGAN_ALT_WORKS');

addScript('js/pages/list.js');

$contents = $works;
$master->render();
