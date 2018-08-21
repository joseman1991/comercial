<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <s:set name="usuario" value="#session['usuario']"/>
</head>
<!--
Following HTML code is used to display Reservation form after clicking on the "Make a Reservation" button in the left sidebar.
This form requires "reservation-form.php" file to work.
-->
<body>
    <div class="various-content">

        <h2>Haz una reservacion</h2>
        <p>Reserva la fecha y la hora para atedenderte</p>

        <!-- RESERVATION FORM : begin -->
        <form id="modal-reservation-form" class="default-form " action="reservar" method="post">
            <input type="hidden" name="reservation-form">

            <!-- FORM VALIDATION ERROR MESSAGE : begin -->
            <p class="c-alert-message m-warning m-validation-error" style="display: none;"><i class="ico fa fa-exclamation-circle"></i>Please fill in all required (*) fields.</p>
            <!-- FORM VALIDATION ERROR MESSAGE : end -->

            <!-- SENDING REQUEST ERROR MESSAGE : begin -->
            <!-- SENDING REQUEST ERROR MESSAGE : end -->

            <!-- SERVICE LIST : begin -->

            <!-- SERVICE LIST : end -->

            <hr class="c-divider">

            <div class="row">
                <div class="col-sm-6">

                    <!-- NAME FIELD : begin -->
                    <div class="form-field">
                        <label for="reservation-name">Tu nombre<span>*</span></label>
                        <input id="reservation-name" name="reservation-name"  value="<s:property value="#usuario.completo"/>" class="m-required">
                    </div>
                    <!-- NAME FIELD : end -->

                    <!-- EMAIL FIELD : begin -->
                    <div class="form-field">
                        <label for="reservation-email">Correo electronico <span>**</span></label>

                        <input id="reservation-email" value="<s:property value="#usuario.correo"/>" name="reservation-email" class="m-required-one m-email">
                    </div>

                    <!-- EMAIL FIELD : end -->

                    <!-- PHONE FIELD : begin -->

                    <!-- PHONE FIELD : end -->

                </div>
                <div class="col-sm-6">

                    <!-- DATEPICKER FIELD : begin -->
                    <div class="form-field">
                        <label for="reservation-date">Fecha y Hora <span>**</span></label>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="datepicker-input" data-date-format="yy-mm-dd" data-first-day="0" >
                                    <input type="datetime" id="reservation-date" name="fecha" required=""  >
                                    <input type="hidden"   name="nombreusuario"  value="<s:property value="#usuario.nombreusuario"/>" id="user">
                                    <i class="fa fa-calendar"></i>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <select class="selectbox-input" id="reservation-time" name="hora" >
                                    <option value="9:00">9:00</option>
                                    <option value="9:30">9:30</option>
                                    <option value="10:00">10:00</option>
                                    <option value="10:30">10:30</option>
                                    <option value="11:00">11:00</option>
                                    <option value="11:30">11:30</option>
                                    <option value="12:00">12:00</option>
                                    <option value="12:30">12:30</option>
                                    <option value="13:00">13:00</option>
                                    <option value="13:30">13:30</option>
                                    <option value="14:00">14:00</option>
                                    <option value="14:30">14:30</option>
                                    <option value="15:00">15:00</option>
                                    <option value="15:30">15:30</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- DATEPICKER FIELD : end -->

                    <!-- NOTE FIELD : begin -->                   
                    <!-- NOTE FIELD : end -->

                    <!-- SUBMIT BUTTON : begin -->

                    <!-- SUBMIT BUTTON : end -->

                </div>

            </div>
            <div class="form-field">
                <button class="submit-btn c-button" type="button" data-label="Send Message" data-loading-label="Enviando..." id="btn">Reservar</button>
            </div>
            <!-- FORM NOTE : begin -->
            <div class="form-note">
                <p><span>*</span> required field</p>
                <p><span>**</span> fill at least one of those please</p>
                <H1><span class="alert-danger" id="msg" style="display: none">Error</span></h1>
            </div>
            <!-- FORM NOTE : end -->

        </form>
        <!-- RESERVATION FORM : end -->

        <script type="text/javascript" src="library/js/validaReserva.js">
            
        </script>

    </div>
</body>