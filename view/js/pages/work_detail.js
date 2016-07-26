$(WorkDetailStart);

function WorkDetailStart(){
    $('.visual_item').each(function(){

        console.log($(this).attr('data-src'), $(this).attr('data-width'), $(this).attr('data-height'));

        var img = $('<img />');
            img.load(function(){
                    $(this).wrap('<div class="work_pic"/>');
                    $(this).parents('.visual_item').css('min-height', 0);

                    var template_item = $(this).parents('.visual_item').find('.template_item');

                    if((typeof template_item == 'object') && (template_item.length > 0)){
                        $(this).parent().prepend(template_item);
                        $(this).parent().find('.template_item').animate({opacity:1}, 500);
                    }
                    $(this).animate({opacity:1}, 500);
                }).attr('src', $(this).attr('data-src'))
                .attr('width', $(this).attr('data-width'))
                .attr('height', $(this).attr('data-height'));

        for(var j=0; j<templates_1010.length; j++){
            if((templates_1010[j].key != 'no_template') && (templates_1010[j].key == $(this).attr('data-template'))){
                $(this).append('<img class="template_item" src="' + templates_1010[j].image_path + '" />');
                break;
            }
        }

        $(this).append(img);
    });

    //$(".visual_item.image").each(function(){
    //    var img = $("<img />");
    //
    //    img.load(function(){
    //
    //    });
    //
    //});

}