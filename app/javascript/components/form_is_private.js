const initEventListenerCheckbox = () => {
  const checkbox = document.getElementById("campaign_is_private");
  const checkbox_div = document.getElementById("checkbox_div");
  if (checkbox && checkbox_div) {
    checkbox.addEventListener('change', function() {
      if(this.checked) {
        console.log("checked");
        checkbox_div.insertAdjacentHTML('afterend', '<div id="codeword_div" class="form-group col-xs-12 col-sm-4"><div class="form-group string required campaign_codeword"><label class="form-control-label string" for="campaign_address">codeword</label><input class="form-control string input" placeholder="Please enter the codeword for your private event." type="text" name="campaign[codeword]" id="campaign_codeword"></div></div>');
      } else {
        console.log("unchecked");
        const codeword_div = document.getElementById("codeword_div")
        codeword_div.remove();
      }
    });
  }
}

export { initEventListenerCheckbox };
