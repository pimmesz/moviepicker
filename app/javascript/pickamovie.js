function pickAMovie(){
  console.log("Pick a movie");
  var array = document.querySelectorAll('[movie-id]')

  array[Math.floor(Math.random() * array.length)];

}

export { pickAMovie };

