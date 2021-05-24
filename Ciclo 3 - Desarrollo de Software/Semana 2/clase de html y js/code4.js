function set_background(){
  docBody = document.getElementsByTagName("body")[0];

  // Get all the p elements that are descendants of the docBody
  myBodyElements =  docBody.getElementsByTagName("p");

  for(var i=0; i < myBodyElements.length; i++){
    myBodyElements[i].style.background = "rgb(255, 150, 0)";
  }

  // Get the fisrt p elements
  //myp1 = myBodyElements[0];
  //myp1.style.background = "rgb(255, 0, 0)";
  // Get the second p elements
  //myp2 = myBodyElements[1];
  //myp2.style.background = "rgb(255, 255, 0)";
}
