var ready;
ready = function() {
  var heights = [];
  $(".home-testimonial").each(function(index, element) {
    heights.push($(element).height());
  });
  var maxHeight = heights.sort().slice(-1)[0];
  $(".home-testimonial").each(function(index, element) {
    $(element).height(maxHeight);
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
