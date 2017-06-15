var timetable_html_template = '<div class="addedGroup"><div class="col-md-5"><div class="form-group">'+
    '<input type="text" class="form-control" data-role="name" placeholder="Train Name"></div></div><div class="col-md-3">'+
    '<div class="form-group"><input type="text" data-role="departure" class="form-control" placeholder="Departure"></div></div>'+
    '<div class="col-md-3"><div class="form-group"><input type="text" data-role="arrival" class="form-control" placeholder="Arrival"></div></div>'+
    '<div class="col-md-1"><div class="form-group">'+
    '<button class="btn fullWidth btn-primary outline remove_timetable"><i class="fa fa-minus" aria-hidden="true"></i></button></div></div></div>';


$(document).ready(function() {

	var AppPlugins = {

		/* Bootstrap Modal Window */

        Modal: function() {
            $('.modalBtn').on('shown.bs.modal', function () {
            })
        },

		/* Bootstrap Date Picker */

		DatePicker: function() {
			$(function () {
				$('.datePicker').datetimepicker();
			});
		},

		/* Google Place Autocomplete */

		GooglePlace: function() {

			function initialize() {
				var input = document.getElementById('searchTextField');
				var autocomplete = new google.maps.places.Autocomplete(input);
			}

			google.maps.event.addDomListener(window, 'load', initialize);
		},

        ProcessTimetable: function(){
            var data = [];
            var tmp = [];
            $( "#timtable_container input" ).each(function( index ) {
                tmp.push($( this ).val());
                if(tmp.length == 3){
                    data.push(tmp);
                    tmp = [];
                }
            });
            $('#station_timetable').text(JSON.stringify(data));
        },
    }
	/* ------ Plugins Init ------ */

    $('#timetable_add').click(function(event){
        event.preventDefault();
        $('#timtable_container').append(timetable_html_template);
        return false;
    })

    $(document).on('click','.remove_timetable', function(event){
        event.preventDefault();
        $(this).parent().parent().parent().remove();
        return false;
    })

    $('#save_btn').click(function(e){
        e.preventDefault();
        AppPlugins.ProcessTimetable();
        $('#form_station').submit();
    })

	AppPlugins.Modal();
	AppPlugins.DatePicker();
	AppPlugins.GooglePlace();
	
});