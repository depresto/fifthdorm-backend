var image_upload;
image_upload = function(){

    $("input.image_preview").on('change', function(event){
       var preview;

       if ($(this).prev('img').length) {
         preview = $('div.image_preview img');
       } else {
         $(this).prev().append('<img>');
         preview = $(this).prev().children('img');
       }

       var input = event.target.files;
       var file = input[0];
       var reader = new FileReader();
       reader.onload = function(e){
           image_base64 = e.target.result;
           preview.attr("src", image_base64);
       };
       reader.readAsDataURL(file);
    });
}

$(document).ready(image_upload);
$(document).on('page:load', image_upload);