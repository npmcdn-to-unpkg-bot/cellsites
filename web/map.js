function map(id, locationsGeoJSON, boundariesGeoJSON) {
	var locationsData;
	var boundariesData;
	$.when(
		$.getJSON(locationsGeoJSON, function(data) {
			locationsData = data;
		})
		.fail(function(jqXHR, textStatus, errorThrown) {
			alert('getJSON request failed! ' + textStatus);
		}),
		$.getJSON(boundariesGeoJSON, function(data) {
			boundariesData = data;
		})
		.fail(function(jqXHR, textStatus, errorThrown) {
			alert('getJSON request failed! ' + textStatus);
		})
	).then(function() {
		var map = L.map(id);
		var layer = L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'});
		layer.addTo(map);
		L.geoJson(locationsData, {
			onEachFeature: function (feature, layer) {
				layer.bindPopup(feature.properties.name);
			}
		}).addTo(map);
		var boundaries = L.geoJson(boundariesData).addTo(map);
		map.fitBounds(boundaries.getBounds());
	});
}
