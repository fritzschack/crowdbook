import "bootstrap";
import $ from 'jquery';
import 'select2';
import { autoScrollHome } from '../components/autoScroll';

$(function() {
  $('.js-new-performance-form').select2({
    tags: true,
    theme: "bootstrap",
    width: '100%'
  });
});

autoScrollHome();
