<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="Sconnect.Browser.Register.registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Register.js"></script>
    <link href="Stiles.css" rel="stylesheet" />
    <script src="../../Scripts/bootstrap.js"></script>
    <link rel="stylesheet" href="~/source/vendor/bootstrap/dist/css/bootstrap.css" />

</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">
        <div>
            <div class="row">
                <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                    <%--Se dejo como referencia inputs, se mejorara el diseño , se cambiaran los controles--%>  
                    <h2>SConnect <small>Bienvenido a nuestro registro.</small></h2>
                    <hr class="colorgraph">
                    <div class="row">
                        <div class=" form-group col-xs-13 col-sm-13 col-md-13">
                            <input type="text" class="form-control input-lg" placeholder="Nombre (s)" tabindex="2">
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="Apellido Paterno" tabindex="1">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="last_name" id="last_name" class="form-control input-lg" placeholder="Apellido Materno" tabindex="2">
                            </div>
                        </div>
                         <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="Edad" tabindex="1">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="last_name" id="last_name" class="form-control input-lg" placeholder="Carrera" tabindex="2">
                            </div>
                    </div>
                         <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="Semestre" tabindex="1">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="last_name" id="last_name" class="form-control input-lg" placeholder="Foto" tabindex="2">
                            </div>
                         </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="last_name" id="last_name" class="form-control input-lg" placeholder="Matricula" tabindex="2">
                            </div>
                         </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="last_name" id="last_name" class="form-control input-lg" placeholder="Curp" tabindex="2">
                            </div>
                         </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="last_name" id="last_name" class="form-control input-lg" placeholder="Telefono" tabindex="2">
                            </div>
                         </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="last_name" id="last_name" class="form-control input-lg" placeholder="Fecha de nacimiento" tabindex="2">
                            </div>
                         </div>
                        <div class="form-group">
                        <input type="Text"  class="form-control input-lg" placeholder="Nombre de usuario" tabindex="4">
                    </div>
                    <div class="form-group">
                        <input type="email" name="email" id="email" class="form-control input-lg" placeholder="Email" tabindex="4">
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Contraseña" tabindex="5">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-lg" placeholder="Confirmar contraseña" tabindex="6">
                            </div>
                        </div>
                    </div>
                   
                    <hr class="colorgraph">
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <input type="submit" value="Cadastrar" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
                        <div class="col-xs-12 col-md-6"><a href="#" class="btn btn-success btn-block btn-lg">Logar</a></div>
                    </div>

                </div>
            </div>


        </div>
    </form>
</body>
</html>
