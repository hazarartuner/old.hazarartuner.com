$(ContactStart);

function ContactStart(){
    $('[data-text]').each(function(){
        $(this).val($(this).attr('data-text'))
            .focus(function(){
                if($(this).val() == $(this).attr('data-text')){
                    $(this).val('');
                }

                $(this).removeClass('placeholder');
            }).blur(function(){
                if($(this).val() == ''){
                    $(this).val($(this).attr('data-text')).addClass('placeholder');
                }
            }).addClass('placeholder');
    });

    $('#btn').on('click', sendContactMail);
}

function sendContactMail(){
    var error = false;

    $('#contact_form_outer input, #contact_form_outer textarea').removeClass('error');

    if($('#name').val() == $('#name').attr('data-text')){
        error = 'Please enter a valid name!';
        $('#name').addClass('error');
    }
    else if(!$('#email').val().match(/^\w+[a-z0-9_\-\.]*@[a-z0-9_\-]+\.[a-z0-9_\-]+\.*[a-z0-9_\-]*\w+$/i)){
        error = 'Please enter a valid e-mail address!';
        $('#email').addClass('error');
    }
    else if($('#contact_text_area').val() == $('#contact_text_area').attr('data-text')){
        error = 'Please enter a valid message!';
        $('#contact_text_area').addClass('error');
    }


    if(error === false){
        $('[data-text]').each(function(){
            if($(this).val() == $(this).attr('data-text')){
                $(this).val('');
            }
        });

        $.ajax({
            type:'post',
            data:$('#contact_form').serialize(),
            beforeSend:function(){
                $('#resultText').removeClass('error').html('');
                $('#btn').unbind('click').html('Processing...');
            },
            success:function(response){
                if(response == 'success'){
                    $('#resultText').html("Thank you, i'll contact with you as soon as possible!");
                    $('[data-text]').val('').blur();
                }
                else{
                    $('#resultText').addClass('error').html("Unexpected error happened, please try again!");
                }
            },
            error:function(){
                $('#resultText').addClass('error').html("Unexpected error happened, please try again!");
            },
            complete:function(){
                $('#btn').on('click', sendContactMail);
                $('#btn').html('Submit');
                $('[data-text]').blur();
            }
        });
    }
    else{
        $('#resultText').addClass('error').html(error);
    }



}