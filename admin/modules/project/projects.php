<?php

if($_GET['delete'] > 0){
    if($PROJECT->deleteProject($_GET['delete'])){
        postMessage('Başarıyla Silindi!');
        header('Location:admin.php?page=projects');
        exit;
    }
    else{
        postMessage('Beklenmedik bir hata oluştu, lütfen tekrar deneyin!', true);
    }
}

$data = $PROJECT->listProjects();

echo dataGrid($data, 'Projeler', 'projects', '{%name%}', 'admin.php?page=add_project', 'admin.php?page=edit_project&id={%project_id%}', 'admin.php?page=projects&delete={%project_id%}', 'project_id', 'order_num', 'project');

