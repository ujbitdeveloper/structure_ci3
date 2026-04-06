var app = app || {};
$(function () {
	$("#station_id").select2({
		theme: "bootstrap-5",
		placeholder: "Select Station",
		allowClear: true,
		width: "100%",
	});

	$.ajax({
		url: app.base_url + "data/form_data/get_data_filtered_station",
		type: "POST",
		dataType: "json",
		success: function (res) {
			const list = Array.isArray(res) ? res : res.data || [];
			const $station = $("#station_id").empty();
			list.forEach((r) => {
				$station.append(
					new Option(r.name_station, r.id_stations, false, false)
				);
			});
			$station.trigger("change"); // refresh select2
		},
	});
});
