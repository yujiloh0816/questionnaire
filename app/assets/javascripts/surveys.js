$(document).ready(function () {
  $('form').on('click', '.remove_fields', function(e){
    // this = link_to のボタン
    // thisのひとつ前(prev)のinput[type=hidden]要素を取得し1をvalueとする
    $(this).prev('input[type=hidden]').val('1');
    // thisの近いfieldsetタグを隠す
    $(this).closest('fieldset').hide();
    e.preventDefault();
  });

});

$(document).ready(function () {
  $('form').on('click', '.add_fields', function(e){
    // time変数に代入　現在の時間を作成して、時間だけを取り出す
    time = new Date().getTime();
    // regexpに代入
    // 正規表現を作成　$thisのid属性を取得
    // 「g」フラグにによるグローバルサーチ
    regexp = new RegExp($(this).data('id'), 'g');
    // before(content) 各要素の前にコンテンツを挿入する。
    // thisの要素data-field要素.regexp
    $(this).before($(this).data('fields').replace(regexp, time));
    e.preventDefault();
  });
});
