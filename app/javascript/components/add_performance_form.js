const addPerformanceForm = () => {
  const addButton = document.getElementById("addPerformanceForm")
  addButton.addEventListener("click", (event) => {
    event.preventDefault();
    event.currentTarget.insertAdjacentHTML('beforebegin', '<select class="form-control select required" name="campaign[performances][musician]" id="campaign_performances_musician"><option value=""></option></select>');
  })
};

export { addPerformanceForm };
