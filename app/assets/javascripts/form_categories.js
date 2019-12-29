$(function(){
  // <option>の作成
  function buildOptionTag(category){
    var optionTag = `<option value="${category.id}">${category.name}</option>`;
    return optionTag;
  }
  // 第２階層_<select>の作成
  function appendChildrenSelectForm(insertHTML){
    var selectForm = `
                <select class="form-box" id="children_category" name="item[category_id]">
                  <option value="---">---</option>
                  ${insertHTML}
                </select>
                `;
    $('.category__form').append(selectForm);
  }

  // 第３階層_<select>の作成
  function appendGrandchildrenSelectForm(insertHTML){
    var selectForm = `
                <select class="form-box" id="grandchildren_category" name="item[category_id]">
                  <option value="---">---</option>
                  ${insertHTML}
                </select>
                `;
    $('.category__form').append(selectForm);
  }
  
  // 第２階層_非同期通信
  $('#parent_category').on('change', function(e){
    event.preventDefault(e);
    var parentCategory = document.getElementById('parent_category').value
    if(parentCategory != "---"){
      $.ajax({
        url: '/items/get_children_category',
        type: 'get',
        data: {parent_id: parentCategory},
        dataType: 'json'
      })
      .done(function(children_categories){
        $('#children_category').remove();
        $('#grandchildren_category').remove();
        insertHTML = '';
        children_categories.forEach(function(category){
          insertHTML += buildOptionTag(category);
        });
        appendChildrenSelectForm(insertHTML);
      })
      .fail(function(){
        console.log("error");
      })
    }
  })
  // 第３階層_非同期通信
  $(document).on('change', '#children_category', function(e){
    event.preventDefault(e);
    var childrenCategory = document.getElementById('children_category').value
    if(childrenCategory != "---"){
      $.ajax({
        url: '/items/get_grandchildren_category',
        type: 'get',
        data: {children_id: childrenCategory},
        dataType: 'json'
      })
      .done(function(grandchildren_categories){
        $('#grandchildren_category').remove();
        insertHTML = '';
        grandchildren_categories.forEach(function(category){
          insertHTML += buildOptionTag(category);
        });
        appendGrandchildrenSelectForm(insertHTML);
      })
      .fail(function(){
        console.log("error");
      })
    }
  })
});