function printCounties() {
    var select = document.getElementById("list-voivodeships");
    id=select.options[select.selectedIndex].value;
    if (id == "") {
        return;
    } else {
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("counties").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET","./components/list-counties.php?voivodeship_id="+id,true);
        xmlhttp.send();
    }
}

function printLocations() {
    var select = document.getElementById("list-counties");
    id=select.options[select.selectedIndex].value;
    if (id == "") {
        return;
    } else {
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("locations").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET","./components/list-cities.php?county_id="+id,true);
        xmlhttp.send();
    }
}