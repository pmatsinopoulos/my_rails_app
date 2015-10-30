function addRating(){
  // Add rating sytem
    $('.rating').raty( { path: '/assets/images', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/assets/images', 
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });
}
$(document).on('ready page:load', function(){
    addRating();
    
    // Add image zoom
    $('.img-zoom').elevateZoom();
});

