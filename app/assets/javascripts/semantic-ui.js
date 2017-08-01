$(function ()
{
  $('.ui .dropdown').dropdown({on:'hover'});
  $('.menu .item').tab();
  $('.ui.checkbox').checkbox();
  $('.ui.accordion').accordion();
  $('#lending-preview').click(function(){
  $('.modal.lending').modal('show');
  });
  $('#presentation-preview').click(function(){
  $('.modal.presentation').modal('show');
  });
  $('#shop-preview').click(function(){
  $('.modal.shop').modal('show');
  });
  $('#api-preview').click(function(){
  $('.modal.api').modal('show');
  });
  $('#article-preview').click(function(){
      $('.modal.article').modal('show');
  });

});
