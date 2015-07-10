$(document).ready(function(){
  if (!!$('#toc').offset()) {
    var topOffset = 103;
    var stickyTop = $('#toc').offset().top - topOffset ;
    $(window).scroll(function(){
      var windowTop = $(window).scrollTop();

      if (stickyTop < windowTop) {
        $('#toc').addClass('sticky');
      } else {
        $('#toc').removeClass('sticky');
      }
    });

  }

  /* clicking on an item with sub-menu arrow doesn't close the navigation menu */
  $('.dropdown-submenu').click(function(e){
    return e.toElement.className !== "dropdown-toggle";
  });

  /* turning the images that points to img/{docs|blog|dev-docs} into clickable links utilizing the lightbox */
  $(document).delegate('*[data-toggle="lightbox"]', 'click', function(event) {
    event.preventDefault();
    $(this).ekkoLightbox();
  }); 
  $("img[src*='/img/docs/'], img[src*='/img/blog/'], img[src*='/img/dev-docs/']").each(function(){
    $(this).wrap("<a href='" + $(this).attr('src') + "' data-toggle='lightbox' data-gallery='foo'></a>");
  })

  /* adding the nav class to ToC for scrollspy */
  $('#toc > ul:first-of-type').addClass('nav');
});

