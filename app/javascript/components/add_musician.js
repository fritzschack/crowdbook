const addPerformanceForm = () => {
  document.getElementById("addPerformanceForm").addEventListener("click", function(){
    event.preventDefault()
    const form = "<%= f.simple_fields_for :performances do |p| %><%= p.input :musician, label: 'Musician' %><% end %>"
    document.getElementById("addPerformanceForm").insertAdjacentHTML(beforebegin, form)
  }
};


export { addPerformanceForm }
