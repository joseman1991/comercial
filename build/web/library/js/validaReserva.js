/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    var btn = $('#btn');
    var fecha = $('#reservation-date');
    var hora = $('#reservation-time');
    var mensage = $('#msg');



    btn.click(function () {
        if (!(fecha.val() === '')) {

            var reserva = {
                "reservas": {
                    "f": fecha.val(),
                    "h": hora.val()                    
                }};
            // alert(JSON.stringify(reserva));
            $.ajax({
                url: "comprobar",
                data: JSON.stringify(reserva),
                dataType: 'json',
                contentType: 'application/json',
                type: 'POST',
                async: true,
                success: function (res) {
                    if (res.reservado) {
                        mensage.html('No hay cupos para la fecha  y hora seleccionada');
                        mensage.css('display', 'block');
                        setTimeout(function () {
                            mensage.hide('fade');
                        }, 3000);
                    }else{
                        $('#modal-reservation-form').submit();
                    }
                }
            });

        } else {
            mensage.html('Ingresa la fecha');
            mensage.css('display', 'block');
            setTimeout(function () {
                mensage.hide('fade');
            }, 3000);
        }
    });


});