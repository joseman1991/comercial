/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    var btn = $(".add");
    var btn2 = $(".product-btn");
    var cart = $("#cart");
    var serv = $("#serv");
    var uni = $("#unidades");

    $('.close').click(function () {
        $('.alert').hide('fade');
    });

    btn2.click(function () {
        var iditem = $(this).parent().find("input:hidden#idte").val();
        var idser = $(this).parent().find("input:hidden#idser").val();
        var boton = $(this);

        var item = {
            "items": {
                "iditem": iditem,
                "idtipo": idser
            }};
        $.ajax({
            url: "add_to_cart",
            data: JSON.stringify(item),
            dataType: 'json',
            contentType: 'application/json',
            type: 'POST',
            async: true,
            success: function (res) {

                var c = Number(res.cantidad);
                cart.html('(' + res.elementos);
                uni.html('(' + c);
                boton.html("Agregar (" + res.cantidadItem + ")");
                var dato = JSON.parse(res.JSonItems);
                if(res.esStock){
                     $('#myAlert' + dato.iditem).removeClass("alert-danger");
                     $('#myAlert' + dato.iditem).addClass("alert-success");
                    $('#myAlert' + dato.iditem).show('fade').html("<strong>" + dato.nombre + "</strong> agregado al carrito");
                }else{
                    $('#myAlert' + dato.iditem).removeClass("alert-success");
                     $('#myAlert' + dato.iditem).addClass("alert-danger");
                    $('#myAlert' + dato.iditem).show('fade').html("<strong>" + dato.nombre + "</strong> no tiene más stock");
                }               

                setTimeout(function () {
                    $('#myAlert' + dato.iditem).hide('fade');
                }, 3000);


            }
        });
    });



    btn.click(function () {

        var iditem = $(this).parent().find("input:hidden#idte").val();
        var idser = $(this).parent().find("input:hidden#idser").val();

        var boton = $(this);
        var item = {
            "items": {
                "iditem": iditem,
                "idtipo": idser
            }};




        $.ajax({
            url: "add_to_cart",
            data: JSON.stringify(item),
            dataType: 'json',
            contentType: 'application/json',
            type: 'POST',
            async: true,
            success: function (res) {
                if (res.esReserva) {
                    var dato = JSON.parse(res.JSonItems);
                    var c = Number(res.cantidad);
//                    cart.html('(' + res.car);
//                    uni.html('(' + c);
                    serv.html('(' + res.cantidadSer);
                    if (res.esRepetido) {
                        boton.removeClass("btn-danger");
                        boton.addClass("btn-info");
                        boton.html("Añadir <span ><i class='cart-ico fa fa-shopping-cart'></i></span>");
                        $('#myAlert' + dato.iditem).removeClass('alert-success');
                        $('#myAlert' + dato.iditem).addClass('alert-warning');
                        $('#myAlert' + dato.iditem).show('fade').html("<strong>" + dato.nombre + "</strong> eliminado de la reservación");
                    } else {
                        boton.removeClass("btn-info");
                        boton.addClass("btn-danger");
                        boton.html("Eliminar <span ><i class='cart-ico fa fa-trash'></i></span>");
                        $('#myAlert' + dato.iditem).removeClass('alert-warning');
                        $('#myAlert' + dato.iditem).addClass('alert-success');
                        $('#myAlert' + dato.iditem).show('fade').html("<strong>" + dato.nombre + "</strong> añadido a la reservación");
                    }

                    setTimeout(function () {
                        $('#myAlert' + dato.iditem).hide('fade');
                    }, 3000);
                } else {
                    $('p a')[0].click();
                }


            }
        });

    });
});
