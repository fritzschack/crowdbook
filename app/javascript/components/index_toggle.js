const initToggleIndex = () => {
  const cardsLink = document.getElementById("toggleCards");
  const mapLink = document.getElementById("toggleMap");
  if (cardsLink && mapLink) {
    cardsLink.addEventListener("click", (event) => {
      event.preventDefault();
      document.getElementById("campaignCards").classList.add("active");
      document.getElementById("campaignMap").classList.remove("active");
      cardsLink.classList.add("active-toggle");
      mapLink.classList.remove("active-toggle");
    });

    mapLink.addEventListener("click", (event) => {
      event.preventDefault();
      document.getElementById("campaignCards").classList.remove("active");
      document.getElementById("campaignMap").classList.add("active");
      cardsLink.classList.remove("active-toggle");
      mapLink.classList.add("active-toggle");
    });
  }
}

export { initToggleIndex };
