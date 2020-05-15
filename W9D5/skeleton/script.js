document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items
  const addFavoriteToList = (e) => {
     e.preventDefault(); 
     const favoritePlace = document.querySelector(".favorite-input"); 
     const favorite = favoriteInput.value; 
     favoritePlace.value = ""; 
  // --- your code here!



  // adding new photos

  // --- your code here!



});
