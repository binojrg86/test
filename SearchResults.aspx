<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="CarCare.SearchResults" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Care Express | Search Catalogue</title>
    <!-- font link -->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,400i,700,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet">
    <!--font-awesome icon css-->
    <link href="css/font-awesome.min.css" type="text/css" rel="stylesheet">
    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <!-- owl-carousel assets -->
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="css/owl.theme.css">
    <!-- jquery UI -->
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
    <script>
        // WRITE THE VALIDATION SCRIPT IN THE HEAD TAG.
        function isNumber(evt) {
            var iKeyCode = (evt.which) ? evt.which : evt.keyCode
            if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
                return false;

            return true;
        }
    </script>
    <style>
        .clearall-img {
            width: 100%;
            max-width: 10px;
            margin-right: 10px;
            position: relative;
            top: -2px;
        }
    </style>

    <script>
        function OpenLoginPopUp() {

            var div;
            div = document.getElementById("cpMain_loginmodal");
            div.className = "modal fade in";
            div.style.display = "block";
            return false;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" runat="server">
    <asp:ScriptManager ID="scriptmanager" runat="server"></asp:ScriptManager>



    <section class="search-filter-tyre category-filter-tyre" id="dvMain" runat="server">
        <div class="container-fluid">
            <div class="row" >
                <div class="col-md-2">
                    <div class="filter-settings">
                        <div class="filter-setting-head">
                            <h3>
                                <img src="images/filter-icon.png" alt="" />filters</h3>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>

                                <div class="filter-vehicle-model">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse1">
                                                <h3 class="panel-title">
                                                    <a class="accordion-toggle">vehicle <span class="text-head-color">model</span><span class="arrow"><i class="fa fa-angle-down" aria-hidden="true"></i></span></a>
                                                </h3>
                                            </div>
                                            <div id="collapse1" class="panel-collapse collapse in">
                                                <div class="panel-body">
                                                    <div class="vehicle-model-selector">

                                                        <ul class="ulscroll">
                                                            <asp:DataList ID="dlSideBarModel" runat="server">
                                                                <ItemTemplate>

                                                                    <li>
                                                                        <asp:Label ID="lblSideBarModelId" runat="server" Visible="false"
                                                                            Text='<%#Eval("Model_IDPK") %>' />
                                                                        <asp:CheckBox ID="chklstSideBarModel" runat="server" RepeatDirection="Vertical" AutoPostBack="true"
                                                                            Text='<%#Eval("Model_Name") %>' OnCheckedChanged="chklstSideBarModel_CheckedChanged" />

                                                                    </li>

                                                                </ItemTemplate>

                                                            </asp:DataList>
                                                        </ul>
                                                        <div class="click-see-more">
                                                            <a id="click-more-a" href="javascript:void(0)">see more</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ContentTemplate>

                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <div class="filter-type-name">
                                    <div class="panel-group" id="Div1">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse2">
                                                <h3 class="panel-title">
                                                    <a class="accordion-toggle">type <span class="text-head-color">name</span><span class="arrow"><i class="fa fa-angle-down" aria-hidden="true"></i></span></a>
                                                </h3>
                                            </div>
                                            <div id="collapse2" class="panel-collapse collapse in">
                                                <div class="panel-body">
                                                    <div class="type-name-selector">

                                                        <ul>
                                                            <asp:DataList ID="dlSidebarBrand" runat="server">
                                                                <ItemTemplate>

                                                                    <li>
                                                                        <asp:Label ID="lblSideBarBrandId" runat="server" Visible="false"
                                                                            Text='<%#Eval("ProdBrand_IDPK") %>' />
                                                                        <asp:CheckBox ID="chklstSideBarBrand" runat="server" RepeatDirection="Vertical" AutoPostBack="true"
                                                                            Text='<%#Eval("ProdBrand_Name") %>' OnCheckedChanged="chklstSideBarBrand_CheckedChanged" />
                                                                        <%-- <asp:Label ID="lblBrandCnt" runat="server"
                                                                    Text='<%#string.Concat("(",Eval("brand_cnt"),")")%>' />--%>

                                                                    </li>

                                                                </ItemTemplate>
                                                            </asp:DataList>
                                                        </ul>

                                                        <div class="click-see-more">
                                                            <a id="click-more-b" href="javascript:void(0)">see more</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>





                        <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                            <ContentTemplate>
                                <div class="fix-pricing">
                                    <h3>fix <span>pricing</span></h3>
                                    <div style="margin: 10px">
                                        <asp:TextBox ID="min" runat="server" AutoPostBack="true" onkeypress="javascript:return isNumber(event)"
                                            Style="width: 70px; padding-left: 10px; font-size: 12px;" OnTextChanged="min_TextChanged"></asp:TextBox>
                                        <span style="width: 20%; font-size: 15px;">to</span>
                                        <asp:TextBox ID="max" runat="server" AutoPostBack="true" OnTextChanged="max_TextChanged"
                                            onkeypress="javascript:return isNumber(event)" Style="width: 70px; padding-left: 10px; font-size: 12px;"></asp:TextBox>

                                    </div>
                                </div>


                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="min" EventName="TextChanged" />
                                <asp:AsyncPostBackTrigger ControlID="max" EventName="TextChanged" />

                            </Triggers>
                        </asp:UpdatePanel>

                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <div class="filter-type-name">
                                    <div class="panel-group" id="Div2">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse3">
                                                <h3 class="panel-title">
                                                    <a class="accordion-toggle">type <span class="text-head-color">width</span><span class="arrow"><i class="fa fa-angle-down" aria-hidden="true"></i></span></a>
                                                </h3>
                                            </div>
                                            <div id="collapse3" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <div class="type-width-selector">

                                                        <ul>
                                                            <asp:DataList ID="dlSideBarMeas" runat="server">
                                                                <ItemTemplate>

                                                                    <li>
                                                                        <asp:CheckBox ID="chklstSideBarMeas" runat="server" RepeatDirection="Vertical" AutoPostBack="true"
                                                                            Text='<%#Eval("Product_Measurement") %>' OnCheckedChanged="chklstSideBarMeas_CheckedChanged" />
                                                                        <%-- <asp:Label ID="lblPriceCnt" runat="server"
                                                                    Text='<%#string.Concat("(",Eval("measurement_cnt"),")")%>' />--%>

                                                                    </li>

                                                                </ItemTemplate>
                                                            </asp:DataList>
                                                        </ul>

                                                        <div class="click-see-more">
                                                            <a id="click-more-c" href="javascript:void(0)">see more</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                            <ContentTemplate>
                                <div class="filter-type-name">
                                    <div class="panel-group" id="Div3">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse4">
                                                <h3 class="panel-title">
                                                    <a class="accordion-toggle">aspect <span class="text-head-color">ratio</span><span class="arrow"><i class="fa fa-angle-down" aria-hidden="true"></i></span></a>
                                                </h3>
                                            </div>
                                            <div id="collapse4" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <div class="aspect-ratio-selector">
                                                        <ul>
                                                            <asp:DataList ID="dlAspect" runat="server">
                                                                <ItemTemplate>

                                                                    <li>
                                                                        <asp:CheckBox ID="chklstSideBarAspect" runat="server" RepeatDirection="Vertical" AutoPostBack="true"
                                                                            Text='<%#Eval("ProdOtherInfo_Value") %>' OnCheckedChanged="chklstSideBarAspect_CheckedChanged" />
                                                                        <%--    <asp:Label ID="lblPriceCnt" runat="server"
                                                                    Text='<%#string.Concat("(",Eval("aspect_cnt"),")")%>' />--%>
                                                                    </li>


                                                                </ItemTemplate>
                                                            </asp:DataList>
                                                        </ul>
                                                        <div class="click-see-more">
                                                            <a id="click-more-d" href="javascript:void(0)">see more</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                            <ContentTemplate>
                                <div class="filter-type-name">
                                    <div class="panel-group" id="Div4">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse5">
                                                <h3 class="panel-title">
                                                    <a class="accordion-toggle">rim <span class="text-head-color">size</span><span class="arrow"><i class="fa fa-angle-down" aria-hidden="true"></i></span></a>
                                                </h3>
                                            </div>
                                            <div id="collapse5" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <div class="rim-size-selector">
                                                        <ul>
                                                            <asp:DataList ID="dlRimSize" runat="server">
                                                                <ItemTemplate>

                                                                    <li>
                                                                        <asp:CheckBox ID="chklstSideBarRim" runat="server" RepeatDirection="Vertical" AutoPostBack="true"
                                                                            Text='<%#Eval("ProdOtherInfo_Value") %>' OnCheckedChanged="chklstSideBarRim_CheckedChanged" />
                                                                        <%-- <asp:Label ID="lblPriceCnt" runat="server"
                                                                    Text='<%#string.Concat("(",Eval("rim_cnt"),")")%>' />--%>
                                                                    </li>


                                                                </ItemTemplate>
                                                            </asp:DataList>
                                                        </ul>
                                                        <div class="click-see-more">
                                                            <a id="click-more-e" href="javascript:void(0)">see more</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                            <ContentTemplate>
                                <div class="filter-type-name">
                                    <div class="panel-group" id="Div5">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse6">
                                                <h3 class="panel-title">
                                                    <a class="accordion-toggle">load <span class="text-head-color">index</span><span class="arrow"><i class="fa fa-angle-down" aria-hidden="true"></i></span></a>
                                                </h3>
                                            </div>
                                            <div id="collapse6" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <div class="load-index-selector">
                                                        <ul>
                                                            <asp:DataList ID="dlLoadIndex" runat="server">
                                                                <ItemTemplate>

                                                                    <li>
                                                                        <asp:CheckBox ID="chklstSideBarLoad" runat="server" RepeatDirection="Vertical" AutoPostBack="true"
                                                                            Text='<%#Eval("ProdOtherInfo_Value ") %>' OnCheckedChanged="chklstSideBarLoad_CheckedChanged" />
                                                                        <%-- <asp:Label ID="lblPriceCnt" runat="server"
                                                                    Text='<%#string.Concat("(",Eval("load_cnt"),")")%>' />--%>
                                                                    </li>


                                                                </ItemTemplate>
                                                            </asp:DataList>
                                                        </ul>
                                                        <div class="click-see-more">
                                                            <a id="click-more-f" href="javascript:void(0)">see more</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <asp:UpdatePanel ID="upPanel" runat="server">
                    <ContentTemplate>
                        <div class="col-md-10">
                            <div class="showing-results-for">
                                <p><span id="searchtxt" runat="server"></span></p>
                            </div>
                            <div class="sorting-present">
                                <div class="clear-filter" id="dvFilter" runat="server" style="display: none">
                                    <div class="clear-filter-all">

                                        <asp:LinkButton ID="lnkClear" runat="server" Text="Clear All" OnClick="lnkClear_Click"></asp:LinkButton>
                                    </div>
                                    <div class="clear-item-add">
                                        <ul>

                                            <asp:DataList ID="dlFilter" runat="server" RepeatDirection="Horizontal" OnItemCommand="dlFilter_ItemCommand">
                                                <ItemTemplate>
                                                    <li>

                                                        <span>
                                                            <asp:ImageButton ID="imgbtnFilterClose" CssClass="clearall-img" runat="server" ImageUrl="~/images/close-btn.png" CommandName="close" />
                                                        </span>
                                                        <asp:Label ID="lblFilter" runat="server"
                                                            Text='<%# Eval("Filter") %>' />
                                                        <asp:Label ID="lblFilterId" runat="server" Visible="false"
                                                            Text='<%# Eval("FilterId") %>' />

                                                    </li>

                                                </ItemTemplate>


                                            </asp:DataList>
                                        </ul>
                                    </div>
                                </div>
                                <div class="sorting-present">
                                    <h3>sort <span>by</span></h3>
                                    <div class="sorting-present-head">
                                        <ul class="nav nav-pills search-by-brand-nav-a">

                                            <li>
                                                <asp:LinkButton ID="lnkRelevance" runat="server" OnClick="lnkRelevance_Click" Text="relevance"></asp:LinkButton>
                                            </li>

                                            <li>
                                                <asp:LinkButton ID="lnkPopular" runat="server" OnClick="lnkPopular_Click" Text="popular"></asp:LinkButton>
                                            </li>

                                            <li>
                                                <asp:LinkButton ID="lnkLow" runat="server" OnClick="lnkLow_Click" Text="price:low to high"></asp:LinkButton>
                                            </li>


                                            <li>
                                                <asp:LinkButton ID="lnkHigh" runat="server" OnClick="lnkHigh_Click" Text="price:high to low"></asp:LinkButton></li>
                                        </ul>
                                    </div>
                                    <div class="showing-results-data">
                                        <div class="tab-content">
                                            <div id="relevance" class="tab-pane fade in active">
                                                <div class="all-results-view">
                                                    <div class="div-row-fixed">

                                                        <asp:DataList ID="dlProduct" runat="server" RepeatDirection="Horizontal" RepeatColumns="4" OnItemCommand="dlProduct_ItemCommand" OnItemDataBound="dlProduct_ItemDataBound">
                                                            <ItemTemplate>

                                                                <div class="col-md-3" style="width: 100%">
                                                                    <div class="top-seller-add">
                                                                        <div class="top-seller-view  top-margin">
                                                                            <asp:ImageButton ID="imgbtnProdImage" runat="server"
                                                                                ImageUrl='<%# Bind("Product_Image", "~/images/products/{0}") %>' CommandName="details" />
                                                                        </div>
                                                                        <div class="top-seller-about">
                                                                            <div class="top-seller-in">
                                                                                <h3>
                                                                                    <asp:LinkButton ID="lblProdName" runat="server"
                                                                                        Text='<%# Eval("Product_Name") %>' CommandName="details" ForeColor="Black" Style="text-decoration: none" /></h3>
                                                                                <asp:Label ID="lblProdId" runat="server" Visible="false"
                                                                                    Text='<%# Eval("Product_IDPK") %>' />
                                                                                <p>
                                                                                    <asp:LinkButton ID="lnkProdDes" runat="server"
                                                                                        Text='<%# Eval("Product_ShortDesc") %>' CommandName="details" ForeColor="Black" Style="text-decoration: none" />
                                                                                </p>
                                                                            </div>
                                                                            <div class="top-seller-price">
                                                                                <ul>
                                                                                    <li>
                                                                                        <asp:LinkButton ID="lblProdSP" runat="server" ForeColor="Black" Style="text-decoration: none"
                                                                                            Text='<%# string.Concat("Rs."+Eval("ProdPrice_SellingPrice","{0:0}")) %>' CommandName="details" /></li>
                                                                                    <ul class="pull-right cart-list">
                                                                                        <li>

                                                                                            <asp:LinkButton ID="lnkWhishlist" runat="server" CausesValidation="false" CommandName="whishlist">
                                                                                                <i class="fa fa-heart" aria-hidden="true" style="color: #a3a5a6" id="iconWhishlist" runat="server"></i>
                                                                                            </asp:LinkButton>
                                                                                        </li>

                                                                                        <li>

                                                                                            <asp:LinkButton ID="lnkCart" runat="server" ForeColor="Red" CommandName="cart"><i class="fa fa-shopping-cart" aria-hidden="true" style="color: #dd1717"></i></asp:LinkButton>
                                                                                        </li>
                                                                                    </ul>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </ItemTemplate>


                                                        </asp:DataList>

                                                    </div>



                                                </div>
                                               <%-- <div class="search-results-add-more">
                                                    <a href="javascript:void(0);" id="loadMore">Load More Products</a>
                                                </div>--%>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="dlFilter" EventName="ItemCommand" />

                    </Triggers>
                </asp:UpdatePanel>
            </div>

           
        </div>
    </section>

    <section class="alert-wrong" id="dvNoItems" runat="server" visible="false">
		<div class="container">
			<div class="row">
				<div class="alert-window">
					<div class="alert-in">
						<img src="images/alert-window.png">
						<h2>OOPS...</h2>
						<p>Sorry we couldn't find any matches for <span>this result</span></p>
					
						<div class="alert-btn">
							<a href="home">Try again</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


    <section class="learn-more-bg">
        <div class="container">
            <div class="row">
                <div class="how-to-by-tyre">
                    <h2>how to buy tyre and it's information</h2>
                    <a href="#">learn more</a>
                </div>
            </div>
        </div>
    </section>

    <!--login-form and sign up form-->
    <div class="login-signup">
        <div class="modal fade" id="loginmodal" runat="server">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div id="loginform" style="display: block;" runat="server">
                        <div class="modal-header">
                            <%--<button type="button" class="close" data-dismiss="modal">&times;</button>--%>
                            <asp:Button ID="btnclose" runat="server" Text="&times;" OnClick="btnclose_Click" CssClass="close" />
                            <h4 class="modal-title">Login</h4>
                        </div>
                        <div class="modal-body">
                            <asp:Panel ID="Panel1" runat="server" DefaultButton="btnLogin">
                                <div class="form-group">
                                    <%--<input type="email" class="form-control" id="email" placeholder="Enter Email" name="email">--%>
                                    <asp:TextBox ID="txtLoginEmail" runat="server" placeholder="Enter Email"
                                        CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="reqName" ControlToValidate="txtLoginEmail"
                                        ErrorMessage="*" ForeColor="Red" ValidationGroup="Login" />
                                    <asp:RegularExpressionValidator ID="validateEmail"
                                        runat="server" ErrorMessage="Invalid email."
                                        ControlToValidate="txtLoginEmail" ForeColor="Red"
                                        ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="Login"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group password-for">
                                    <%--<input type="password" class="form-control password-length" id="pwd" placeholder="Enter Password" name="pwd">--%>
                                    <asp:TextBox ID="txtLoginPwd" TextMode="Password" runat="server" placeholder="Enter Password" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1"
                                        ControlToValidate="txtLoginPwd" ErrorMessage="*" ForeColor="Red" ValidationGroup="Login" />

                                    <div class="forget-password">
                                        <a href="#" id="forget-password">Forgot?</a>
                                    </div>
                                </div>

                                <div class="submit-login">

                                    <asp:Button ID="btnLogin" runat="server" Text="Submit" CssClass="btn btn-default submit-log-btn"
                                        ValidationGroup="Login" OnClick="btnLogin_Click" CausesValidation="false" />
                                </div>

                                <div class="need-register">

                                    <asp:LinkButton ID="lnkNeedReg" runat="server" Text="Sign Up" OnClick="lnkNeedReg_Click"></asp:LinkButton>
                                </div>
                                <div>
                                    <asp:Label ID="lblLoginmsg" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                                </div>
                            </asp:Panel>
                        </div>

                    </div>
                    <div id="signform" style="display: none" runat="server">
                        <div class="modal-header">
                            <%--<button type="button" class="close" data-dismiss="modal">&times;</button>--%>
                            <asp:Button ID="btnclose1" runat="server" Text="&times;" OnClick="btnclose_Click" CssClass="close" />
                            <h4 class="modal-title">sign up</h4>
                        </div>
                        <div class="modal-body">
                            <asp:Panel ID="Panel2" runat="server" DefaultButton="btnRegister">
                                <div class="form-group">

                                    <%--<input type="email" class="form-control" id="name" placeholder="Enter Name" name="name">--%>
                                    <asp:TextBox ID="txtRegName" runat="server" placeholder="Enter Name"
                                        CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2"
                                        ControlToValidate="txtRegName" ErrorMessage="*" ForeColor="Red" ValidationGroup="Register" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                                        runat="server" ErrorMessage="Invalid name."
                                        ControlToValidate="txtRegName" ForeColor="Red"
                                        ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="Register"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">

                                    <%--<input type="email" class="form-control" id="email1" placeholder="Enter Email" name="email">--%>
                                    <asp:TextBox ID="txtRegEmail" runat="server" placeholder="Enter Email"
                                        CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3"
                                        ControlToValidate="txtRegEmail" ErrorMessage="*" ForeColor="Red" ValidationGroup="Register" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                        runat="server" ErrorMessage="Invalid email."
                                        ControlToValidate="txtRegEmail" ForeColor="Red"
                                        ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="Register"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">

                                    <%--<input type="password" class="form-control" id="Password1" placeholder="Enter Password" name="pwd">--%>
                                    <asp:TextBox ID="txtRegPwd" TextMode="Password" runat="server" placeholder="Enter Password"
                                        CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4"
                                        ControlToValidate="txtRegPwd" ErrorMessage="*" ForeColor="Red" ValidationGroup="Register" />

                                </div>

                                <div class="submit-login">

                                    <asp:Button ID="btnRegister" runat="server" Text="Submit" CssClass="btn btn-default submit-log-btn" ValidationGroup="Register" CausesValidation="false" OnClick="btnRegister_Click" />
                                </div>
                                <div class="already-login">

                                    <asp:LinkButton ID="lnkNeedLogin" runat="server" Text="login" OnClick="lnkNeedLogin_Click"></asp:LinkButton>
                                </div>
                                <div>
                                    <asp:Label ID="lblRegmsg" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                                </div>
                            </asp:Panel>
                        </div>

                    </div>
                    <div id="forgot-form" style="display: none">
                        <div class="modal-header">
                            <asp:Button ID="btnclose2" runat="server" Text="&times;" OnClick="btnclose_Click" CssClass="close" />
                            <h4 class="modal-title">Forgot Password</h4>
                        </div>
                        <div class="modal-body">

                            <asp:Panel ID="Panel3" runat="server" DefaultButton="btnForgot">
                                <div class="form-group">

                                    <%--<input type="email" class="form-control" id="email" placeholder="Enter Email" name="email" />--%>
                                    <asp:TextBox ID="txtForgotEmail" runat="server" placeholder="Enter Email"
                                        CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5"
                                        ControlToValidate="txtForgotEmail" ErrorMessage="*" ForeColor="Red" ValidationGroup="Forgot" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
                                        runat="server" ErrorMessage="Invalid email."
                                        ControlToValidate="txtForgotEmail" ForeColor="Red"
                                        ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="Forgot"></asp:RegularExpressionValidator>
                                </div>


                                <div class="submit-login">
                                    <%--<button type="submit" class="btn btn-default submit-log-btn">Submit</button>--%>
                                    <asp:Button ID="btnForgot" runat="server" CausesValidation="false" Text="Submit" CssClass="btn btn-default submit-log-btn" ValidationGroup="Forgot" />
                                </div>
                            </asp:Panel>

                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- owl-carousel assets -->
    <script src="js/owl.carousel.min.js"></script>

    <script src="js/slider.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#owl-demo").owlCarousel({
                navigation: false, // Show next and prev buttons
                slideSpeed: 300,
                paginationSpeed: 400,
                autoPlay: true,
                loop: true,
                singleItem: true
            });
        });
    </script>


    <script>
        $(function () {

            $("#slider-range").slider({

                range: true,
                min: 0,
                max: 100000,
                values: [0, 100000],
                slide: function (event, ui) {
                    $("#cpMain_MinimumPrice").val(ui.values[0]);
                    $("#cpMain_MaximumPrice").val(ui.values[1]);
                }
            });
            $("#cpMain_MinimumPrice").val($("#slider-range").slider("values", 0));
            $("#cpMain_MaximumPrice").val($("#slider-range").slider("values", 1));

            //Change slider value from textbox 
            $("#cpMain_MinimumPrice").on('change', function () {

                var value = $("#cpMain_MinimumPrice").val();
                console.log(value);
                $("#slider-range").slider('values', 0, value);
            });
            $("#cpMain_MaximumPrice").on('change', function () {

                var value = $("#cpMain_MaximumPrice").val();
                console.log(value);
                $("#slider-range").slider('values', 1, value);
            });
        });
    </script>

    <script>

        function sliderClick() {

            var minprice = document.getElementById("MinimumPrice");
            var maxprice = document.getElementById("MaximumPrice");

            $.ajax({
                type: "POST",
                url: "Catalogue.aspx/GetPrice",

                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    //alert(response.d);
                }
            });

            function OnSuccess(response) {
                //alert(response.d);

                //window.location.reload();
            }

        }
    </script>
    <script>
        $(document).ready(function () {
            function signin() {

                $('#login-form').css({ "display": "none" });
                $('#sign-form').css({ "display": "block" });
                $('#login-id').one("click", login);
            }
            function login() {
                $('#login-form').css({ "display": "block" });
                $('#sign-form').css({ "display": "none" });
                $('#register').one("click", signin);
            }
            $("#register").one("click", signin);
        });
    </script>

</asp:Content>
