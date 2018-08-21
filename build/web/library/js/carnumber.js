/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    var numero = $(".m-type-2");
    var uni = $("#unidades");
    var borra = $(".remove-item");
var cart = $("#cart");
    borra.click(function () {
        var la = $(this).parent().parent().find('.idit').val();
        var fila = $(this).parent().parent();
        if (confirm('Seguro que deseas eliminar')) {
            var item = {
                "items": {
                    "iditem": la
                }};
            $.ajax({
                url: "del_to_car",
                data: JSON.stringify(item),
                dataType: 'json',
                contentType: 'application/json',
                type: 'POST',
                async: true,
                success: function (res) {
                    fila.remove();
                    var c = Number(res.cantidad);
                    uni.html('(' + c);
                    cart.html(res.elementos);
                }
            });
        }


    });


    numero.change(function () {
        var iditem = $(this).parent().parent().find("input:hidden#idte").val();
        var cantidad = $(this).val();
        var precio = $(this).parent().parent().parent().parent().find('.precio');
        var t = $(this).parent().parent().parent().parent().find('.total');
        var total = Number(precio.text()) * cantidad;
        t.text(total.toFixed(2));

        var item = {
            "items": {
                "iditem": iditem,
                "stock": cantidad
            }};
        $.ajax({
            url: "add_to_car",
            data: JSON.stringify(item),
            dataType: 'json',
            contentType: 'application/json',
            type: 'POST',
            async: true,
            success: function (res) {
                var c = Number(res.cantidad);
                uni.html('(' + c);
            }
        });
    });
});

