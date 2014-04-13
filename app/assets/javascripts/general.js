//FUNCTION FOR FIXING MENU TO THE TOP AND GOTO TOP BUTTON
// This function will be executed when the user scrolls the page.
$(window).scroll(function(e) {
    // Get the position of the location where the scroller starts.
    var scroller_anchor = $(".scroller_anchor").offset().top;
     
    // Check if the user has scrolled and the current position is after the scroller start location and if its not already fixed at the top 
    if ($(this).scrollTop() > scroller_anchor && $('.scroller').css('position') != 'fixed') 
    {    // Change the CSS of the scroller to hilight it and fix it at the top of the screen.
        $('.scroller').css({
            'position': 'fixed',
            'top': '0px'
        });
        $('.top').css('display','block');
        // Changing the height of the scroller anchor to that of scroller so that there is no change in the overall height of the page.
        $('.scroller_anchor').css('height', '50px');
        
        
        $('.logoimg').css('margin-top','0%');
        
    } 
    else if ($(this).scrollTop() < scroller_anchor && $('.scroller').css('position') != 'relative') 
    {    // If the user has scrolled back to the location above the scroller anchor place it back into the content.
         
        // Change the height of the scroller anchor to 0 and now we will be adding the scroller back to the content.
        $('.scroller_anchor').css('height', '0px');
         $('.top').css('display','none');
        // Change the CSS and put it back to its original position.
        $('.scroller').css({
            'position': 'relative'
        });
    }
    var ht=$(window).height();
    if ($(this).scrollTop() < scroller_anchor)
    {
        var ypos=($(this).scrollTop());
        ht=ht*0.87;
        ypos=ypos-ht;
        ypos=ypos/8;
        $('.logoimg').css('margin-top',ypos);
    }
});
//FUNCTION TO SMOOTH SCROLL FROM MENU
//menu smooth scroll to element
$(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});