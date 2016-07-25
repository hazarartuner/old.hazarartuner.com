<?php

class Category extends DB{
    private $table = "category";

    function addCategory($name){
        $link_key = $this->generateLinkKey(-1, $name);
        return $this->insert($this->table, compact("name", "link_key"));
    }

    function updateCategory($category_id, $name){
        $link_key = $this->generateLinkKey($category_id, $name);
        return $this->update($this->table, compact("name", "link_key"), compact("category_id"));
    }

    function deleteCategory($category_id){
        global $ProjectCategory;

        return $ProjectCategory->clearCategory($category_id) &&
                $this->execute("DELETE FROM {$this->table} WHERE category_id=?", array($category_id));
    }

    function selectCategory($category_id){
        return $this->get_row("SELECT * FROM {$this->table} WHERE category_id=?", array($category_id));
    }

    function selectCategoryByLinkKey($link_key){
        return $this->get_row("SELECT * FROM {$this->table} WHERE link_key=?", array($link_key));
    }

    function listCategories($limit=-1, $offset = 0){
        $query = "SELECT * FROM {$this->table} ";
        $query .= "ORDER BY order_num ASC ";
        $query .= $limit > 0 ? "LIMIT {$offset},{$limit} " : "";

        return $this->get_rows($query);
    }

    private function generateLinkKey($category_id, $text){
        $link_key = str_replace(array("ğ", "Ğ", "ü", "Ü", "ş", "Ş", "ı", "İ", "ö", "Ö", "ç", "Ç"), array("g", "g", "u", "u", "s", "s", "i", "i", "o", "o", "c", "c"), $text);
        $link_key = preg_replace("/[^(a-zA-Z0-9\-\_ )]/", "", $link_key);
        $link_key = strtolower(preg_replace("/ /", "-", $link_key));

        $search_reg =  "^" . $link_key . "(-[0-9])*$";

        if($category = $this->get_row("SELECT * FROM {$this->table} WHERE link_key REGEXP ? ORDER BY link_key DESC LIMIT 0,1", array($search_reg))){
            if($category->category_id != $category_id){
                if(preg_match("/^" . preg_quote($link_key, "/") . "-([0-9]+)$/", $category->link_key, $matches)){
                    $link_key .= "-" . (++$matches[1]);
                }
                else{
                    $link_key .= "-1";
                }
            }
        }

        return $link_key;
    }

    function getCategoryAmount(){
        return $this->get_value("SELECT COUNT(*) FROM {$this->table}");
    }
}

$Category = new Category();
