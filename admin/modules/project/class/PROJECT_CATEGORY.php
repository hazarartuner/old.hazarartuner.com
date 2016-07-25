<?php

class ProjectCategory extends DB{
    private $table = "project_category";
    private $table_project = "project";
    private $table_category = "category";


    function addProjectCategory($project_id, $category_id){
        return $this->insert($this->table, compact("project_id", "category_id"));
    }

    function clearProject($project_id){
        return $this->execute("DELETE FROM {$this->table} WHERE project_id=?", array($project_id));
    }

    function clearCategory($category_id){
        return $this->execute("DELETE FROM {$this->table} WHERE category_id=?", array($category_id));
    }

    function listProjectsByCategory($category_id, $limit=-1, $offset=0){
        $query = "SELECT * FROM {$this->table} AS pc ";
        $query .= "LEFT JOIN {$this->table_project} AS p ON pc.project_id=p.project_id ";
        $query .= "WHERE pc.category_id=? ORDER BY p.order_num ASC ";
        $query .= $limit > 0 ? "LIMIT {$offset},{$limit}" : "";

        return $this->get_rows($query, array($category_id));
    }

    function listCategoriesByProject($project_id, $limit=-1, $offset=0){
        $query = "SELECT * FROM {$this->table} AS pc ";
        $query .= "LEFT JOIN {$this->table_category} AS c ON pc.category_id=c.category_id ";
        $query .= "WHERE pc.project_id=? ORDER BY c.order_num ASC ";
        $query .= $limit > 0 ? "LIMIT {$offset},{$limit}" : "";

        return $this->get_rows($query, array($project_id));
    }
}

$ProjectCategory = new ProjectCategory();