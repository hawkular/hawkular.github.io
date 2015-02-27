$(document).ready(function(){
  if (!!$('#toc').offset()) {
    var topOffset = 100;
    var stickyTop = $('#toc').offset().top - topOffset ; 
    $(window).scroll(function(){ 
      var windowTop = $(window).scrollTop(); 
 
      if (stickyTop < windowTop) {
        $('#toc').css({ position: 'fixed', top: topOffset + 40 });
      } else {
        $('#toc').css('position','static');
      }
    });
  }
  
  /* adjusting the ToC (parent selectors cannot be done in plain CSS3) */
  $('#preamble:has(.sectionbody:has(#toc)) ~ div')
    .css('float', 'right')
    .css('width', '940px');
  /* http://stackoverflow.com/a/11842865/1594980 */
  $('#preamble:has(.sectionbody:has(#toc)) ~ div h1,h2,h3,h4,h5,h6')
    .css('padding-top', '70px', 'important')
    .css('margin-top', '-70px', 'important');

  $('#preamble:has(.sectionbody:has(#toc))')
    .css('float', 'left')
    .css('padding-top', '40px')
    .css('float', 'left')
    .css('margin-right', '5px');

  /* adding the nav class to ToC for scrollspy */
  $('#toc > ul:first-of-type').addClass('nav');
});

