$(function(){
  $('#input_item_price').on('change', function(e){
    event.preventDefault(e);
    var price = document.getElementById('input_item_price').value;
    var fee = Math.floor(price * 0.1);
    var profit = price - fee;
    $('#item_profit').text(profit);
    $('#item_fee').text(fee)
  })
});