/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    $(function () {
        var valor = 0;
        var e1 = $('#e1');
        var e2 = $('#e2');
        var e3 = $('#e3');
        var e4 = $('#e4');
        var e5 = $('#e5');
        var boton = $('#boton');
        var estrellas = $('#estrellas');

        e1.click(function () {
            valor = 1;
        });

        e2.click(function () {
            valor = 2;
        });

        e3.click(function () {
            valor = 3;
        });

        e4.click(function () {
            valor = 4;
        });

        e5.click(function () {
            valor = 5;
        });

        boton.click(function () {
            if (valor > 0) {
//                estrellas.val(valor);
                alert("Gracias por tu opinion");
                $("#review-form").submit();
            }else{
                alert("Selecciona al menos una estrella");
            }

        });



    });
});