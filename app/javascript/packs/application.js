import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()



window.onclick = function (e) {
    if (!e.target.matches('.dropbtn') && !e.target.matches('.fa-bars')) {
        var myDropdown = document.getElementById("myDropdown");
        if (myDropdown.classList.contains('show-dropdown')) {
            myDropdown.classList.remove('show-dropdown');
        }
    } else {
        document.getElementById("myDropdown").classList.toggle("show-dropdown");
    }
}

