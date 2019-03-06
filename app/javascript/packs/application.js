import "bootstrap";
import $ from 'jquery';
import 'select2';
import { autoScrollHome } from '../components/autoScroll';
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"; // Note this is important!

$(function() {
  $('.js-new-performance-form').select2({
    // tags: true,
    theme: "bootstrap",
    width: '100%',
    placeholder: 'Enter performances for your campaign'
  });
  $('.js-genre-selection-form').select2({
    theme: "bootstrap",
    width: '100%',
    placeholder: 'Select a genre for your campaign'
  });
});

autoScrollHome();
flatpickr(".datepicker", {});
