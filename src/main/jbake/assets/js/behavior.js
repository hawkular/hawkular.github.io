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
  var gui = new dat.GUI({ autoPlace: false });
  var customContainer = document.getElementById('datGui');
  customContainer.appendChild(gui.domElement);
  gui.width = 550;

    var params = {
      "largeText" : 'The Open Source Monitoring and Management Platform',
      "largeTextSize" : 60,
      "defaultColor" : '#428bca',
      "fooColor" : '#428bca',
      "enableHovering" : true
    }

  gui.add(params, 'largeText', 12, 90).onChange(function(value){
    $('#largeText').text(value);
  });

  gui.add(params, 'largeTextSize').onChange(function(value){
    $('#largeText').css('font-size', (value + 'px'));
  });

  var colors = gui.addFolder('Colors');
  colors.addColor(params, 'defaultColor').onChange(function(value){
    document.styleSheets[5].cssRules[1132].style.setProperty('color', value, null);
    document.styleSheets[5].cssRules[1120].style.setProperty('background', value, null);
//    [1132].color= #428bca   //6496
//    [1120].cssText = "background: #428bca" //6421
  });

 // colors.addColor(params, 'fooColor').onChange(function(value){
//    document.styleSheets[5].cssRules[1132].style.setProperty('color', value, null);
//    document.styleSheets[5].cssRules[1120].style.setProperty('background', value, null);
//    [1132].color= #428bca   //6496
//    [1120].cssText = "background: #428bca" //6421
 // });
  colors.open();

});
