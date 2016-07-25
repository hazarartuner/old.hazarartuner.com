<?php
$project_id = $_GET['id'] > 0 ? $_GET['id'] : -1;

if($_GET['delete'] > 0){
    if($PROJECT_IMAGE->deleteProjectImage($_GET['delete'])){
        postMessage('Başarıyla Silindi!');
        header('Location:admin.php?page=edit_project&id=' . $project_id);
        exit;
    }
}

if($_POST['action'] == 'Kaydet'){
    $category_id = -1;
    extract($_POST, EXTR_OVERWRITE);
    $is_featured = $is_featured > 0 ? 1 : -1;
    $publish = $publish > 0 ? 1 : -1;


    if(($project_id > 0) && $PROJECT->updateProject($project_id, $image_id, $image_template, $name, $slogan, $comment, $project_type, $client, $role, $link, $is_featured, $publish)){
        $error = false;
    }
    else if($project_id = $PROJECT->addProject($image_id, $image_template, $name, $slogan, $comment, $project_type, $client, $role, $link, $is_featured, $publish)){
        $error = false;
    }
    else{
        $error = true;
    }

    if($error === true){
        postMessage("Hata Oluştu!", true);
    }
    else{
        $ProjectCategory->clearProject($project_id);
        foreach($_POST["category"] as $c){
            if(!$ProjectCategory->addProjectCategory($project_id, $c)){
                $error = true;
            }
        }

        if($error){
            postMessage("Hata Oluştu!", true);
        }
        else{
            postMessage("Başarıyla Kaydedildi!");
            header("Location:admin.php?page=edit_project&id=" . $project_id);
            exit;
        }
    }
}


$project = $PROJECT->selectProject($project_id);
$categories = $Category->listCategories();
$project_categories = $ProjectCategory->listCategoriesByProject($project_id);
$templates = array('web'=>'Web', 'desktop'=>'Masaüstü', 'kiosk'=>'Kiosk', 'no_template'=>'Tema Yok');
?>

<form method="post">
    <?php
        if($project_id > 0){
            $images = $PROJECT_IMAGE->listProjectImagesByProject($project_id);
            echo dataGrid($images, 'Proje Resimleri', 'projectImages', '{%file=image_id%}', 'admin.php?page=add_project_image&project_id=' . $project_id, 'admin.php?page=edit_project_image&id={%project_image_id%}','admin.php?page=edit_project&id={%project_id%}&delete={%project_image_id%}', 'project_image_id', 'order_num', 'project_image');
            echo '<br clear="all" /><br />';
        }
    ?>

    <h4>Kapak Resmi</h4>
    <input type="file" name="image_id" value="<?php echo $project->image_id; ?>" />
    <br clear='all' /><br />

    <input style="margin:0" type="checkbox" name="publish" value="1" <?php echo $project->publish > 0 ? ' checked="checked" ' : '';  ?> />
    <h4 style="margin: 5px 5px 0 0; clear:none; width: 200px;">Yayında</h4>
    <br clear='all' /><br />


    <input style="margin:0" type="checkbox" name="is_featured" value="1" <?php echo $project->is_featured > 0 ? ' checked="checked" ' : '';  ?> />
    <h4 style="margin: 5px 5px 0 0; clear:none; width: 200px;">Featured</h4>
    <br clear='all' /><br />

    <h4>Kapak Teması</h4>
    <select name='image_template'>
        <?php
        $options = '';
        foreach($templates as $key=>$val){
            $options .= '<option value="' . $key . '" ' . ($key == $project->image_template ? ' selected="selected" ' : '') . ' >' . $val . '</option>';
        }

        echo $options;
        ?>
    </select>
    <br clear='all' /><br />

    <textarea type="i18n"></textarea>

    <h4>Proje İsmi</h4>
    <input type="text" name="name" value="<?php echo $project->name; ?>" />
    <br clear='all' /><br />

    <h4>Slogan</h4>
    <input type="text" name="slogan" value="<?php echo $project->slogan; ?>" />
    <br clear='all' /><br />

    <h4>Proje Türü (Örnek: Facebook Campaign)</h4>
    <input type="text" name="project_type" value="<?php echo $project->project_type; ?>" />
    <br clear='all' /><br />

    <h4>Client</h4>
    <input type="text" name="client" value="<?php echo $project->client; ?>" />
    <br clear='all' /><br />

    <h4>Role</h4>
    <input type="text" name="role" value="<?php echo $project->role; ?>" />
    <br clear='all' /><br />

    <h4>Link</h4>
    <input type="text" name="link" value="<?php echo $project->link; ?>" />
    <br clear='all' /><br />

    <h4>Kategoriler</h4>
    <ul id="categoriesList">
        <?php
        $COLUMNS = array();

        $i=0;
        foreach ($categories as $c) {
            $i++;
            $index = $i % 4;
            $checked = '';
            foreach ($project_categories as $pc) {
                if ($pc->category_id == $c->category_id) {
                    $checked = ' checked="checked" ';
                    break;
                }
            }

            $COLUMNS[$index] .= '<label>' . $c->name;
            $COLUMNS[$index] .= '<input type="checkbox" name="category[]" value="' . $c->category_id . '" ' . $checked . ' />';
            $COLUMNS[$index] .= '</label>';
        }

        foreach($COLUMNS as $c){
            $SKIN_HTML .= '<li>' . $c . '</li>';
        }

        echo $SKIN_HTML;

        ?>
    </ul>
    <br clear="all" /><br><br>


    <h4>Açıklama</h4>
    <textarea name="comment"><?php echo $project->comment; ?></textarea>

    <input type="submit" name="action" value="Kaydet">
</form>

<style type="text/css">
    #categoriesList{
        width:100%;
        float:left;
    }

    #categoriesList li {
        width: 20%;
        float:left;
        clear: none;
    }

</style>