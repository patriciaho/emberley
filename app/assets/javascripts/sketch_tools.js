// Building Sketch tools
$(function() {
  $.each(['#099EC9', '#F12A17', '#579F21', '#000', '#fff'], function() {
  $('#sketch .tools').append("<a href='#colors_sketch' data-color='" + this + "' style='height: 20px; width: 20px; background: " + this + ";'>&nbsp;&nbsp;&nbsp;</a> ");
  });
  $.each([3, 5, 10, 15], function() {
  $('#sketch .tools').append("<a href='#colors_sketch' data-size='" + this + "' style='height: 20px; width: 20px; background: #ccc'>&nbsp;" + this + "&nbsp;</a> ");
  });
  $('#colors_sketch').sketch();
});