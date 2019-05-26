$(document).ready(function () {
  $('form').on('click', '.remove_fields', function(e){
    // this = link_to のボタン
    // thisのひとつ前(prev)のinput[type=hidden]要素を取得し1をvalueとする
    $(this).prev('input[type=hidden]').val('1');
    // thisの近いfieldsetタグを隠す
    $(this).closest('fieldset').hide();
    e.preventDefault()
  });
});
