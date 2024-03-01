// modal js

// Get the modal
var modal = document.getElementById("myModal");


// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function () {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function () {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}








// dropdown
    /* When the user clicks on the button, 
    toggle between hiding and showing the dropdown content */
    function myFunction() {
        document.getElementById("myDropdown").classList.toggle("show");
    }

// Close the dropdown if the user clicks outside of it
window.onclick = function (event) {
    if (!event.target.matches('.dropbtn')) {
        var dropdowns = document.getElementsByClassName("dropdown-content");
        var i;
        for (i = 0; i < dropdowns.length; i++) {
            var openDropdown = dropdowns[i];
            if (openDropdown.classList.contains('show')) {
                openDropdown.classList.remove('show');
            }
        }
    }
}
// dropdown end




// signin modal start
// Get the modal
var modal2 = document.getElementById("myModal2");

// Get the button that opens the modal
var btn2 = document.getElementById("mylogin2");

// Get the <span> element that close2s the modal
var span = document.getElementsByClassName("close2")[0];

// When the user clicks the button, open the modal 
btn2.onclick = function () {
    modal2.style.display = "block";
}

// When the user clicks on <span> (x), close2 the modal
span.onclick = function () {
    modal2.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close2 it
window.onclick = function (event) {
    if (event.target == modal2) {
        modal2.style.display = "none";
    }
}
// signin modal end