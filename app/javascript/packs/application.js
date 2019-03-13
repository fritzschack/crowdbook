import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox.js';
import "bootstrap";
import $ from 'jquery';
import flatpickr from "flatpickr";
import { autoScrollHome } from '../components/autoScroll.js';
import { initUpdateNavbarOnScroll } from '../components/navbar.js';
import { initUpdateSearchbarOnScroll } from '../components/searchbar.js';
import { initEventListenerCheckbox } from '../components/form_is_private.js'
import { initToggleIndex } from '../components/index_toggle.js'
import { initAutoSizeInputs } from '../components/initAutoSizeInputs.js'
import 'select2';
import "flatpickr/dist/flatpickr.min.css";
import autoSizeInput from 'autosize-input';
import { selectTwo } from '../components/selectTwo.js'

selectTwo();
initUpdateNavbarOnScroll();
initUpdateSearchbarOnScroll();
autoScrollHome();
flatpickr("#datepicker", {});
initToggleIndex();
initAutoSizeInputs();
initMapbox();
initEventListenerCheckbox();
