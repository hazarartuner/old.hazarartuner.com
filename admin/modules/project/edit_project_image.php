<?php

$project_image_id = $_GET['id'] > 0 ? $_GET['id'] : -1;
$project_id = $_GET['project_id'] > 0 ? $_GET['project_id'] : -1;

$project_image = $PROJECT_IMAGE->selectProjectImage($project_image_id);

if($_POST['action'] == 'Kaydet'){
    if($project_image_id > 0){
        if($PROJECT_IMAGE->updateProjectImage($project_image_id, $_POST['image_id'], $_POST['video_code'], $_POST['template'])){
            header('Location: admin.php?page=edit_project&id=' . $project_image->project_id);
            postMessage('Başarıyla Kaydedildi!');
        }
        else{
            postMessage('Hata Oluştu!', true);
        }
    }
    else{
        if($PROJECT_IMAGE->addProjectImage($project_id, $_POST['image_id'], $_POST['video_code'], $_POST['template'])){
            postMessage('Başarıyla Kaydedildi!');
            header('Location: admin.php?page=edit_project&id=' . $project_id);
            exit;
        }
        else{
            postMessage('Hata Oluştu!', true);
        }
    }
}

$templates = array('web'=>'Web', 'desktop'=>'Masaüstü', 'kiosk'=>'Kiosk', 'no_template'=>'Tema Yok');
?>

<form method="post">
    <h4>Resim</h4>
    <input type="file" name="image_id" value="<?php echo $project_image->image_id; ?>" />
    <br clear="all"><br>

    <h4>Tema</h4>
    <select name='template'>
        <?php
            $options = '';
            foreach($templates as $key=>$val){
                $options .= '<option value="' . $key . '" ' . ($key == $project_image->template ? ' selected="selected" ' : '') . ' >' . $val . '</option>';
            }

            echo $options;
        ?>
    </select>
    <br clear="all"><br>

    <h4>Video Kodu</h4>
    <textarea name="video_code" style="height: 100px;"><?php echo $project_image->video_code; ?></textarea>

    <input type="submit" name="action" value="Kaydet">
</form>