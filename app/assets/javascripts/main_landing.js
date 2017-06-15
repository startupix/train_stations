$(document).ready(function() {

    var AppPlugins = {

        /* Site Pre-Loader Js */

        PreLoader: function() {
            $(window).on('load',function() {
                $(".se-pre-con").fadeOut("slow"); // Animate loader off screen
            });
        },

        /* ------ Wow Js For Animate.css (the duration of the animation) ------ */

        WowJsInit: function() {
            wow = new WOW({
                animateClass: 'animated',
                offset: 100
            });
            wow.init();
        },

        /* ------ Google Map ------ */

        GoogleMap: function() {
            var geocoder = new google.maps.Geocoder();
            var uluru = {lat: -25.363, lng: 131.044};
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 13,
                center: uluru
            });
            var address = $('#map').data('address');
            geocoder.geocode( { 'address': address}, function(results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    map.setCenter(results[0].geometry.location);
                    var marker = new google.maps.Marker({
                        map: map,
                        position: results[0].geometry.location
                    });
                    map.panTo(marker.position);
                } else {
                    var marker = new google.maps.Marker({
                        position: uluru,
                        map: map
                    });
                }
            });

        }
    }

    /* ------ Plugins Init ------ */

    AppPlugins.PreLoader();
    AppPlugins.WowJsInit();
    AppPlugins.GoogleMap();

});