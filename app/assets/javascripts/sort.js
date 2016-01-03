$(document).ready(function() {
  function sortTable(f,n){
    var rows = $('#books tbody tr').get();

    rows.sort(function(a, b) {

    var A = $(a).children('td').eq(n).text().toUpperCase();
    var B = $(b).children('td').eq(n).text().toUpperCase();

    if(A < B) {
      return -1*f;
    }
    if(A > B) {
      return 1*f;
    }
    return 0;
    });

    $.each(rows, function(index, row) {
      $('#books').children('tbody').append(row);
    });
  }
  var f_bookcase = 1;
  var f_name = 1;
  $("#bookcase").click(function(){
      f_bookcase *= -1;
      var n = $(this).prevAll().length;
      sortTable(f_bookcase,n);
  });
  $("#name").click(function(){
      f_name *= -1;
      var n = $(this).prevAll().length;
      sortTable(f_name,n);
  });
});
