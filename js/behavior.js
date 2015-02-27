$(document).ready(function(){
  if (!!$('#toc').offset()) {
    var topOffset = 120;
    var stickyTop = $('#toc').offset().top - topOffset ; 
    $(window).scroll(function(){ 
      var windowTop = $(window).scrollTop(); 
 
      if (stickyTop < windowTop) {
        $('#toc').css({ position: 'fixed', top: topOffset });
      } else {
        $('#toc').css('position','static');
      }
    });
  }
  
  $('#preamble:has(.sectionbody:has(#toc)) ~ div.sect1')
    .css('float', 'right')
    .css('width', '940px');
  $('#preamble:has(.sectionbody:has(#toc))')
    .css('float', 'left')
    .css('padding-top', '40px')
    .css('float', 'left')
    .css('margin-right', '30px');
});

