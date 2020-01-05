
// items/show.htmal.hamlのphotoshow

$(function(){
  let $container = $('.photoshow'),
      $photoGroup = $container.find('.photoshow-photos'),
      $thumnail = $container.find('.thumnail-photo');

    function goToPhoto(index){
      $photoGroup.animate({ left: -100 * index + '%' }, 1000);
      currentIndex = index;
    }

    $thumnail.on('click', function(){
      goToPhoto($(this).index());
    });

});