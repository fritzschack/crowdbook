import "bootstrap";
import "flatpickr/dist/flatpickr.min.css";
import flatpickr from "flatpickr";

import { selectTwo } from '../components/selectTwo.js';
import { initUpdateNavbarOnScroll } from '../components/navbar.js';
import { initUpdateSearchbarOnScroll } from '../components/searchbar.js';
import { autoScrollHome } from '../components/autoScroll.js';
import { initToggleIndex } from '../components/index_toggle.js';
import { initAutoSizeInputs } from '../components/initAutoSizeInputs.js';
import { initEventListenerCheckbox } from '../components/form_is_private.js';
import { initMapbox } from '../plugins/init_mapbox.js';

selectTwo();
initUpdateNavbarOnScroll();
initUpdateSearchbarOnScroll();
autoScrollHome();
flatpickr("#datepicker", {});
initAutoSizeInputs();
initToggleIndex();
initEventListenerCheckbox();
initMapbox();
