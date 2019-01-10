<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="CarCare.Cart" %>
<%@ Register Src="~/UserControl/Cart.ascx" TagPrefix="uc" TagName="cart" %>    

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Car Care Express | Cart</title>
	<!-- font link -->
	<link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,400i,700,900" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet">
	<!--font-awesome icon css-->
	<link href="css/font-awesome.min.css" type="text/css" rel="stylesheet">
	<!-- Bootstrap css -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<!-- owl-carousel assets -->
	<link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="css/owl.theme.css">    <!-- jquery UI -->
    <link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="css/jquery-ui.theme.min.css">

	<!-- style css -->
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<!-- jquery -->
	<script src="js/jquery.min.js"></script>
	 <script src="js/custom.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" runat="server">
     <asp:ScriptManager ID="scriptmanager" runat="server" EnablePageMethods="true"></asp:ScriptManager>
     <div>
         <uc:cart ID="Cartcontrol" runat="server" />    
    </div>
</asp:Content>
