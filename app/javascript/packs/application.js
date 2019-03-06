import "bootstrap";
import $ from 'jquery';
import 'select2';
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"; // Note this is important!

$(function() {
  $('.js-new-performance-form').select2({
    tags: true,
    theme: "bootstrap",
    width: '100%'
  });
});

flatpickr(".datepicker", {});
