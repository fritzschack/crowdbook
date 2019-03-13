import autoSizeInput from 'autosize-input';

const initAutoSizeInputs = () => {
  const inputs = document.querySelectorAll('.js-auto-size-input');
  inputs.forEach((input) => {
    autoSizeInput(input, { minWidth: 120 });
  });
}

export { initAutoSizeInputs };
