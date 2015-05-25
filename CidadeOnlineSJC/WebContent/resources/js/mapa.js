var map;
 
function initialize() {
    var latlng = new google.maps.LatLng(-23.1827903, -45.885683400000005);
 
    var options = {
        zoom: 16,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
 
    map = new google.maps.Map(document.getElementById("mapa"), options);
}
 
initialize();

function carregarPontos() {
	 
    $.getJSON('js/pontos.json', function(pontos) {
 
        $.each(pontos, function(index, ponto) {
 
            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(ponto.Latitude, ponto.Longitude),
                title: "Em deselvolvimento",
                map: map,
                icon: 'img/marker.png'
            });
 
        });
 
    });
 
}
 
carregarPontos();