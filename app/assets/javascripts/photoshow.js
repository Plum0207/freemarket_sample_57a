
// items/show.htmal.hamlのphotoshow

$(function(){
  let $container = $('.photoshow'),
      $photoGroup = $container.find('.photoshow-photos'),
      $thumnail = $container.find('.thumnail-photo');

    function goToPhoto(index){
      $photoGroup.stop(true).animate({ left: -100 * index + '%' }, 1000);
      currentIndex = index;
    }

    $thumnail.on({
      mouseenter: function(){
        goToPhoto($(this).index());
        $(this).addClass("active");
      },
      mouseleave: function(){
        $(this).removeClass("active");
      }
    });
});