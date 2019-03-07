import "bootstrap";
import $ from 'jquery';
import 'select2';
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import { autoScrollHome } from '../components/autoScroll';

flatpickr("#datepicker", {});

$(function() {
  $('.js-new-performance-form').select2({
    tags: true,
    theme: "bootstrap",
    width: '100%',
    placeholder: 'Enter performances for your campaign'
  });
  $('.js-genre-selection-form').select2({
    theme: "bootstrap",
    width: '100%',
    placeholder: 'Select a genre for your campaign'
  });
  $('.js-genre-selection-search').select2({
    width: '100%',
    theme: "bootstrap",
    placeholder: 'Search for a genre'
  });
  $('.js-selection-search-banner').select2({
    width: '100%',
    theme: "bootstrap",
    placeholder: 'Search for a genre',
  });
});

autoScrollHome();
