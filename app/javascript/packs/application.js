import "bootstrap";
import $ from 'jquery';
import 'select2';

$(function() {
  $('.js-new-performance-form').select2({
    tags: true,
    theme: "bootstrap",
    width: '100%'
  });
});
