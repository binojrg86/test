<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="CarCare.Details" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Care Express | Details</title>
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
    <link href="css/etalage.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <!-- jquery -->
    <script src="js/jquery.min.js"></script>
    <script src="js/custom.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
      <script src="js/jquery-ui.min.js"></script>
    <style>
        .similar-Prod {
            width: 25%;
            padding-right: 15px;
        }

        .rating {
            padding-bottom: 10px;
        }

        .Star {
            background-image: url(images/grey-star.gif);
            height: 17px;
            width: 17px;
        }

        .WaitingStar {
            background-image: url(images/WaitingStar.gif);
            height: 17px;
            width: 17px;
        }

        .FilledStar {
            background-image: url(images/colored-star.gif);
            height: 17px;
            width: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" runat="server">
    <asp:ScriptManager ID="scriptmanager" runat="server"></asp:ScriptManager>

    <section class="tyre-product-head">
        <div class="container">
            <div class="row">
                <div class="tyre-product-heading">
                    <ul>
                        <li>
                            <asp:LinkButton ID="breadscrum_Cat" runat="server" OnClick="breadscrum_Cat_Click"></asp:LinkButton>
                        </li>
                        <li id="breadscrum_Prod" runat="server" style="color: #797979"></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="tyre-product-description">
        <div class="container">
            <div class="row">
                <div class="col-md-5">

                    <asp:Repeater ID="dlImageSlide" runat="server">
                        <HeaderTemplate>
                            <ul id="etalage">
                        </HeaderTemplate>
                        <ItemTemplate>
                            <li>
                                <asp:Image ID="imgthumb" runat="server" CssClass="etalage_thumb_image"
                                    ImageUrl='<%# Bind("ProdImage_ImageName", "~/images/details/{0}") %>' />

                                <asp:Image ID="imgrc" runat="server" CssClass="etalage_source_image"
                                    ImageUrl='<%# Bind("ProdImage_ImageName", "~/images/details/{0}") %>' />
                            </li>
                        </ItemTemplate>
                        <FooterTemplate>
                            </ul>
                        </FooterTemplate>
                    </asp:Repeater>

                    <%--<ul id="etalage">
                        <asp:DataList ID="dlImageSlide" runat="server" RepeatDirection="Horizontal">
                            <ItemTemplate>

                                <li>
                                    <asp:Image ID="imgthumb" runat="server" CssClass="etalage_thumb_image"
                                        ImageUrl='<%# Bind("ProdImage_ImageName", "~/images/details/{0}")%>' />

                                    <asp:Image ID="imgrc" runat="server" CssClass="etalage_source_image"
                                        ImageUrl='<%# Bind("ProdImage_ImageName", "~/images/details/{0}")%>' />
                                </li>

                            </ItemTemplate>
                        </asp:DataList>


                    </ul>--%>
                    <div class="product-buttons">
                        <div class="product-buy-now">
                            <%--<a href="#" class="buy-now-pro">buy now</a>--%>

                            <asp:LinkButton ID="btnBuyNow" runat="server" CssClass="buy-now-pro" Text="buy now"></asp:LinkButton>
                        </div>
                        <div class="product-add-cart">
                            <%--<a href="#" class="add-cart-pro">add cart</a>--%>
                            <asp:LinkButton ID="btnAddCart" OnClick="btnAddCart_Click" runat="server" CssClass="add-cart-pro" Text="add cart"></asp:LinkButton>
                        </div>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="tyre-product-info">
                        <h4 id="prodName" runat="server"></h4>
                    </div>
                    <div class="tyre-product-rates">
                        <p>
                            <span class="org-rate" id="prodSP" runat="server"></span><span class="old-rate" id="prodMRP" runat="server"></span>
                            <span class="star-review" id="prodRating" runat="server"></span><span class="over-rate-view" id="prodratingSum" runat="server"></span>
                            <span class="over-rate-view">& </span><span class="over-rate-view">6 reviews</span>

                            <asp:LinkButton ID="lnkWhishlist" runat="server" CausesValidation="false" OnClick="lnkWhishlist_Click1">
                                                <i class="fa fa-heart" aria-hidden="true" style="color:#a3a5a6" id="iconWhishlist" runat="server"></i></asp:LinkButton>
                            <%--  <asp:CheckBox ID="chkWhishlist" runat="server" CssClass="checkbox-wishlist" OnCheckedChanged="chkWhishlist_CheckedChanged"/>
                            <asp:LinkButton ID="lnkWhishlist" runat="server" OnClick="lnkWhishlist_Click" CssClass="browse-tile-add-to-wishlist fa fa-heart"></asp:LinkButton>--%>
                        </p>
                        <asp:LinkButton ID="lnkReviewpopup" CausesValidation="false" runat="server" CssClass="write-review-pro" Text="Write review product" OnClick="lnkReviewpopup_Click"></asp:LinkButton>
                    </div>
                    <div class="tyre-product-pincode">

                        <asp:TextBox ID="txtPincode" runat="server" MaxLength="6" CssClass="pincode-enter form-control" placeholder="enter delivery pincode">
                        </asp:TextBox>
                        <asp:Button ID="btnPincode" runat="server" CssClass="btn" Text="verify" OnClick="btnPincode_Click" />
                        <br />
                        <asp:Label ID="lblPincode" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                    </div>
                    <div class="delivered-info">
                        <p id="delivery" runat="server"></p>
                        <p id="charges" runat="server" visible="false"></p>
                    </div>
                    <div class="features-info">
                        <h4>features</h4>
                        <div class="features-info-category">
                            <ul>
                                <li id="liRim" runat="server"></li>
                                <li id="liConstruction" runat="server"></li>
                                <li id="liLoad" runat="server"></li>
                                <li id="liSet" runat="server"></li>
                                <li id="liSpeed" runat="server"></li>
                            </ul>
                        </div>
                        <div class="warranty-feature">
                            <ul>
                                <li id="liWarranty" runat="server"><span>&#9679;</span></li>
                                <li id="liCOD" runat="server"><span></span>cash on delivery is available</li>
                            </ul>
                        </div>
                    </div>
                    <div class="note-refer">
                        <p><span>note : </span>Refer the Size Specification Before Your Purchase, as it Varies by Vehicle</p>
                    </div>
                    <div class="specification">
                        <h4>specification</h4>
                        <div class="general-specification">
                            <h5>general</h5>
                            <div class="general-specification-line">
                                <div class="col-md-3">
                                    <div class="heading-specification">
                                        <p>model name</p>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="content-specification">
                                        <p id="modelName" runat="server"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="general-specification-line">
                                <div class="col-md-3">
                                    <div class="heading-specification">
                                        <p>vehicle brand</p>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="content-specification">
                                        <p id="vehicleBrand" runat="server"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="general-specification-line">
                                <div class="col-md-3">
                                    <div class="heading-specification">
                                        <p>vehicle model name</p>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="content-specification">
                                        <p id="vehiclemodel" runat="server">
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="general-specification-line">
                                <div class="col-md-3">
                                    <div class="heading-specification">
                                        <p>construction type</p>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="content-specification">
                                        <p id="construction" runat="server"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="general-specification-line">
                                <div class="col-md-3">
                                    <div class="heading-specification">
                                        <p>speed index</p>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="content-specification">
                                        <p id="speed" runat="server"></p>
                                    </div>
                                </div>
                            </div>

                            <div class="specification-hidden-more">
                                <div class="general-specification-line">
                                    <div class="col-md-3">
                                        <div class="heading-specification">
                                            <p>material</p>
                                        </div>
                                    </div>
                                    <div class="col-md-9">
                                        <div class="content-specification">
                                            <p id="material" runat="server"></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="general-specification-line">
                                    <div class="col-md-3">
                                        <div class="heading-specification">
                                            <p>Sales Package</p>
                                        </div>
                                    </div>
                                    <div class="col-md-9">
                                        <div class="content-specification">
                                            <p id="salesPackage" runat="server"></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="general-specification-line">
                                    <div class="col-md-3">
                                        <div class="heading-specification">
                                            <p>width</p>
                                        </div>
                                    </div>
                                    <div class="col-md-9">
                                        <div class="content-specification">
                                            <p id="width" runat="server"></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="general-specification-line">
                                    <div class="col-md-3">
                                        <div class="heading-specification">
                                            <p>weight</p>
                                        </div>
                                    </div>
                                    <div class="col-md-9">
                                        <div class="content-specification">
                                            <p id="weight" runat="server"></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="specification-read-more">
                                <div class="col-md-12">
                                    <a class="read-more" href="javascript:void(0)">read more</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="user-all-reviews">
                         <div class="user-all-reviews-header">
<h4>Ratings & Reviews</h4>
</div>
                        <div class="col-md-2 no-right-pad">
                            <div class="star-overall-point">
                                <p><span id="avgRating" runat="server"></span><span>★</span></p>
                            </div>
                        </div>
                        <div class="col-md-5 no-left-pad">
                            <div class="user-review-bar">
                                <div class="user-five-star">
                                    <div class="col-md-2">
                                        <div class="user-five-star-no">
                                            <p><span>5</span><span>★</span></p>
                                        </div>
                                    </div>
                                    <div class="col-md-7 user-bar-rev">
                                        <div class="user-bar-review-1">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <p id="ratingCnt5" runat="server"></p>
                                    </div>
                                </div>
                                <div class="user-five-star">
                                    <div class="col-md-2">
                                        <div class="user-five-star-no">
                                            <p><span>4</span><span>★</span></p>
                                        </div>
                                    </div>
                                    <div class="col-md-7 user-bar-rev">
                                        <div class="user-bar-review-2">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <p id="ratingCnt4" runat="server"></p>
                                    </div>
                                </div>
                                <div class="user-five-star">
                                    <div class="col-md-2">
                                        <div class="user-five-star-no">
                                            <p><span>3</span><span>★</span></p>
                                        </div>
                                    </div>
                                    <div class="col-md-7 user-bar-rev">
                                        <div class="user-bar-review-3">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <p id="ratingCnt3" runat="server"></p>
                                    </div>
                                </div>
                                <div class="user-five-star">
                                    <div class="col-md-2">
                                        <div class="user-five-star-no">
                                            <p><span>2</span><span>★</span></p>
                                        </div>
                                    </div>
                                    <div class="col-md-7 user-bar-rev">
                                        <div class="user-bar-review-4">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <p id="ratingCnt2" runat="server"></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5">
                            <div class="review-product-details">
                                <%--<a href="#" data-toggle="modal" data-target="#myModal">write review product</a>--%>
                            </div>
                            <div class="review-enter-details">

                                <div class="modal fade" id="myModal" role="dialog" runat="server">
                                    <div class="modal-dialog">

                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <%--<button type="button" class="close" data-dismiss="modal">&times;</button>--%>
                                                <asp:Button ID="btnclose" runat="server" Text="&times;" OnClick="btnReviewClose_Click" CssClass="close" />
                                                <h4 class="modal-title">Review Product</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="rate product">
                                                    <p>Rate Product</p>
                                                    <asp:Rating ID="Rating1" runat="server"
                                                        StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
                                                        FilledStarCssClass="FilledStar">
                                                    </asp:Rating>
                                                </div>
                                                <div style="padding-left: 15px">
                                                    <asp:Label ID="lblmsg" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                                                </div>
                                                <%--<div class="stars starrr" data-rating="0" id="dvReviewRating" runat="server"></div>--%>


                                                <div class="subject-review">
                                                    <label for="subject">Subject:</label>
                                                    <%--<input type="text" class="form-control"></input>--%>
                                                    <asp:TextBox ID="txtReviewSub" runat="server" CssClass="form-control"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ID="reqName" ControlToValidate="txtReviewSub" ErrorMessage="*" ForeColor="Red" ValidationGroup="Review" />
                                                </div>
                                                <div class="comment-products">
                                                    <label for="comment">Comment:</label>
                                                    <%--<textarea class="form-control" rows="5" id="comment"></textarea>--%>
                                                    <asp:TextBox ID="txtReviewComment" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txtReviewComment" ErrorMessage="*" ForeColor="Red" ValidationGroup="Review" />
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <%--<button type="button" class="review-submit">submit</button>--%>
                                                <asp:Button ID="btnReviewSubmit" runat="server" Text="submit" OnClick="btnReviewSubmit_Click" CssClass="review-submit" ValidationGroup="Review" />
                                                <%--<button type="button" class="close-review" data-dismiss="modal">Close</button>--%>
                                                <asp:Button ID="btnReviewClose" runat="server" Text="close" OnClick="btnReviewClose_Click" CssClass="close-review" />
                                            </div>

                                        </div>

                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                    <div class="user-para-review">
                        <div class="user-para-five-star">
                            <%--   <div class="col-md-1 no-right-pad">
                                <p><span>5</span><span><sup>★</sup></span></p>
                            </div>
                            <div class="col-md-10 no-left-pad">
                                <div class="user-para-gur-review">
                                    <p>Guaranteed product</p>
                                    <p>Product quality is amzing and referred CarCare express tops at care care services.</p>
                                </div>
                            </div>--%>
                            <asp:DataList ID="dlRating" runat="server" ItemStyle-CssClass="rating">
                                <ItemTemplate>

                                    <div class="col-md-1 no-right-pad" style="width: 16%">
                                        <p><span id="spanRating"><%# Eval("ProdReviews_Rating", "{0:0.#}") %></span> <span>★</span></p>
                                    </div>
                                    <div class="col-md-10 no-left-pad">
                                        <div class="user-para-gur-review">
                                            <p id="ratingSubject" runat="server"><%#Eval("ProdReviews_Subject") %> </p>
                                            <p id="ratingBody" runat="server"><%#Eval("ProdReviews_Body") %> </p>
                                            <div class="user-review-name">
                                                <p><span><%#Eval("User_FirstName") %></span> <span><%# DataBinder.Eval(Container.DataItem, "[ProdReviews_PostDate]", "{0:dd MMMM yyyy}")%></span></p>

                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>

                            </asp:DataList>
                        </div>
                        <%--<div class="user-para-five-star">
								<div class="col-md-1  no-right-pad">
									<p><span>4</span><span><sup>★</sup></span></p>
								</div>
								<div class="col-md-10 no-left-pad">
									<div class="user-para-gur-review">
										<p>Good experience</p>
										<p>Preety much happy with the product and service.</p>
									</div>
								</div>
							</div>--%>
                        <div class="user-para-see-all">
                            <div class="col-md-12">
                              
                                <asp:LinkButton ID="lnkViewMore" runat="server" OnClick="lnkViewMore_Click" Text="view all reviews"></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                    <div class="more-info-other">
                        <div id="owl-demo" class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="locate-center">
                                    <div class="more-info-head">
                                        <h3>Locate our service center near you</h3>
                                        <ul>
                                            <li>discounts<span>&#9679;</span></li>
                                            <li>offers<span>&#9679;</span></li>
                                            <li>and more</li>
                                        </ul>
                                        <a href="#">click more</a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="locate-center">
                                    <div class="more-info-head">
                                        <h3>Locate our service center near you</h3>
                                        <ul>
                                            <li>discounts<span>&#9679;</span></li>
                                            <li>offers<span>&#9679;</span></li>
                                            <li>and more</li>
                                        </ul>
                                        <a href="#">click more</a>
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
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="similar-products">
                        <h2>similar <span>products</span></h2>
                    </div>
                </div>
                <div class="col-md-3" style="width: 100%">
                    <asp:DataList ID="dlSimilarProd" runat="server" RepeatDirection="Horizontal" ItemStyle-CssClass="similar-Prod" OnItemCommand="dlSimilarProd_ItemCommand">
                        <ItemTemplate>

                            <div class="tyre-product-more">
                                <div class="tyre-product-more-images">
                                    <asp:ImageButton ID="imgbtnProd" runat="server"
                                        ImageUrl='<%# Bind("ProdImage_ImageName", "~/images/products/{0}") %>' CommandName="details" />
                                </div>
                                <div class="tyre-product-more-con">
                                    <p><%# Eval("Product_Name") %> <span class="star-review"><%# Eval("ProdReviews_Rating") %><span> ★</span></span></p>
                                    <asp:Label ID="lblProdId" runat="server" Visible="false"
                                        Text='<%# Eval("Product_IDPK") %>' />
                                </div>
                                <div class="tyre-product-amt">
                                    <p>
                                        <asp:Label ID="lblProdSP" runat="server" Text='<%# string.Concat("Rs."+Eval("ProdPrice_SellingPrice","{0:0}")) %>'></asp:Label>

                                        <span class="offer-cut" style="text-decoration: line-through;"><%# string.Concat("Rs."+Eval("ProdPrice_MRP","{0:0}")) %></span>
                                        <span class="offer-amt"><%# string.Concat(Eval("ProdPrice_DiscountPercent")+"% OFF") %></span>
                                    </p>
                                </div>
                            </div>

                        </ItemTemplate>

                    </asp:DataList>
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
                            <asp:Button ID="Button1" runat="server" Text="&times;" OnClick="btnclose_Click" CssClass="close" />
                            <h4 class="modal-title">Login</h4>
                        </div>
                        <div class="modal-body">
                            <asp:Panel ID="Panel1" runat="server" DefaultButton="btnLogin">
                                <div class="form-group">
                                    <%--<input type="email" class="form-control" id="email" placeholder="Enter Email" name="email">--%>
                                    <asp:TextBox ID="txtLoginEmail" runat="server" placeholder="Enter Email"
                                        CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="txtLoginEmail"
                                        ErrorMessage="*" ForeColor="Red" ValidationGroup="Login" />
                                    <asp:RegularExpressionValidator ID="validateEmail"
                                        runat="server" ErrorMessage="Invalid email."
                                        ControlToValidate="txtLoginEmail" ForeColor="Red"
                                        ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="Login"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group password-for">
                                    <%--<input type="password" class="form-control password-length" id="pwd" placeholder="Enter Password" name="pwd">--%>
                                    <asp:TextBox ID="txtLoginPwd" TextMode="Password" runat="server" placeholder="Enter Password" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3"
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
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4"
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
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5"
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
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6"
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
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7"
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

    <script src="js/jquery.etalage.min.js"></script>
    <script>
        jQuery(document).ready(function ($) {

            $('#etalage').etalage({
                thumb_image_width: 400,
                thumb_image_height: 400,
                source_image_width: 900,
                source_image_height: 1200,
                show_hint: true,
                click_callback: function (image_anchor, instance_id) {
                    alert('Callback example:\nYou clicked on an image with the anchor: "' + image_anchor + '"\n(in Etalage instance: "' + instance_id + '")');
                }
            });

        });
    </script>

</asp:Content>
