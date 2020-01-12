$(function(){
  // 1枚目
  // 表示
  $('#image0').on('change', function(e){
    event.preventDefault(e);
    var fileName0 = document.getElementById("image0").files[0].name;
    $('#image0_name').text(fileName0);
  });

  // 削除
  $(document).on('click', '#image0_rmv', function(e){
    event.preventDefault(e);
    $('#image0').val(null);
    $('#image0_name').empty();
  });

  // 2枚目
  // 表示
  $('#image1').on('change', function(e){
    event.preventDefault(e);
    var fileName1 = document.getElementById("image1").files[0].name;
    $('#image1_name').text(fileName1);
  });

  // 削除
  $(document).on('click', '#image1_rmv', function(e){
    event.preventDefault(e);
    $('#image1').val(null);
    $('#image1_name').empty();
  });

  // 3枚目
  // 表示
  $('#image2').on('change', function(e){
    event.preventDefault(e);
    var fileName2 = document.getElementById("image2").files[0].name;
    $('#image2_name').text(fileName2);
  });

  // 削除
  $(document).on('click', '#image2_rmv', function(e){
    event.preventDefault(e);
    $('#image2').val(null);
    $('#image2_name').empty();
  });

  // 4枚目
  // 表示
  $('#image3').on('change', function(e){
    event.preventDefault(e);
    var fileName3 = document.getElementById("image3").files[0].name;
    $('#image3_name').text(fileName3);
  });

  // 削除
  $(document).on('click', '#image3_rmv', function(e){
    event.preventDefault(e);
    $('#image3').val(null);
    $('#image3_name').empty();
  })

  // 5枚目
  // 表示
  $('#image4').on('change', function(e){
    event.preventDefault(e);
    var fileName4 = document.getElementById("image4").files[0].name;
    $('#image4_name').text(fileName4);
  });

  // 削除
  $(document).on('click', '#image4_rmv', function(e){
    event.preventDefault(e);
    $('#image4').val(null);
    $('#image4_name').empty();
  })

  // 6枚目
  // 表示
  $('#image5').on('change', function(e){
    event.preventDefault(e);
    var fileName5 = document.getElementById("image5").files[0].name;
    $('#image5_name').text(fileName5);
  });

  // 削除
  $(document).on('click', '#image5_rmv', function(e){
    event.preventDefault(e);
    $('#image5').val(null);
    $('#image5_name').empty();
  })

  // 7枚目
  // 表示
  $('#image6').on('change', function(e){
    event.preventDefault(e);
    var fileName6 = document.getElementById("image6").files[0].name;
    $('#image6_name').text(fileName6);
  });

  // 削除
  $(document).on('click', '#image6_rmv', function(e){
    event.preventDefault(e);
    $('#image6').val(null);
    $('#image6_name').empty();
  })

  // 8枚目
  // 表示
  $('#image7').on('change', function(e){
    event.preventDefault(e);
    var fileName7 = document.getElementById("image7").files[0].name;
    $('#image7_name').text(fileName7);
  });

  // 削除
  $(document).on('click', '#image7_rmv', function(e){
    event.preventDefault(e);
    $('#image7').val(null);
    $('#image7_name').empty();
  })

  // 9枚目
  // 表示
  $('#image8').on('change', function(e){
    event.preventDefault(e);
    var fileName8 = document.getElementById("image8").files[0].name;
    $('#image8_name').text(fileName8);
  });

  // 削除
  $(document).on('click', '#image8_rmv', function(e){
    event.preventDefault(e);
    $('#image8').val(null);
    $('#image8_name').empty();
  })

  // 10枚目
  // 表示
  $('#image9').on('change', function(e){
    event.preventDefault(e);
    var fileName9 = document.getElementById("image9").files[0].name;
    $('#image9_name').text(fileName9);
  });

  // 削除
  $(document).on('click', '#image9_rmv', function(e){
    event.preventDefault(e);
    $('#image9').val(null);
    $('#image9_name').empty();
  })
});