$(document).ready(function(){
  $('.sidebar > .nav').affix({
    offset: {
      top: 207,
      bottom: function () {
        return (this.bottom = $('.footer').outerHeight(true))
      }
    }
  });

  $('body').scrollspy({ target: '.sidebar' });

});
