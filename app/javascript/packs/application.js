// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

// require("@rails/ujs").start()
// require("turbolinks").start()
// require("@rails/activestorage").start()
// require("channels")
// require("jquery")

import jquery from 'jquery';
// window.$ = window.jquery = jquery;

Rails.start()
Turbolinks.start()
ActiveStorage.start()

console.log("Does this work")

function myFunction() {
    console.log("Entered in myFunction")

    document.getElementById("myDropdown").classList.toggle("show-dropdown");
}


window.onclick = function (e) {
    if (!e.target.matches('.dropbtn')) {
        console.log("remove the show-dropdown class")
        var myDropdown = document.getElementById("myDropdown");
        if (myDropdown.classList.contains('show-dropdown')) {
            myDropdown.classList.remove('show-dropdown');
        }
    } else {
        console.log("Entered in myFunction")
        document.getElementById("myDropdown").classList.toggle("show-dropdown");
    }
}

$(".dropbtn").on("click", function () {
    console.log("Entered in myFunction")
    document.getElementById("myDropdown").classList.toggle("show-dropdown");
});
