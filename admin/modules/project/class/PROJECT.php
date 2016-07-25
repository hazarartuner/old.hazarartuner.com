<?php

class PROJECT extends DB{
    private $table = 'project';

    function addProject($image_id, $name, $slogan, $comment, $project_type, $client, $role, $link, $is_featured, $publish){
        $link_key = $this->generateLinkKey(-1, $name);
        return $this->insert($this->table, compact('image_id', 'image_template', 'name', 'slogan', 'comment', 'project_type', 'client', 'role', 'link', 'link_key', 'is_featured', 'publish'));
    }

    function updateProject($project_id, $image_id, $image_template, $name, $slogan, $comment, $project_type, $client, $role, $link, $is_featured, $publish){
        $link_key = $this->generateLinkKey($project_id, $name);
        return $this->update($this->table, compact('image_id', 'image_template', 'name', 'slogan', 'comment', 'project_type', 'client', 'role', 'link', 'link_key', 'is_featured', 'publish'), compact('project_id'));
    }

    function deleteProject($project_id){
        global $PROJECT_IMAGE;
        return $PROJECT_IMAGE->deleteProjectImagesByProject($project_id) &&
                $this->execute('DELETE FROM ' . $this->table . ' WHERE project_id=?', array($project_id));
    }

    function selectProject($project_id){
        return $this->get_row('SELECT * FROM ' . $this->table . ' WHERE project_id=?', array($project_id));
    }

    function selectProjectByLinkKey($link_key){
        return $this->get_row("SELECT * FROM {$this->table} WHERE link_key=?", array($link_key));
    }

    function generateLinkKey($project_id, $text){
        $link_key = str_replace(array("ğ", "Ğ", "ü", "Ü", "ş", "Ş", "ı", "İ", "ö", "Ö", "ç", "Ç"), array("g", "g", "u", "u", "s", "s", "i", "i", "o", "o", "c", "c"), $text);
        $link_key = preg_replace("/[^(a-zA-Z0-9\-\_ )]/", "", $link_key);
        $link_key = strtolower(preg_replace("/ /", "-", $link_key));

        $search_reg =  "^" . $link_key . "(-[0-9])*$";

        if($project = $this->get_row("SELECT * FROM {$this->table} WHERE link_key REGEXP ? ORDER BY link_key DESC LIMIT 0,1", array($search_reg))){
            if($project->project_id != $project_id){
                if(preg_match("/^" . preg_quote($link_key, "/") . "-([0-9]+)$/", $project->link_key, $matches)){
                    $link_key .= "-" . (++$matches[1]);
                }
                else{
                    $link_key .= "-1";
                }
            }
        }

        return $link_key;
    }

    function listProjects($limit=-1, $offset=0){
        $query = 'SELECT * FROM ' . $this->table . ' ORDER BY order_num ASC';
        $query .= $limit > 0 ? (' LIMIT ' . $offset . ',' . $limit) : '';

        return $this->get_rows($query);
    }

    function listPublishedProjects($limit=-1, $offset=0){
        $query = 'SELECT * FROM ' . $this->table . " WHERE publish>0 ";
        $query .= ' ORDER BY order_num ASC';
        $query .= $limit > 0 ? (' LIMIT ' . $offset . ',' . $limit) : '';

        return $this->get_rows($query);
    }

    function listPublishedProjectsByCategory($category_id=-1, $limit=-1, $offset=0){
        $variables = array();

        $query = "SELECT * FROM {$this->table} AS p ";
        $query .= $category_id > 0 ? "LEFT  JOIN project_category AS pc ON pc.project_id=p.project_id " : "";
        $query .= "WHERE publish>0 ";
        if($category_id > 0){
            $query .= "AND pc.category_id=? ";
            $query .= "GROUP BY pc.project_id ";
            $variables[] = $category_id;
        }
        $query .= "ORDER BY order_num ASC ";
        $query .= $limit > 0  ? "LIMIT {$offset},{$limit} " : "";

        return $this->get_rows($query, $variables);
    }

    function listFeaturedPublishedProjects($limit=-1, $offset=0){
        $query = 'SELECT * FROM ' . $this->table . " WHERE publish>0 AND is_featured>0 ";
        $query .= ' ORDER BY order_num ASC';
        $query .= $limit > 0 ? (' LIMIT ' . $offset . ',' . $limit) : '';

        return $this->get_rows($query);
    }

    function listFeaturedPublishedProjectsByCategory($category_id=-1, $limit=-1, $offset=0){
        $variables = array();

        $query = "SELECT * FROM {$this->table} AS p ";
        $query .= $category_id > 0 ? "LEFT  JOIN project_category AS pc ON pc.project_id=p.project_id " : "";
        $query .= "WHERE publish>0 AND is_featured>0 ";
        if($category_id > 0){
            $query .= "AND pc.category_id=? ";
            $query .= "GROUP BY pc.project_id ";
            $variables[] = $category_id;
        }
        $query .= "ORDER BY p.order_num ASC ";
        $query .= $limit > 0  ? "LIMIT {$offset},{$limit} " : "";

        return $this->get_rows($query, $variables);
    }

}

$PROJECT = new PROJECT();