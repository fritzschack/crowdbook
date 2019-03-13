import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox.js';
import "bootstrap";
import $ from 'jquery';
import flatpickr from "flatpickr";
import { autoScrollHome } from '../components/autoScroll.js';
import { initUpdateNavbarOnScroll } from '../components/navbar.js';
import { initUpdateSearchbarOnScroll } from '../components/searchbar.js';
// import { campaignView } from '../components/campaignViewSwitch.js';
import { initEventListenerCheckbox } from '../components/form_is_private.js'
import { initToggleIndex } from '../components/index_toggle.js'
import 'select2';
import "flatpickr/dist/flatpickr.min.css";
import autoSizeInput from 'autosize-input';

$(function() {
  $('.js-new-performance-form').select2({
    tags: true,
    theme: "bootstrap",
    width: '100%',
    placeholder: 'Enter performances for your campaign',
  });
  $('.js-genre-selection-form').select2({
    theme: "bootstrap",
    placeholder: 'Select a genre for your campaign',
    width: '100%'
  });
  $('.js-genre-selection-search').select2({
    width: 200,
    theme: "bootstrap",
    placeholder: 'Search for a genre'
  });
  $('.js-selection-search-banner').select2({
    width: 200,
    theme: "bootstrap",
    placeholder: 'Search for a genre',
  });
});

const initAutoSizeInputs = () => {
  const inputs = document.querySelectorAll('.js-auto-size-input');
  inputs.forEach((input) => {
    autoSizeInput(input, { minWidth: 120 });
  });
}

initUpdateNavbarOnScroll();
initUpdateSearchbarOnScroll();
initToggleIndex();
initAutoSizeInputs();
initMapbox();
autoScrollHome();
initEventListenerCheckbox();
flatpickr("#datepicker", {});
