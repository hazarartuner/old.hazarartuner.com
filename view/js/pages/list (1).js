$(WorksStart);

function WorksStart(){
    for(var i=0; i<works_list.length; i++){
        var li = $('<li></li>');
        li.append('<div class="contentOuter"></div>');
        li.append('<div class="contentLoader"></div>');

        var contentOuter = li.find('.contentOuter');

        var img = $('<img />');
        img.load(function(){
            $(this).parents('.contentOuter').animate({opacity:1}, 500);
        }).attr('src', works_list[i].logo).attr('alt', works_list[i].name).attr('width', works_list[i].logo_width).attr('height', works_list[i].logo_height);

        var brief_html = '';
        brief_html += "<a class='briefOuter' href='work/" + works_list[i].link_key + "' >";
        brief_html += "<span class='contents'>";
        brief_html += "<span class='title'>" + works_list[i].name + "</span>";
        brief_html += "<span class='type'>" + works_list[i].project_type + "</span>";
        brief_html += "<span class='button_150x52 button'>Details</span>";
        brief_html += "</span>";
        brief_html += "</a>";

        contentOuter.append(brief_html);

        for(var j=0; j<templates.length; j++){
            if(templates[j].key == works_list[i].image_template){
                contentOuter.append('<img class="template" src="' + templates[j].image_path + '" />');
            }
        }

        contentOuter.append(img);

        if(i%2 == 0){
            $('ul.left').append(li);
        }
        else{
            $('ul.right').append(li);
        }
    }
}
