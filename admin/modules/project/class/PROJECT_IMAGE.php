<?php

class PROJECT_IMAGE extends DB{
    private $table = 'project_image';

    function selectProjectImage($project_image_id){
        return $this->get_row("SELECT * FROM {$this->table} WHERE project_image_id=?", array($project_image_id));
    }

    function addProjectImage($project_id, $image_id, $video_code, $template = 'no_template'){
        return $this->insert($this->table, compact('project_id', 'image_id', 'video_code', 'template'));
    }

    function updateProjectImage($project_image_id, $image_id, $video_code, $template = 'no_template'){
        return $this->update($this->table, compact('image_id', 'template', 'video_code'), compact('project_image_id'));
    }

    function deleteProjectImage($project_image_id){
        return $this->execute('DELETE FROM ' . $this->table . ' WHERE project_image_id=?', array($project_image_id));
    }

    function deleteProjectImagesByImage($image_id){
        return $this->execute('DELETE FROM ' . $this->table . ' WHERE image_id=?', array($image_id));
    }

    function deleteProjectImagesByProject($project_id){
        return $this->execute('DELETE FROM ' . $this->table . ' WHERE project_id=?', array($project_id));
    }

    function listProjectImagesByImage($image_id){
        return $this->get_rows('SELECT * FROM ' . $this->table . ' WHERE image_id=?', array($image_id));
    }

    function listProjectImagesByProject($project_id){
        return $this->get_rows('SELECT * FROM ' . $this->table . ' WHERE project_id=? ORDER BY order_num ASC', array($project_id));
    }
}

$PROJECT_IMAGE = new PROJECT_IMAGE();