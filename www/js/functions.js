function logOut(){
  localStorage.removeItem("userEmail");
  //alert(localStorage.userEmail);
  location.href = "login.html";
}

function openNav() {
  var x = document.getElementById("menuMobile");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else {
    x.className = x.className.replace(" w3-show", "");
  }
}
