﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="Sconnect.Browser.Register.registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../../Scripts/jquery-1.10.2.js"></script>
    <script src="Register.js"></script>
    <link href="Stiles.css" rel="stylesheet" />
    <script src="../../Scripts/bootstrap.js"></script>
    <link rel="stylesheet" href="~/source/vendor/bootstrap/dist/css/bootstrap.css" />
    <link href="jquery-ui.css" rel="stylesheet" />
    <script src="jquery-ui.js"></script>


    <script type="text/javascript">
        $(document).ready(function () {
            $('#CalendarNacimiento').datepicker({
                
                bottonText: 'Calendar',
                numbreOfMonths: 2,
                changeMonth: true,
                changeYear: true,
                mindDate: new Date(1990, 1, 1),
                maxDate: new Date(2000, 11, 31)
               

         });
        });
    </script>

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
                            
                            <asp:TextBox ID="txtNombre" class="form-control input-lg" placeholder="Nombre (s)" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtApellidoPaterno"  class="form-control input-lg" placeholder="Apellido Paterno"  runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtApellidoMaterno" class="form-control input-lg" placeholder="Apellido Materno"  runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtEdad" class="form-control input-lg" placeholder="Edad" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtCarrera"  class="form-control input-lg" placeholder="Carrera" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtSemestre"   class="form-control input-lg" placeholder="Semestre" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <asp:FileUpload ID="fileFoto"  class="form-control input-lg" placeholder="Foto" runat="server" />
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtMatricula"   class="form-control input-lg" placeholder="Matricula" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtCurp"  class="form-control input-lg" placeholder="Curp"  runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtTelefono" class="form-control input-lg" placeholder="Telefono"  runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="CalendarNacimiento"  class="form-control input-lg" data-provide="datepicker" placeholder="Fecha de nacimiento" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtCalle" class="form-control input-lg" placeholder="calle" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtNumeroExterior"  class="form-control input-lg" placeholder="Numero Exterior" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtNumeroInterior" class="form-control input-lg" placeholder="Num Interior" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <asp:DropDownList ID="DropEstado"   class="form-control input-lg" placeholder="Estado"  runat="server">
                                    <asp:ListItem>Selecciona un estado</asp:ListItem>
                                </asp:DropDownList>
                                
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <asp:DropDownList ID="DropMunicipio"  class="form-control input-lg" placeholder="municipio" runat="server">
                                      <asp:ListItem>Selecciona un municipio</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <asp:DropDownList ID="DropColonia" class="form-control input-lg" placeholder="colonia" runat="server">
                                      <asp:ListItem>Selecciona una colonia</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <asp:TextBox ID="txtCodigoPostal"  class="form-control input-lg" placeholder="Codigo postal"  runat="server"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <asp:TextBox ID="txtNombreUsuario"   class="form-control input-lg" placeholder="Nombre de usuario" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtEmail"  class="form-control input-lg" placeholder="Email" runat="server"></asp:TextBox>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <asp:TextBox ID="txtContrasenia" class="form-control input-lg" placeholder="Contraseña" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <asp:TextBox ID="txtContraseniaValidacion" class="form-control input-lg" placeholder="Confirmar contraseña" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <hr class="colorgraph">
                        <div class="row">
                            <div class="col-xs-12 col-md-6">
                                <input type="submit" value="Cadastrar" class="btn btn-primary btn-block btn-lg" tabindex="7">

                            </div>
                            <div class="col-xs-12 col-md-6"><a href="#" class="btn btn-success btn-block btn-lg">Logar</a></div>
                        </div>

                    </div>
                </div>


            </div>
    </form>
</body>
</html>
