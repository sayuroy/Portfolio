document.addEventListener("turbolinks:load", e => {
  $(function() {
    $(".btn").click(function() {
      var target = $(this).attr('id') + 'top';
      var element = document.getElementById(target);
      var rect = element.getBoundingClientRect();
      var position = rect.top + window.pageYOffset;
      $("html, body").animate({scrollTop:position}, 400, 'swing');
      return false;
    });
  });
});
