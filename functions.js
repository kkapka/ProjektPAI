function printCounties(callback) {
    /*var select = document.getElementById("list-voivodeships");
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
    }*/

    var id=$("#list-voivodeships").val();

    $.ajax({
        async: false,
        type: "GET",
        url: "./components/list-counties.php",
        data: {voivodeship_id:id},
        success: function (response) {
            $("#counties").html(response);
        }
    })
}

function printLocations() {
    /*var select = document.getElementById("list-counties");
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
    }*/

    var id=$("#list-counties").val();

    $.ajax({
        async: false,
        type: "GET",
        url: "./components/list-cities.php",
        data: {county_id:id},
        success: function (response) {
            $("#locations").html(response);
        }
    })
}