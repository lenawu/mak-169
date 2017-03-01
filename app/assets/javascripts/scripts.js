//FLEXSLIDER
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    directionNav: false,
    controlNav: true,
  });
});
$(window).load(function() {
  $(function() {
    var pull = $('#pull');
    var menu = $('nav ul');

    $(pull).on('click', function(e) {
      e.preventDefault();
      menu.slideToggle();
    });
  });
  $(window).resize(function() {
    var menu = $('nav ul');
    var w = $(window).width();
    if (w > 320 && menu.is(':hidden')) {
      menu.removeAttr('style');
    }
  });
});


//OVERLAYS
$(document).ready(function() {
  if (Modernizr.touch) {
    // show the close overlay button
    $(".close-overlay").removeClass("hidden");
    // handle the adding of hover class when clicked
    $(".effects .img").click(function(e) {
      e.preventDefault();
      e.stopPropagation();
      if (!$(this).hasClass("hover")) {
        $(this).addClass("hover");
      }
    });
    // handle the closing of the overlay
    $(".close-overlay").click(function(e) {
      e.preventDefault();
      e.stopPropagation();
      if ($(this).closest(".img").hasClass("hover")) {
        $(this).closest(".img").removeClass("hover");
      }
    });
  } else {
    // handle the mouseenter functionality
    $(".effects .img").mouseenter(function() {
      $(this).addClass("hover");
    })
    // handle the mouseleave functionality
    .mouseleave(function() {
      $(this).removeClass("hover");
    });
  }
  
  
  
  /*
  var sync1 = $("#sync1");
  var sync2 = $("#sync2");
  
  
  sync1.owlCarousel({
    items: 6,
    itemsDesktop : [1500,6], //5 items between 1000px and 901px
    itemsDesktopSmall : [900,4], // betweem 900px and 601px
    itemsTablet: [600,2], //2 items between 600 and 0
    pagination: false,
    responsiveRefreshRate : 100,
    afterInit : function(el){
      el.find(".owl-item").eq(0).addClass("synced");
    }
  });
  
  sync2.owlCarousel({
    singleItem : true,
    slideSpeed : 1000,
    navigation: true,
    pagination:false,
    afterAction : syncPosition,
    responsiveRefreshRate : 200,
   });
   
   function syncPosition(el){
     var current = this.currentItem;
     $("#sync1").find(".owl-item").removeClass("synced").eq(current).addClass("synced")
     if($("#sync1").data("owlCarousel") !== undefined){
       center(current)
     }
   }
   
    $("#sync1").on("click", ".owl-item", function(e){
      e.preventDefault();
      var number = $(this).data("owlItem");
      sync2.trigger("owl.goTo", number);
     });
     
     
  
  function center(number){
    var sync1visible = sync1.data("owlCarousel").owl.visibleItems;
    var num = number;
    //sync1.trigger("owl.goTo",number);
    var found = false;
    for(var i in sync1visible) {
      if(num === sync1visible[i]) {
        var found = true;
      }
    }
    if( found === false ){
      if(num>sync1visible[sync1visible.length -1]) {
        sync1.trigger("owl.goTo", num - (sync1visible.length + 2))
      }
      else{
        if(num - 1 === -1) {
          num = 0;
        }
        sync1.trigger("owl.goTo", num);
      }
    } else if(num === sync1visible[sync1visible.length - 1]){
      sync1.trigger(("owl.goTo", sync1visible[1]))
    } else if(num === sync1visible[0]){
      sync1.trigger("owl.goTo", num-1)
    }
  }
});
*/
  
  
  //$("#details").owlCarousel({
  //  items : 1
  //});
  
//  $("#heads").owlCarousel({
  //  items: 5
  //});
  
   //$('.link').on('click', function(event){
    // var $this = $(this);
     //if($this.hasClass('clicked')){
       
     //}
     //else{
       
     //}
   //});
  


///hmmmm

 
  var sync1 = $("#sync1");
  var sync2 = $("#sync2");
 
  sync1.owlCarousel({
    singleItem : true,
    slideSpeed : 1000,
    navigation: true,
    pagination:false,
    afterAction : syncPosition,
    responsiveRefreshRate : 200,
  });
 
  sync2.owlCarousel({
    items : 15,
    itemsDesktop      : [1199,10],
    itemsDesktopSmall     : [979,10],
    itemsTablet       : [768,8],
    itemsMobile       : [479,4],
    pagination:false,
    responsiveRefreshRate : 100,
    afterInit : function(el){
      el.find(".owl-item").eq(0).addClass("synced");
    }
  });
 
  function syncPosition(el){
    var current = this.currentItem;
    $("#sync2")
      .find(".owl-item")
      .removeClass("synced")
      .eq(current)
      .addClass("synced")
    if($("#sync2").data("owlCarousel") !== undefined){
      center(current)
    }
  }
 
  $("#sync2").on("click", ".owl-item", function(e){
    e.preventDefault();
    var number = $(this).data("owlItem");
    sync1.trigger("owl.goTo",number);
  });
 
  function center(number){
    var sync2visible = sync2.data("owlCarousel").owl.visibleItems;
    var num = number;
    var found = false;
    for(var i in sync2visible){
      if(num === sync2visible[i]){
        var found = true;
      }
    }
 
    if(found===false){
      if(num>sync2visible[sync2visible.length-1]){
        sync2.trigger("owl.goTo", num - sync2visible.length+2)
      }else{
        if(num - 1 === -1){
          num = 0;
        }
        sync2.trigger("owl.goTo", num);
      }
    } else if(num === sync2visible[sync2visible.length-1]){
      sync2.trigger("owl.goTo", sync2visible[1])
    } else if(num === sync2visible[0]){
      sync2.trigger("owl.goTo", num-1)
    }
    
  }
});
 



// SMOOTH NAV SCROLL 
$(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//, '') === this.pathname.replace(/^\//, '') && location.hostname === this.hostname) {

      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 2000);
        return false;
      }
    }
  });
});


// WAYPOINTS
$(function() {

  $('.wp1').waypoint(function() {
    $('.wp1').addClass('animated bounceInLeft');
  }, {
    offset: '85%'
  });

  $('.wp2').waypoint(function() {
    $('.wp2').addClass('animated bounceInRight');
  }, {
    offset: '85%'
  });

  $('.wp3').waypoint(function() {
    $('.wp3').addClass('animated bounceInLeft');
  }, {
    offset: '85%'
  });

  $('.wp4').waypoint(function() {
    $('.wp4').addClass('animated fadeInUp');
  }, {
    offset: '85%'
  });

  $('.wp5').waypoint(function() {
    $('.wp5').addClass('animated fadeInUp');
  }, {
    offset: '85%'
  });

  $('.wp6').waypoint(function() {
    $('.wp6').addClass('animated fadeInUp');
  }, {
    offset: '85%'
  });

});