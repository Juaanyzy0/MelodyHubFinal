<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Melodyhub2.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login - MelodyHub</title>
    <link href="resources/css/login.css" rel="stylesheet" />
</head>
<body>
<!-- Navbar -->
<div class="navbar">
    <div><h2><strong>MelodyHub</strong></h2></div>
    <div>
        <a href="html/index.html">Inicio</a>
        <a href="Login.aspx">Login</a>
        <a href="html/Sobre Nosotros.html">Sobre Nosotros</a>
    </div>
</div>

<!-- Formulario de login -->
<form id="form1" runat="server" class="wrapper">
    <h1>Ingresar - MelodyHub</h1>
    
    <div class="input-box">
        <asp:Label ID="lblUsuario" runat="server" Text="Usuario" CssClass="form-label"></asp:Label>
        <div class="field-with-error">
            <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" AutoCompleteType="Disabled" />
            <asp:RequiredFieldValidator 
                runat="server" 
                ID="rfvUsuario" 
                ControlToValidate="txtUsuario" 
                ErrorMessage="Completa el campo." 
                ForeColor="Red" 
                Display="Static" />
        </div>
    </div>

    <div class="input-box">
        <asp:Label ID="lblPassword" runat="server" Text="Contraseña" CssClass="form-label"></asp:Label>
        <div class="field-with-error">
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"/>
            <asp:RequiredFieldValidator 
                runat="server" 
                ID="rfvPassword" 
                ControlToValidate="txtPassword" 
                ErrorMessage="Completa el campo." 
                ForeColor="Red" 
                Display="Static" />
        </div>
    </div>
    <!--Botón ingresar-->
    <asp:Button 
        ID="btnIngresar" 
        runat="server" 
        Text="Ingresar" 
        CssClass="btn" 
        OnClick="btnIngresar_Click" />
    
    <asp:Label 
        ID="lblEstado" 
        runat="server" 
        ForeColor="Red" 
        CssClass="error-message" />
</form>
</body>
</html>
