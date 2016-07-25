<?php require_once 'includes/config.php';

if(isset($_GET['link_key'])){
    $work = $PROJECT->selectProjectByLinkKey($_GET['link_key']);
}
else{
    $work = $PROJECT->selectProject($_GET['id']);
}

if(strlen($work->comment) > 0){
    $COMMENT = '<div id="profile_text">
                    <p id="profile_title">Project Description</p>
                    <p>' . preg_replace('/\r/', '<br>', $work->comment) . '</p>
                </div>';

    $og_description = $work->comment;
}

//$WORK_IMAGES = '';
//$files = $PROJECT_IMAGE->listProjectImagesByProject($work->project_id);
//
//foreach($files as $f){
//    $temp = getThumbInfo($f->image_id, 1010, -1);
//
//    $WORK_IMAGES .= '<span class="work_pic_loader" data-src="' . $temp->url . '" data-width="' . $temp->width . '" data-height="' . $temp->height . '" data-template="' . $f->template . '"></span>';
//}


$WORK_VISUAL_DATA = '';
$data = $PROJECT_IMAGE->listProjectImagesByProject($work->project_id);

foreach($data as $d){
    $data_type = strlen($d->visual_code) > 0 ? "video" : "image";
    if($data_type == "image") {
        $data_src = getThumbInfo($d->image_id, 1010, -1);
    }
    else{
        $data_src = $d->video_code;
    }

    $data_height = $data_type == "video" ? 570 : $data_src->height;

    $WORK_VISUAL_DATA .= "<div class='visual_item $data_type' " . ($data_type == "image" ? " data-src='{$data_src->url}' " : "");
    $WORK_VISUAL_DATA .= " data-width='{$data_src->width}' data-height='{$data_height}' data-template='{$f->template}' >'";
    $WORK_VISUAL_DATA .= $data_type->video_code . "</div>";
}


$SLOGAN     = $work->name;
$SLOGAN_ALT = $work->slogan;
if(strlen($work->link) > 0){
    $SLOGAN_BUTTON .= '<a class="button button_200x65 center" target="_blank" href="' . $work->link . '">Take a Look</a>';
}
$ROLE       = $work->role;
$CLIENT     = $work->client;
$WORK_TYPE   = $work->project_type;

$og_image = getThumbImage($work->image_id, 1200, 900);
$og_title = $work->name;
$og_url = site_address . $_GET['link_key'];

addScript('js/pages/work_detail.js');

$contents = $work_detail;
$master->render();