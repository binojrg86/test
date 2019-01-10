<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CarCare.HomeTest1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Care Express | Index</title>
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

    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/admincustom.js"></script>
    <script src="js/slider.js"></script>
    <style>
        .renewbutton {
            background: #ed1f24;
            border: none;
            color: #fff;
            width: 130px;
            display: block;
            margin: 0px auto;
            font-size: 14px;
            font-weight: 400;
            padding: 6px 0;
            border-radius: 0px;
            cursor: pointer;
            margin-top: 25px;
            text-transform: uppercase;
        }
    </style>
    <%--  <script>
        function scrollToDiv2() {

            document.getElementById('dvrow2').scrollIntoView();
        }

        function scrollToDiv4() {

            document.getElementById('dvrow4').scrollIntoView();
        }


        function scrollToDiv5() {

            document.getElementById('dvrow5').scrollIntoView();
        }
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" runat="server">
    <asp:ScriptManager ID="scriptmanager" runat="server" EnablePageMethods="true"></asp:ScriptManager>
    <section class="heading-section">
        <div class="container-fluid">
            <div class="row">
                <div class="banner-header">
                    <div class="col-md-12 no-pad">
                        <div id="owl-demo" class="owl-carousel owl-theme">


                            <asp:Repeater ID="rptBanner" runat="server">
                                <ItemTemplate>

                                    <div class="item">
                                        <asp:Image ID="imgBanner" runat="server"
                                            ImageUrl='<%# Bind("Banner_ImageName", "~/images/banner/{0}") %>' />

                                        <div class="content-banner">
                                            <p><%# Eval("Banner_AltText") %></p>
                                            <a href="#">read more</a>
                                        </div>
                                    </div>

                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <!-- side bar-->
                    <div id="slider" style="right: -262px;">
                        <div id="sidebar" onclick="open_panel()">
                            <img src="images/side-slide.png">
                        </div>
                        <div id="header">
                            <h2>Enter Details</h2>
                            <%--  <input class="form-control" type="text" placeholder="Enter Name">
                            <input class="form-control" type="number" placeholder="Enter Phone No">
                            <button type="submit" class="btn btn-default">Submit</button>--%>
                            <asp:TextBox ID="txtRenewname" runat="server" placeholder="Enter Name"></asp:TextBox>
                            <asp:TextBox ID="txtRenewPhone" runat="server" placeholder="Enter Phone No"></asp:TextBox>
                            <asp:Button ID="btnRenew" runat="server" Text="Submit" CssClass="renewbutton" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="auto-care-model">
        <div class="container" id="dvrow2">
            <div class="row">
                <asp:UpdatePanel ID="uptpnlVeh" runat="server">
                    <ContentTemplate>
                        <div class="col-md-5">
                            <div class="vehicle-model">
                                <div class="main-nav-vehicle-model">
                                    <ul class="nav nav-pills nav-justified main-nav-vehicle-model-a">

                                        <li>
                                            <asp:LinkButton ID="lnkVehTab1" runat="server" Text="Tyre" OnClick="lnkVehTab1_Click"></asp:LinkButton></li>
                                        <li>
                                            <asp:LinkButton ID="lnkVehTab2" runat="server" Text="Battery" OnClick="lnkVehTab2_Click"></asp:LinkButton></li>
                                        <li>
                                            <asp:LinkButton ID="lnkVehTab3" runat="server" Text="Alloy Wheel" OnClick="lnkVehTab3_Click"></asp:LinkButton></li>
                                    </ul>

                                </div>
                                <div class="tab-content">
                                    <div id="tyre" class="tab-pane fade in active">
                                        <div class="choose-model">
                                            <h3>choose your vehicle model</h3>
                                            <div class="choose-by-type">
                                                <div class="choose-by-type-model">
                                                    <ul class="nav nav-pills nav-justified choose-by-type-model-a">
                                                        <li class="active"><a data-toggle="pill" id="aCar" runat="server" href="#bycartyre">by car</a></li>
                                                        <li><a data-toggle="pill" id="aBike" runat="server" href="#bytyretyre">by tyre</a></li>
                                                    </ul>
                                                </div>
                                                <div class="tab-content">
                                                    <div id="bycartyre" class="tab-pane fade in active">
                                                        <div class="select-by-option">
                                                            <div class="form-group">

                                                                <asp:DropDownList ID="ddlCarVeh" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlCarVeh_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                                <asp:DropDownList ID="ddlCarVar" runat="server" CssClass="form-control"></asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <div class="where-find">
                                                            <p>
                                                                <img src="images/question-mark.png" alt="">where can i find my vehicle information?
                                                            </p>
                                                        </div>
                                                        <div class="search-button">
                                                            <button class="btn btn-default" type="submit">search</button>
                                                        </div>
                                                        <div class="look-service-click">
                                                            <p>if you are looking for service, please <a href="#">click here</a></p>
                                                        </div>
                                                    </div>
                                                    <div id="bytyretyre" class="tab-pane fade">
                                                        <div class="select-by-option">
                                                            <div class="form-group">

                                                                <asp:DropDownList ID="ddltyrVeh" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddltyrVeh_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                                <asp:DropDownList ID="ddltyrVar" runat="server" CssClass="form-control"></asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <div class="where-find">
                                                            <p>
                                                                <img src="images/question-mark.png" alt="">where can i find my vehicle information?
                                                            </p>
                                                        </div>
                                                        <div class="search-button">
                                                            <button class="btn btn-default" type="submit">search</button>
                                                        </div>
                                                        <div class="look-service-click">
                                                            <p>if you are looking for service, please <a href="#">click here</a></p>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="uptpnlBrand" runat="server">
                    <ContentTemplate>
                        <div class="col-md-7">
                            <div class="search-by-brand">
                                <h2>search <span>by brand</span></h2>
                            </div>
                            <div class="search-by-brand-nav">

                                <ul class="nav nav-pills search-by-brand-nav-a">


                                    <li>
                                        <asp:LinkButton ID="lnkTab1" runat="server" Text="tyre brands" OnClick="lnkTab1_Click"></asp:LinkButton></li>
                                    <li>
                                        <asp:LinkButton ID="lnkTab2" runat="server" Text="car brands" OnClick="lnkTab2_Click"></asp:LinkButton></li>
                                    <li>
                                        <asp:LinkButton ID="lnkTab3" runat="server" Text="wheel alloy" OnClick="lnkTab3_Click"></asp:LinkButton></li>
                                    <li>
                                        <asp:LinkButton ID="lnkTab4" runat="server" Text="batteries" OnClick="lnkTab4_Click"></asp:LinkButton></li>
                                </ul>

                            </div>
                            <div class="tab-content">
                                <div id="tyre-brand" class="tab-pane fade in active">


                                    <div class="brand-img" id="dvRptBrand" runat="server">
                                        <asp:Repeater ID="rptBrand" runat="server">
                                            <ItemTemplate>
                                                <div class="col-md-4 no-right-pad">
                                                    <div class="brand-logo-img">
                                                        <asp:ImageButton ID="imgBrand" runat="server"
                                                            ImageUrl='<%# "images/brand/" + Eval("ProdBrand_Thumb")%>' />
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="top-sellers">
                    <h2>top <span>sellers</span></h2>
                </div>
                <div class="top-sellers-select">

                    <%--  <div class="top-seller-view  top-margin">
                                <img src="images/products/top-sell-tyre.png" alt="" />
                            </div>
                            <div class="top-seller-about">
                                <h3>b290 general-205/55</h3>
                                <p>well balanced all-round performer know for its excellent wet performance without sacrificing dry per..</p>
                                <div class="top-seller-price">
                                    <ul>
                                        <li>Rs.5,5750.00</li>
                                        <ul class="pull-right cart-list">
                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </ul>
                                </div>
                            </div>--%>

                    <asp:DataList ID="dlTopSeller" runat="server" RepeatDirection="Horizontal" ItemStyle-CssClass="dlTopSeller" OnItemCommand="dlTopSeller_ItemCommand">
                        <ItemTemplate>
                            <div class="col-md-3" style="width: 100%">
                                <div class="top-seller-add">
                                    <div class="top-seller-view  top-margin">
                                        <asp:ImageButton ID="imgTopSeller" runat="server"
                                            ImageUrl='<%# Bind("Product_Image", "~/images/products/top-seller/{0}") %>' CommandName="details" />
                                        <asp:Label ID="lblProdId" runat="server" Visible="false"
                                            Text='<%# Eval("Featured_ProdIDFK") %>' />
                                    </div>
                                    <div class="top-seller-about">
                                        <div class="top-seller-about-con">
                                            <h3>
                                                <asp:LinkButton ID="lblProdName" runat="server"
                                                    Text='<%# Eval("Product_Name") %>' CommandName="details" ForeColor="Black" Style="text-decoration: none" /></h3>
                                            <asp:Label ID="Label1" runat="server" Visible="false"
                                                Text='<%# Eval("Featured_ProdIDFK") %>' />
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
                                                        <asp:LinkButton ID="lnkWhishlist" runat="server" CommandName="whishlist"><i class="fa fa-heart" aria-hidden="true"></i></asp:LinkButton>
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

                    <%--  <div class="col-md-3">
                        <div class="top-seller-add">
                            <div class="top-seller-view  top-margin">
                                <img src="images/top-sell-tyre2.png" alt="" />
                            </div>
                            <div class="top-seller-about">
                                <h3>turanza ar20 145/70</h3>
                                <p>well balanced all-round performer know for its excellent wet performance without sacrificing dry per..</p>
                                <div class="top-seller-price">
                                    <ul>
                                        <li>Rs.5,5750.00</li>
                                        <ul class="pull-right cart-list">
                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="top-seller-add">
                            <div class="top-seller-view top-margin">
                                <img src="images/top-sell-rim.png" alt="" />
                            </div>
                            <div class="top-seller-about">
                                <h3>manta-a205</h3>
                                <p>well balanced all-round performer know for its excellent wet performance without sacrificing dry per..</p>
                                <div class="top-seller-price">
                                    <ul>
                                        <li>Rs.5,5750.00</li>
                                        <ul class="pull-right cart-list">
                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="top-seller-add">
                            <div class="top-seller-view  top-margin">
                                <img src="images/top-sell-battery.png" alt="" />
                            </div>
                            <div class="top-seller-about">
                                <h3>tata green 65d26r</h3>
                                <p>well balanced all-round performer know for its excellent wet performance without sacrificing dry per..</p>
                                <div class="top-seller-price">
                                    <ul>
                                        <li>Rs.5,5750.00</li>
                                        <ul class="pull-right cart-list">
                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container" id="dvrow4">
            <div class="row">
                <div class="service-offered">
                    <h2>service <span>offered</span></h2>
                </div>
            </div>
        </div>

        <div class="service-offered-full">
            <div class="container">
                <div class="row">
                    <asp:UpdatePanel ID="uptpnlService" runat="server">
                        <ContentTemplate>
                            <div class="col-md-4">
                                <div class="service-offered-head">

                                    <ul class="nav nav-pills service-offered-head-a">

                                        <asp:Repeater ID="rptServiceCat" runat="server" OnItemCommand="rptServiceCat_ItemCommand" OnItemDataBound="rptServiceCat_ItemDataBound">
                                            <ItemTemplate>
                                                <li>
                                                    <div id="spanservice" runat="server"></div>
                                                    <asp:LinkButton ID="lnkServiceTab" runat="server" Text='<%# Eval("ProdCategory_Name") %>'></asp:LinkButton>
                                                </li>

                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>

                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="col-md-8">

                        <div class="tab-content">
                            <div id="maintain-service" class="tab-pane fade in active">


                                <asp:Repeater ID="rptServiceVal" runat="server">
                                    <ItemTemplate>
                                        <div class="detail-services">
                                            <div class="col-md-7">

                                                <asp:ImageButton ID="imgService" runat="server" Width="100%"
                                                    ImageUrl='<%# "images/" + Eval("ProdCategory_Thumb")%>' />
                                            </div>
                                            <div class="col-md-5">
                                                <div class="detail-service-para">
                                                    <p>
                                                        Preventive maintenance is a schedule of planned maintenance actions aimed at the prevention of 
											breakdowns and failures and can do as a car owner to keep your ride happy and save money on repairs 
											in the future. PMS is an important service to optimize the performance, reliability, safety, durability 
											and resale value of the car. PMS show that it costs less as to maintain the car than to repair it
                                                    </p>
                                                    <p>
                                                        As per PMS of the car, MFCS offers PMS Service for your car to keep the car in fit and healthy condition 
											to avoid the breakdown and failures in future. MFCS have trained technicians who can perform all of your car 
											maintenance and repairs. Multi-Point Inspections are performed by trained technicians with MFCS will provide
											you the detailed report of your car conditions.
                                                    </p>
                                                </div>
                                                <div class="detail-service-book">
                                                    <a href="#" class="book-service-offer">book now</a>
                                                    <a href="#" class="read-more-offer">read more</a>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>

                        </div>
                        <div class="col-md-12">
                            <div class="service-slider">
                                <div id="owl-demo3" class="owl-carousel owl-theme">
                                    <div class="item">
                                        <img src="images/service-slide1.png" alt="">
                                    </div>
                                    <div class="item">
                                        <img src="images/service-slide2.png" alt="">
                                    </div>
                                    <div class="item">
                                        <img src="images/service-slide3.png" alt="">
                                    </div>
                                    <div class="item">
                                        <img src="images/service-slide1.png" alt="">
                                    </div>
                                    <div class="item">
                                        <img src="images/service-slide2.png" alt="">
                                    </div>
                                    <div class="item">
                                        <img src="images/service-slide3.png" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>

    <section>
        <div class="container" id="dvrow5">
            <div class="row">
                <div class="free-appointment">
                    <h2>free  <span>appointment</span></h2>
                </div>
            </div>
        </div>
        <div class="appointment-form">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-left-basic">
                            <form>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-user"></span>
                                        </span>
                                        <%--<input type="text" class="form-control" placeholder="Your name**">--%>
                                        <asp:TextBox ID="txtApptname" runat="server" CssClass="form-control" placeholder="Your name**"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rqFirstName" runat="server" SetFocusOnError="true" Display="Dynamic"
                                            ControlToValidate="txtApptname" ValidationGroup="ApptDetails"></asp:RequiredFieldValidator>

                                        <asp:RegularExpressionValidator ID="regvName" runat="server" ValidationGroup="ApptDetails"
                                            Display="Dynamic" ForeColor="Red"
                                            ControlToValidate="txtApptname" ErrorMessage="Not valid!"
                                            ValidationExpression="^[a-zA-Z'.\s]{1,50}">
                                        </asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-phone"></span>
                                        </span>
                                        <%--<input type="number" class="form-control" placeholder="Mobile Number**">--%>
                                        <asp:TextBox ID="txtApptPhone" runat="server" CssClass="form-control" placeholder="Mobile Number**"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" SetFocusOnError="true" Display="Dynamic"
                                            ControlToValidate="txtApptPhone" ValidationGroup="ApptDetails"></asp:RequiredFieldValidator>

                                        <asp:RegularExpressionValidator ID="regvLName" runat="server" ValidationGroup="ApptDetails"
                                            Display="Dynamic" ForeColor="Red"
                                            ControlToValidate="txtApptPhone" ErrorMessage="Not valid!"
                                            ValidationExpression="[0-9]{10}">
                                        </asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-envelope"></span>
                                        </span>
                                        <%--<input type="email" class="form-control" placeholder="Email Address**">--%>
                                        <asp:TextBox ID="txtApptEmail" runat="server" CssClass="form-control" placeholder="Email Address**"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" SetFocusOnError="true" Display="Dynamic"
                                            ControlToValidate="txtApptEmail" ValidationGroup="ApptDetails"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="rgEmail"
                                            runat="server" ErrorMessage="Not valid!"
                                            ControlToValidate="txtApptEmail" ValidationGroup="ApptDetails"
                                            Display="Dynamic" ForeColor="Red"
                                            ValidationExpression="^[a-zA-Z][a-zA-Z|0-9|]*([_])*([_][a-zA-Z|0-9]+)*([.][a-zA-Z|0-9]+([_][a-zA-Z|0-9]+)*)*@(?:[a-zA-Z-]+\.)+[a-zA-Z]{2,7}$">
                                        </asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-map-marker"></span>
                                        </span>
                                        <asp:DropDownList ID="ddlApptLocation" runat="server" CssClass="form-control">
                                            <asp:ListItem>Select Location**</asp:ListItem>
                                            <asp:ListItem>Bangalore</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlApptLocation"
                                            SetFocusOnError="true" InitialValue="Select Location**" ValidationGroup="ApptDetails"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-list-alt comments-icon"></span>
                                        </span>
                                        <%--<textarea class="form-control" rows="5" placeholder="Comments (optional)"></textarea>--%>
                                        <asp:TextBox ID="txtApptComment" TextMode="MultiLine" runat="server" CssClass="form-control" placeholder="Comments (optional)"></asp:TextBox>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-for-category">
                            <h2>select category</h2>

                            <asp:UpdatePanel ID="upPanelAppt" runat="server">
                                <ContentTemplate>
                                    <div class="form-group check-category">
                                        <%--<label><input type="radio" name="indvi">individual</label>
								<label><input type="radio" name="indvi">corporate</label>--%>
                                        <asp:RadioButtonList ID="rdbtncategory" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Selected>individual</asp:ListItem>
                                            <asp:ListItem>corporate</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group select-vehicle-input">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-stop"></span>
                                                </span>
                                                <%--<select class="form-control">
												<option>Select Vehicle**</option>
											</select>--%>
                                                <asp:DropDownList ID="ddlApptVehicle" runat="server" CssClass="form-control"></asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlApptVehicle"
                                                    SetFocusOnError="true" InitialValue="Select Vehicle**" ValidationGroup="ApptDetails"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-stop"></span>
                                                </span>
                                                <%--<input type="text" class="form-control" placeholder="Vehicle registeration number**">--%>
                                                <asp:TextBox ID="txtApptRegno" runat="server" CssClass="form-control" placeholder="Vehicle registeration number**"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" SetFocusOnError="true"
                                                    ControlToValidate="txtApptRegno" ValidationGroup="ApptDetails"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class='input-group time' id='datetimepicker3'>
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                                </span>
                                                <%--<input type='text' class="form-control" placeholder="00:00:00**"/>--%>
                                                <asp:TextBox ID="txtApptTime" runat="server" CssClass="form-control" placeholder="00:00:00**"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" SetFocusOnError="true"
                                                    ControlToValidate="txtApptTime" ValidationGroup="ApptDetails"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class='input-group date' id='datetimepicker2'>
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                                <%--<input type='text' class="form-control" placeholder="mm/dd/yy**"/>--%>
                                                <asp:TextBox ID="txtApptDate" runat="server" CssClass="form-control" placeholder="mm/dd/yy**"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" SetFocusOnError="true"
                                                    ControlToValidate="txtApptDate" ValidationGroup="ApptDetails"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-stop"></span>
                                                </span>
                                                <%--<input type='text' class="form-control" placeholder="brand**">--%>
                                                <asp:TextBox ID="txtApptBrand" runat="server" CssClass="form-control" placeholder="brand**"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" SetFocusOnError="true"
                                                    ControlToValidate="txtApptBrand" ValidationGroup="ApptDetails"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-stop"></span>
                                                </span>
                                                <%--<input type='text' class="form-control" placeholder="model**">--%>
                                                <asp:TextBox ID="txtApptModel" runat="server" CssClass="form-control" placeholder="model**"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" SetFocusOnError="true"
                                                    ControlToValidate="txtApptModel" ValidationGroup="ApptDetails"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon repair-service-icon">
                                                    <span>
                                                        <img src="images/repairing-service.png"></span>
                                                </span>
                                                <%--<select class="form-control">
												<option>Service Category**</option>
											</select>	--%>
                                                <asp:DropDownList ID="ddlApptCategory" runat="server" CssClass="form-control">
                                                    <asp:ListItem>Service Category**</asp:ListItem>
                                                    <asp:ListItem>Wash and Degreasing</asp:ListItem>
                                                    <asp:ListItem>Tar and hardwater deposit removal</asp:ListItem>
                                                    <asp:ListItem>Paint polishing</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlApptCategory"
                                                    SetFocusOnError="true" InitialValue="Select Category**" ValidationGroup="ApptDetails"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <%--	<button type="submit" class="btn btn-default">Book Now</button>--%>
                                        <asp:Button ID="btnApptSubmit" runat="server" Text="Book Now" ValidationGroup="ApptDetails" CssClass="book-now" OnClick="btnApptSubmit_Click" />
                                    </div>
                                    <div class="col-md-12">
                                        <asp:Label ID="lblMsg" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="our-testimoials">
                    <h2>our  <span>testimoials</span></h2>
                </div>
            </div>
        </div>
        <div class="testimoials-slider">
            <div class="container">
                <div class="row">
                    <div class="testimoials-img">
                        <div id="owl-demo2" class="owl-carousel owl-theme">
                            <div class="item">
                                <img src="images/testimonials-1.jpg" alt="">
                                <div class="testimoials-content">
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"</p>
                                </div>
                            </div>
                            <div class="item">
                                <img src="images/testimonials-1.jpg" alt="">
                                <div class="testimoials-content">
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"</p>
                                </div>
                            </div>
                            <div class="item">
                                <img src="images/testimonials-1.jpg" alt="">
                                <div class="testimoials-content">
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- owl-carousel assets -->
    <script src="js/owl.carousel.min.js"></script>

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
    <script type="text/javascript">
        $(document).ready(function () {
            $("#owl-demo2").owlCarousel({
                navigation: false, // Show next and prev buttons
                slideSpeed: 300,
                paginationSpeed: 400,
                autoPlay: true,
                loop: true,
                singleItem: true
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#owl-demo3").owlCarousel({
                items: 3,
                navigation: true, // Show next and prev buttons
                slideSpeed: 300,
                paginationSpeed: 400,
                pagination: false,
                autoPlay: true,
                loop: true,
                singleItem: false,
                navigationText: ["<i class='fa fa-caret-left' aria-hidden='true'></i>", "<i class='fa fa-caret-right' aria-hidden='true'></i>"]
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $('#datetimepicker3').datetimepicker({
                format: 'LT'
            });
        });
    </script>
    <script src="js/moment.js"></script>
    <script src="js/jquery-datetimepicker.js"></script>
    <script>
        $(function () {
            var bindDatePicker = function () {
                $(".date").datetimepicker({
                    format: 'YYYY-MM-DD',
                    icons: {
                        time: "fa fa-clock-o",
                        date: "fa fa-calendar",
                        up: "fa fa-arrow-up",
                        down: "fa fa-arrow-down"
                    }
                }).find('input:first').on("blur", function () {
                    // check if the date is correct. We can accept dd-mm-yyyy and yyyy-mm-dd.
                    // update the format if it's yyyy-mm-dd
                    var date = parseDate($(this).val());

                    if (!isValidDate(date)) {
                        //create date based on momentjs (we have that)
                        date = moment().format('YYYY-MM-DD');
                    }

                    $(this).val(date);
                });
            }

            var isValidDate = function (value, format) {
                format = format || false;
                // lets parse the date to the best of our knowledge
                if (format) {
                    value = parseDate(value);
                }

                var timestamp = Date.parse(value);

                return isNaN(timestamp) == false;
            }

            var parseDate = function (value) {
                var m = value.match(/^(\d{1,2})(\/|-)?(\d{1,2})(\/|-)?(\d{4})$/);
                if (m)
                    value = m[5] + '-' + ("00" + m[3]).slice(-2) + '-' + ("00" + m[1]).slice(-2);

                return value;
            }

            bindDatePicker();
        });
    </script>

    <script>
        function tabclick(tab) {
            debugger
            var obj = {};
            obj.tab = tab.innerText;

            $.ajax({
                type: "POST",
                url: "Home.aspx/TabClick",
                data: "{tab: '" + tab + "' }",
                contentType:
                "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {

                }
            });

        }
    </script>
</asp:Content>
