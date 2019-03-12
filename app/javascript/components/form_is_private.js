const initEventListenerCheckbox = () => {
  const checkbox = document.getElementById("campaign_is_private");
  const checkbox_div = document.getElementById("checkbox_div");

  checkbox.addEventListener('change', function() {
    if(this.checked) {
      console.log("checked");
      checkbox_div.insertAdjacentHTML('afterend', '<div id="password_div" class="form-group col-xs-12 col-sm-4"><div class="form-group string required campaign_password"><label class="form-control-label string" for="campaign_address">Password</label><input class="form-control string input" placeholder="Please enter the password for your private event." type="text" name="campaign[password]" id="campaign_password"></div></div>');
    } else {
      const password_div = document.getElementById("password_div")
      password_div.remove();
    }
  });
}

export { initEventListenerCheckbox };
