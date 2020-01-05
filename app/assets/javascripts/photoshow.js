// items/show.htmal.hamlのphotoshow

$(function(){
  let $container = $('.photoshow'),
      $photoGroup = $container.find('.photoshow-photos'),
      $thumnail = $container.find('.thumnail-photo');

    function goToPhoto(index){
      $photoGroup.stop(true).animate({ left: -100 * index + '%' }, 1000);
      currentIndex = index;
    }

    $thumnail.first().addClass("active");

    $thumnail.on({
      mouseenter: function(){
        goToPhoto($(this).index());
        $(".thumnail-photo.active").removeClass("active");
        $(this).addClass("active");
      },
    });
});