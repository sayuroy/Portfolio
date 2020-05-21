$(function() {
  $(".message-form").on('submit', function(e) {
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    }).done(function(){
      var element = document.getElementById("contacttop");
      var rect = element.getBoundingClientRect();
      var position = rect.top + window.pageYOffset;
      $('form')[0].reset();
      scrollTo(0, position);
      alert("送信しました。ありがとうございます。")
      $('.submit-btn').prop("disabled", false);
    }).fail(function(){
      var element = document.getElementById("contacttop");
      var rect = element.getBoundingClientRect();
      var position = rect.top + window.pageYOffset;
      scrollTo(0, position);
      alert("全て入力して下さい")
      $('.submit-btn').prop("disabled", false);
    });
  });
});