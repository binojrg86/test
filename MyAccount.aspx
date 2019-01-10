<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="CarCare.MyAccount" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Care Express | MyAccount</title>
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
    <script>
        function OpenReturnPopUp() {
            $('#myReturn').fadeIn();
            return false;
        }
    </script>
    <script>
        function CloseReturnPopUp() {
            $('#myReturn').fadeOut();
            return false;
        }
    </script>
    <script>
        function OpenCancelPopUp() {
            $('#myCancel').fadeIn();
            return false;
        }
    </script>
    <script>
        function CloseCancelPopUp() {
            $('#myCancel').fadeOut();
            return false;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" runat="server">
    <asp:ScriptManager ID="scriptmanager" runat="server"></asp:ScriptManager>
    <div id="menu-header"></div>
    <section class="account-personal-info">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="my-account-menu">
                        <div class="my-account-heading">
                            <h3>my account</h3>
                        </div>
                        <div class="my-account-submenu">
                            <div class="account-order-menu">
                                <ul class="nav nav-pills">
                                    <li>
                                        <h4>orders</h4>
                                    </li>
                                    <li id="liMyOrder" runat="server">
                                        <a data-toggle="pill" class="mar-bot" href="#cpMain_myordersinfo">• my orders</a>
                                        <%--<asp:LinkButton ID="lnkOrderInfo" runat="server" OnClick="lnkOrderInfo_Click" Text="• my orders" CssClass="mar-bot"></asp:LinkButton>--%>
                                    </li>
                                    <li class="div-part">
                                        <h4>my stuff</h4>
                                    </li>
                                    <li id="liMyReview" runat="server">
                                        <a data-toggle="pill" href="#cpMain_myreviewrating">• my review and ratings</a>
                                        <%--<asp:LinkButton ID="lnkReview" runat="server" OnClick="lnkReview_Click" Text="• my review and ratings" ></asp:LinkButton>--%>
                                    </li>
                                    <li id="liMyWhish" runat="server">
                                        <a data-toggle="pill" class="mar-bot" href="#cpMain_wishlistinfo">• my wishlist</a>
                                        <%--<asp:LinkButton ID="lnkWhishlist" runat="server" OnClick="lnkWhishlist_Click" Text="• my wishlist"></asp:LinkButton>--%>
                                    </li>
                                    <li class="div-part">
                                        <h4>account settings</h4>
                                    </li>
                                    <li id="liPerInfo" runat="server" class="active">
                                        <a data-toggle="pill" href="#cpMain_personalinfo">• personal information</a>
                                        <%--<asp:LinkButton ID="lnkPersonal" runat="server" OnClick="lnkPersonal_Click" Text="• personal information"></asp:LinkButton>--%>
                                    </li>
                                    <li id="liMyPwd" runat="server">
                                        <a data-toggle="pill" href="#cpMain_passwordinfo">• change password</a>

                                        <%--<asp:LinkButton ID="lnkChangePwd" runat="server" OnClick="lnkChangePwd_Click" Text="• change password"></asp:LinkButton>--%>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="tab-content">
                        <div id="personalinfo" runat="server" class="tab-pane fade in active personal-information-account">
                            <h3>Personal Information</h3>
                            <div class="form-personal-info">
                                <div class="form-group">
                                    <div class="col-md-2 no-pad">
                                        <label for="first-name">first name</label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtfName" runat="server"
                                            CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2"
                                            ControlToValidate="txtfName" ErrorMessage="*" ForeColor="Red" ValidationGroup="Save" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                                            runat="server" ErrorMessage="Invalid name."
                                            ControlToValidate="txtfName" ForeColor="Red"
                                            ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="Save"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-2 no-pad">
                                        <label for="last-name">last name</label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtlName" runat="server"
                                            CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1"
                                            ControlToValidate="txtlName" ErrorMessage="*" ForeColor="Red" ValidationGroup="Save" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                            runat="server" ErrorMessage="Invalid name."
                                            ControlToValidate="txtlName" ForeColor="Red"
                                            ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="Save"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-2 no-pad">
                                        <label for="gen">gender</label>
                                    </div>
                                    <div class="col-md-6">

                                        <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control gender-select">
                                            <%--    <asp:ListItem>select</asp:ListItem>
                                            <asp:ListItem>male</asp:ListItem>
                                             <asp:ListItem>female</asp:ListItem>--%>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlGender" ForeColor="Red"
                                            ErrorMessage="*" InitialValue="select" ValidationGroup="Save"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="save-change-btn">
                                    <div class="col-md-4 col-md-offset-2">
                                        <%--<a href="#" class="save-btn" role="button">save changes</a>--%>
                                        <asp:LinkButton ID="btnSave" runat="server" Text="save changes" CssClass="save-btn" OnClick="btnSave_Click" ValidationGroup="Save" />
                                        <asp:Label ID="lblEditMsg" runat="server" Visible="false"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="passwordinfo" runat="server" class="tab-pane fade personal-information-account">
                            <h3>Change Password</h3>
                            <div class="form-personal-info">
                                <div class="form-group">
                                    <div class="col-md-3 no-pad">
                                        <label for="first-name">old password</label>
                                    </div>
                                    <div class="col-md-6">
                                        <%--<input type="text" class="form-control" id="Text1">--%>
                                        <asp:TextBox ID="txtOldPwd" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3"
                                            ControlToValidate="txtOldPwd" ErrorMessage="*" ForeColor="Red" ValidationGroup="Password" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-3 no-pad">
                                        <label for="last-name">new password</label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtNewPwd" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4"
                                            ControlToValidate="txtNewPwd" ErrorMessage="*" ForeColor="Red" ValidationGroup="Password" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-3 no-pad">
                                        <label for="last-name">retype new password</label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="txtRePwd" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5"
                                            ControlToValidate="txtRePwd" ErrorMessage="*" ForeColor="Red" ValidationGroup="Password" />
                                        <asp:CompareValidator runat="server" ID="cmpNumbers" ControlToValidate="txtRePwd" ControlToCompare="txtNewPwd"
                                            ValidationGroup="Password" ErrorMessage="Not matched!" ForeColor="Red" /><br />
                                    </div>
                                </div>

                                <div class="save-change-btn">
                                    <div class="col-md-4 col-md-offset-3">
                                        <%--<a href="#" class="save-btn" role="button">save changes</a>--%>
                                        <asp:LinkButton ID="lnkPwdSave" runat="server" Text="save changes" CssClass="save-btn" OnClick="lnkPwdSave_Click" ValidationGroup="Password" />
                                        <asp:Label ID="lblPwdMsg" runat="server" Visible="false"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="myordersinfo" runat="server" class="tab-pane fade personal-information-account">
                            <div class="my-oreders-info-in">
                                <div class="my-order-view">

                                    <asp:DataList ID="dlOrder" runat="server" OnItemDataBound="dlOrder_ItemDataBound" OnItemCommand="dlOrder_ItemCommand" Width="100%">
                                        <ItemTemplate>
                                            <div class="my-order-li-count">
                                                <div class="my-orders-lists">
                                                    <div class="my-order-li-head">
                                                        <h4>
                                                            <asp:LinkButton ID="lblOrderId" runat="server" Text='<%# Eval("Order_IDPK") %>' ForeColor="White" CommandName="Track">

                                                            </asp:LinkButton>
                                                            <asp:Label ID="lblStatusId" runat="server" Text='<%# Eval("Order_StatusIDFK") %>' Visible="false"></asp:Label>
                                                            <asp:Label ID="lblTotal" runat="server" Text='<%# Eval("Order_Grandtotal") %>' Visible="false"></asp:Label>
                                                            <asp:Label ID="lblDate" runat="server" Text='<%# DateTime.Parse(Eval("Order_Date").ToString()).ToString("dddd, dd MMMM yyyy")%>' Visible="false">
                                                            </asp:Label>
                                                        </h4>
                                                        <div class="my-order-make">
                                                            <div class="my-order-cancel-re">

                                                                <asp:LinkButton ID="lnkOrdrReturn" runat="server" Text="Return" CommandName="OrderReturn" Visible="false"></asp:LinkButton>
                                                                <asp:LinkButton ID="lnkOrdrCancel" runat="server" Text="Cancel" CommandName="OrderCancel" Visible="false"></asp:LinkButton>
                                                            </div>
                                                            <div class="my-order-track-re">
                                                                <asp:LinkButton ID="lnkTrack" runat="server" Text="Track" CommandName="Track">
                                                         <i class="fa fa-map-marker" aria-hidden="true"> Track</i> 
                                                                </asp:LinkButton>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="my-order-pricing-td">
                                                    <div class="table-responsive" style="float: left; width: 100%">
                                                        <table class="table">
                                                            <thead>
                                                                <tr>
                                                                     <th style="width:33.3%;">Items</th>
                                                                    <th style="width:18.3%;">Subtotal</th>
                                                                    <th style="width:48.3%;">Status</th>
                                                                </tr>
                                                            </thead>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div class="my-order-view-list">

                                                    <asp:DataList ID="dlOrderItems" runat="server" OnItemDataBound="dlOrderItems_ItemDataBound" Width="100%">

                                                        <ItemTemplate>

                                                            <tbody>
                                                                <tr>
                                                                    <td style="width:33.3%;vertical-align: top;">
                                                                        <asp:Image ID="imgProduct" runat="server"
                                                                            ImageUrl='<%# Bind("Product_Image", "~/images/products/{0}") %>' />
                                                                      <div class="product-list-name">
                                                                            <p><%# Eval("Product_Name") %></p>
                                                                            <p class="price-list-in">Price:<span><i class="fa fa-inr" aria-hidden="true"></i><%# Eval("OrderItem_SellingPrice","{0:0}") %></span></p>
                                                                            <p class="qty-list-in">Qty:<span><%# Eval("OrderItem_Quantity") %></span></p>
                                                                        </div>

                                                                        <asp:Label ID="lblProdStatusId" runat="server" Text='<%# Eval("OrderItem_StatusIDFK") %>' Visible="false"></asp:Label>
                                                                         <asp:Label ID="lblPaymentStatusId" runat="server" Text='<%# Eval("OrderItem_PaymentStatusIDFK") %>' Visible="false"></asp:Label>
                                                                        <asp:Label ID="lblProdOrderid" runat="server" Text='<%# Eval("Order_IDPK") %>' Visible="false"></asp:Label>
                                                                        <asp:Label ID="lblProdId" runat="server" Text='<%# Eval("OrderItem_ProductIDFK") %>' Visible="false"></asp:Label>
                                                                    </td>
                                                                    
                                                                    <td style="width:18%;vertical-align: top;">
                                                                        <p><i class="fa fa-inr" aria-hidden="true"></i><span><%# Eval("OrderItem_Subtotal","{0:0}") %></span></p>
                                                                    </td>
                                                                    <td style="width:48.3%;vertical-align: top;">
                                                                        <div class="my-order-li-con-del" id="dvProdEsimated" runat="server">
                                                                            <p>Estimated delivery on <%# DateTime.Parse(Eval("delivery_date").ToString()).ToString("dddd, dd MMMM yyyy")%></p>

                                                                        </div>
                                                                        <div class="my-order-li-con-del" id="dvProdPakaged" runat="server">
                                                                            <p>Packaged on <%# DateTime.Parse(Eval("delivery_date").ToString()).ToString("dddd, dd MMMM yyyy")%></p>

                                                                        </div>
                                                                        <div class="my-order-li-con-del" id="dvProdShipped" runat="server">
                                                                            <p>Shipped on <%# DateTime.Parse(Eval("delivery_date").ToString()).ToString("dddd, dd MMMM yyyy")%></p>

                                                                        </div>
                                                                        <div class="my-order-li-con-del" id="dvProdDelivered" runat="server">
                                                                            <p>Delivered on <%# DateTime.Parse(Eval("delivery_date").ToString()).ToString("dddd, dd MMMM yyyy")%></p>

                                                                        </div>

                                                                        <div class="my-order-li-con-del" id="dvProdCancel" runat="server">
                                                                            <p>Cancelled</p>
                                                                           <p id="pCancelStatus" runat="server"></p>
                                                                        </div>
                                                                        <div class="my-order-li-con-del" id="dvProdReturn" runat="server">
                                                                            <p>Returned</p>
                                                                            <p id="pReturnstatus" runat="server"></p>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </ItemTemplate>
                                                    </asp:DataList>

                                                </div>
                                            </div>

                                        </ItemTemplate>
                                    </asp:DataList>

                                </div>
                                <div class="my-order-make-btn">
                                    <a href="home">Make new order to make the list bigger</a>
                                </div>
                            </div>

                        </div>
                        <div id="wishlistinfo" runat="server" class="tab-pane fade my-wishlisht-account">
                            <div class="wishlist-acc-heading">
                                <h3>my wishlist 
                                     <asp:Label ID="lblWhishlistCnt" runat="server"></asp:Label>
                                </h3>
                                <div class="wishlist-acc-select-opt">
                                    <h4>sort <span>by: </span></h4>

                                    <asp:DropDownList ID="ddlWhishlistSort" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlWhishlistSort_SelectedIndexChanged" AutoPostBack="true">
                                        <asp:ListItem>Recent</asp:ListItem>
                                        <asp:ListItem>Oldest</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="wishlist-checked-add">


                                <asp:DataList ID="dlWhishList" runat="server" Width="100%" OnItemCommand="dlWhishList_ItemCommand">
                                    <ItemTemplate>
                                        <div class="wishlist-add-view">
                                            <asp:ImageButton ID="imgbtnProdImage" runat="server"
                                                ImageUrl='<%# Bind("Product_Image", "~/images/products/{0}") %>' Style="float: left" />
                                            <div class="wishlist-add-about">
                                                <h4><%# Eval("Product_Name") %>
                                                    <asp:Label ID="lblProdId" runat="server" Visible="false"
                                                        Text='<%# Eval("WhishList_ProdIDFK") %>' />

                                                    <%--   <span>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                    </span>--%>
                                                </h4>
                                                <div class="wishlist-add-stock">
                                                    <p>
                                                        <i class="fa fa-inr" aria-hidden="true"></i>
                                                        <asp:Label ID="lblProdSP" runat="server"
                                                            Text='<%# string.Concat(""+Eval("ProdPrice_SellingPrice","{0:0}")) %>' />
                                                    </p>
                                                    <p><%# Eval("ProdStock_StockStatusIDFK").ToString()== "4" ? "In-Stock" : "Out-of-Stock"%></p>
                                                </div>
                                                <div class="add-wishlist-cart">
                                                    <asp:LinkButton ID="lnkCart" runat="server" CommandName="cart">Add to Cart</asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>

                                </asp:DataList>
                            </div>


                        </div>

                        <div id="myreviewrating" runat="server" class="tab-pane fade my-wishlisht-account">
                            <div class="review-heading">
                                <h3>product<span> review</span></h3>
                            </div>
                            <div class="review-rating-in">
                                <div class="col-md-12">
                                    <div class="rate-range">
                                        <h4>rated by <span>user
                                               <asp:Label ID="lblReviewCnt" runat="server"></asp:Label>
                                        </span></h4>
                                        <p>Rating given</p>
                                    </div>
                                    <div class="star-rating-points">
                                        <div class="five-star-point">
                                            <p>5<i class="fa fa-star" aria-hidden="true"></i></p>
                                            <div class="user-bar-rev-my">
                                                <div class="user-bar-review-1">
                                                </div>
                                            </div>
                                            <p id="ratingCnt5" runat="server"></p>
                                        </div>

                                        <div class="five-star-point">
                                            <p>4<i class="fa fa-star" aria-hidden="true"></i></p>
                                            <div class="user-bar-rev-my">
                                                <div class="user-bar-review-2">
                                                </div>
                                            </div>
                                            <p id="ratingCnt4" runat="server"></p>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="five-star-point">
                                            <p>3<i class="fa fa-star" aria-hidden="true"></i></p>
                                            <div class="user-bar-rev-my">
                                                <div class="user-bar-review-3">
                                                </div>
                                            </div>
                                            <p id="ratingCnt3" runat="server"></p>
                                        </div>

                                        <div class="five-star-point">
                                            <p>2<i class="fa fa-star" aria-hidden="true"></i></p>

                                            <div class="user-bar-rev-my">
                                                <div class="user-bar-review-4">
                                                </div>
                                            </div>

                                            <p id="ratingCnt2" runat="server"></p>
                                        </div>


                                    </div>


                                    <div class="sort-by-rating">

                                        <asp:DataList ID="dlReview" runat="server" Width="100%" OnItemCommand="dlReview_ItemCommand">
                                            <ItemTemplate>
                                                <div class="product-review-tyre-list">
                                                    <div class="product-reivew-list-header">
                                                        <div class="product-details-about-tilte">
                                                            <div class="product-review-list-img">
                                                                <asp:Image ID="imgProduct" runat="server"
                                                                    ImageUrl='<%# Bind("Product_Image", "~/images/products/{0}") %>' />
                                                            </div>
                                                            <div class="product-tyre-head-list">
                                                                <asp:Label ID="lblReviewId" runat="server" Visible="false"
                                                                    Text='<%# Eval("ProdReviews_ReviewIDPK") %>' />
                                                                <h3><%# Eval("Product_Name") %><h3>

                                                                    <p><i class="fa fa-inr" aria-hidden="true"></i><%# Eval("ProdPrice_SellingPrice","{0:0}") %></p>
                                                            </div>
                                                        </div>
                                                        <div class="product-review-delete">
                                                            <%-- <a href="#">edit</a>

                                                        <a href="#">delete</a>--%>
                                                            <asp:LinkButton ID="lnkReviewEdit" runat="server" Text="edit" CommandName="Edit"></asp:LinkButton>
                                                            <asp:LinkButton ID="lnkReviewDel" runat="server" Text="delete" CommandName="Delete"></asp:LinkButton>
                                                        </div>
                                                    </div>
                                                    <div class="product-reivew-list-body">
                                                        <div class="product-review-title-list">
                                                            <p>"<%# Eval("ProdReviews_Subject") %>"</p>
                                                        </div>
                                                        <div class="product-review-rating-p">
                                                            <p>
                                                                rating
                                                                <span class="star-review"><%# Eval("ProdReviews_Rating") %><span> ★</span></span>
                                                            </p>
                                                        </div>
                                                        <div class="product-para-review">
                                                            <p>"<%# Eval("ProdReviews_Body") %>"</p>
                                                        </div>

                                                    </div>

                                                </div>


                                            </ItemTemplate>

                                        </asp:DataList>
                                    </div>
                                    <div class="pagination-page-rating">
                                        <ul class="pagination">

                                            <li>
                                                <asp:LinkButton ID="lnkPrev" runat="server"
                                                    OnClick="lnkPrev_Click" Text="<" CssClass=""></asp:LinkButton>

                                            </li>
                                            <li><span id="pagingCnt" runat="server"></span></li>
                                            <li><%--<a href="#"><i class="fa fa-chevron-right" aria-hidden="true"></i></a>--%>
                                                <asp:LinkButton ID="lnkNext" runat="server"
                                                    OnClick="lnkNext_Click" Text=">" CssClass=""></asp:LinkButton>
                                            </li>
                                        </ul>
                                    </div>


                                </div>

                                <div class="col-md-5">
                                    <div class="review-product-details">
                                    </div>
                                    <div class="review-enter-details">

                                        <div class="modal fade" id="myModal" role="dialog" runat="server">
                                            <div class="modal-dialog">

                                                <!-- Modal content-->
                                                <div class="modal-content">
                                                    <div class="modal-header">

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

                                                        <div class="subject-review">
                                                            <label for="subject">Subject:</label>

                                                            <asp:TextBox ID="txtReviewSub" runat="server" CssClass="form-control"></asp:TextBox>
                                                            <asp:RequiredFieldValidator runat="server" ID="reqName" ControlToValidate="txtReviewSub" ErrorMessage="*" ForeColor="Red" ValidationGroup="Review" />
                                                        </div>
                                                        <div class="comment-products">
                                                            <label for="comment">Comment:</label>

                                                            <asp:TextBox ID="txtReviewComment" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ControlToValidate="txtReviewComment" ErrorMessage="*" ForeColor="Red" ValidationGroup="Review" />
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">

                                                        <asp:Button ID="btnReviewUpdate" runat="server" Text="Update" OnClick="btnReviewUpdate_Click" CssClass="review-submit" ValidationGroup="Review" />

                                                        <asp:Button ID="btnReviewClose" runat="server" Text="close" OnClick="btnReviewClose_Click" CssClass="close-review" />
                                                    </div>

                                                </div>

                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--Return Modal -->
    <div id="myReturn" class="light">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" onclick="$('#myReturn').fadeOut();">&times;</button>
                    <h4 class="modal-title">Request for Return</h4>
                </div>
                <div class="modal-body">
                    <div class="order-details-modal">
                        <div class="order-about-modal">
                            <div class="order-id-modal">
                                <div class="order-name-details">
                                    <p class="head-order-n">order id</p>
                                </div>
                                <div class="order-result-details">
                                    <p id="preturnOrdrid" runat="server"></p>
                                </div>
                            </div>
                            <div class="order-amount-modal">
                                <div class="order-name-details">
                                    <p class="head-order-n">Amount</p>
                                </div>
                                <div class="order-result-details">
                                    <p>
                                        <i class="fa fa-inr" aria-hidden="true"></i>
                                        <span id="preturnAmt" runat="server"></span>
                                    </p>
                                </div>
                            </div>
                            <div class="order-date-modal">
                                <div class="order-name-details">
                                    <p class="head-order-n">date of order</p>
                                </div>
                                <div class="order-result-details">
                                    <p id="preturnDate" runat="server"></p>
                                </div>
                            </div>
                        </div>
                        <div class="order-which-cancel">
                            <asp:UpdatePanel ID="upReturn" runat="server">
                                <ContentTemplate>
                                    <asp:RadioButtonList ID="rbtnReturnType" runat="server" RepeatDirection="Horizontal"
                                        AutoPostBack="true" OnSelectedIndexChanged="rbtnReturnType_SelectedIndexChanged">
                                        <asp:ListItem>Return & Refund</asp:ListItem>
                                        <asp:ListItem>Return & Replace</asp:ListItem>
                                        <asp:ListItem>Cancel Order</asp:ListItem>
                                    </asp:RadioButtonList>
                                </ContentTemplate>
                            </asp:UpdatePanel>

                        </div>
                        <div class="order-name-modal">
                            <div class="product-name-title">
                                <h4>Product items</h4>
                            </div>
                            <div class="table-responsive">


                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th style="width: 50%;">Items</th>
                                                <th style="width: 25%;">Quantity</th>
                                                <th style="width: 25%;">Subtotal</th>

                                            </tr>
                                        </thead>

                                        <asp:DataList ID="dlProduct" runat="server">
                                            <ItemTemplate>

                                                <tbody>

                                                    <tr>
                                                        <td style="width: 50%;">
                                                            <div class="order-name-individual-in">

                                                                <%--<input type="checkbox" class="regular-checkbox" value="">--%>
                                                                <asp:CheckBox ID="chkProd" runat="server" />
                                                                <div class="order-check-in">
                                                                    <div class="order-image-modal-details">
                                                                        <asp:Label ID="lblReturnProdId" runat="server" Text='<%# Eval("OrderItem_ProductIDFK") %>' Visible="false"></asp:Label>
                                                                        <asp:Image ID="imgProduct" runat="server"
                                                                            ImageUrl='<%# Bind("Product_Image", "~/images/products/{0}") %>' />
                                                                    </div>
                                                                    <div class="order-name-modal-details">
                                                                        <h4><%# Eval("Product_Name") %></h4>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </td>
                                                        <td valign="top" style="width: 25%;">
                                                            <p><%# Eval("OrderItem_Quantity") %></p>
                                                        </td>
                                                        <td valign="top" style="width: 25%;">
                                                            <p><i class="fa fa-inr" aria-hidden="true"></i><span><%# Eval("OrderItem_Subtotal","{0:0}") %></span></p>
                                                        </td>
                                                    </tr>
                                                </tbody>

                                            </ItemTemplate>
                                        </asp:DataList>
                                    </table>
                                </div>
                            </div>


                        </div>
                        <div class="order-cancel-reason">
                            <div class="order-cancel-apply">
                                <div class="col-md-4">
                                    <div class="order-reason-label">
                                        <p>Reason </p>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="order-reason-select">
                                        <select class="form-control" id="yourSelect" runat="server">
                                            <option value="select reason">select reason</option>
                                            <option value="delivery not on time">delivery not on time</option>
                                            <option value="product not in good condition">product not in good condition</option>
                                            <option value="not happy with product">not happy with product</option>
                                            <option value="others">others</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="remarks-cancel">
                                <div class="col-md-4">
                                    <div class="order-comment-label">
                                        <p>Comment</p>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <textarea class="form-control" placeholder="remarks" id="txtReturnRemarks" runat="server"></textarea>
                                </div>
                            </div>
                            <div>
                                <asp:Label ID="lblReturnErr" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <div class="select-submit-btn">

                        <asp:Button ID="btnReturnSubmit" runat="server" CssClass="btn submit-od-btn" Text="Submit" OnClick="btnReturnSubmit_Click" />
                        <button type="button" class="btn btn-default cancel-od-btn" onclick="$('#myReturn').fadeOut();">Close</button>
                    </div>
                </div>
            </div>

        </div>
    </div>



    <!-- cancel modal -->
    <!-- Modal -->
    <div id="myCancel" class="light">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" onclick="$('#myCancel').fadeOut();">&times;</button>
                    <h4 class="modal-title">Request for Cancel</h4>
                </div>
                <div class="modal-body">
                    <div class="order-details-modal">
                        <div class="order-about-modal">
                            <div class="order-id-modal">
                                <div class="order-name-details">
                                    <p class="head-order-n">order id</p>
                                </div>
                                <div class="order-result-details">
                                    <p id="pOrderId" runat="server"></p>
                                </div>
                            </div>
                            <div class="order-amount-modal">
                                <div class="order-name-details">
                                    <p class="head-order-n">Amount</p>
                                </div>
                                <div class="order-result-details">
                                    <p>
                                        <i class="fa fa-inr" aria-hidden="true"></i>
                                        <span id="pAmount" runat="server"></span>
                                    </p>
                                </div>
                            </div>
                            <div class="order-date-modal">
                                <div class="order-name-details">
                                    <p class="head-order-n">date of order</p>
                                </div>
                                <div class="order-result-details">
                                    <p id="pDate" runat="server"></p>
                                </div>
                            </div>
                        </div>


                        <div class="order-cancel-reason">
                            <div class="order-cancel-apply">
                                <div class="col-md-4 no-left-pad">
                                    <div class="order-reason-label">
                                        <p>Reason for cancel</p>
                                    </div>
                                </div>
                                <div class="col-md-8 no-left-pad">
                                    <div class="order-reason-select">
                                        <select class="form-control" id="yourCancel" runat="server" name="cancelreason">
                                            <option value="select reason">select reason</option>
                                            <option value="delivery not on time">delivery not on time</option>
                                            <option value="product not in good condition">product not in good condition</option>
                                            <option value="not happy with product">not happy with product</option>
                                            <option value="others">others</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="remarks-cancel">
                                <div class="col-md-4 no-left-pad">
                                    <div class="order-comment-label">
                                        <p>Comment</p>
                                    </div>
                                </div>
                                <div class="col-md-8 no-left-pad">
                                    <textarea class="form-control" placeholder="remarks" id="txtComments" runat="server"></textarea>

                                </div>
                            </div>
                            <div>
                                <asp:Label ID="msgErr" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <div class="select-submit-btn">

                        <asp:Button ID="btnCancelSubmit" runat="server" CssClass="btn submit-od-btn" Text="Submit" OnClick="btnCancelSubmit_Click" />
                        <button type="button" class="btn btn-default cancel-od-btn" onclick="$('#myCancel').fadeOut();">Close</button>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div id="footer"></div>
    <script>
        // Javascript to enable link to tab
        var url = document.location.toString();
        if (url.match('#')) {
            $('.nav-pills a[href="#' + url.split('#')[1] + '"]').tab('show');
        }

        // Change hash for page-reload
        $('.nav-pills a').on('shown.bs.tab', function (e) {
            window.location.hash = e.target.hash;
        })


    </script>
    <script>
        if (location.hash) {
            setTimeout(function () {

                window.scrollTo(0, 0);
            }, 1);
        }
    </script>
    <%-- <script>
        var cancelId = jQuery('#cpMain_yourSelect');
        var select = this.value;
        cancelId.change(function () {

            if ($(this).val() == 'others') {
                $('.remarks-cancel').show();
            }
            else $('.remarks-cancel').hide();
        });
    </script>
    <script>
        var cancelId = jQuery('#cpMain_yourCancel');
        var select = this.value;
        cancelId.change(function () {

            if ($(this).val() == 'others') {

                $('.remarks-cancel').show();
            }
            else $('.remarks-cancel').hide();
        });
    </script>--%>
    <script>
        var cancelId = jQuery('#cpMain_yourSelect');
        var select = this.value;
        cancelId.change(function () {
            if ($(this).val() == 'others') {
                $('.remarks-cancel').show();
                $('.order-details-modal').animate({ scrollTop: $(".remarks-cancel").offset().top }, 1000);
            }
            else $('.remarks-cancel').hide();
        });
    </script>
    <script>
        var cancelId = jQuery('#cpMain_yourCancel');
        var select = this.value;
        cancelId.change(function () {
            if ($(this).val() == 'others') {
                $('.remarks-cancel').show();
                $('.order-details-modal').animate({ scrollTop: $(".remarks-cancel").offset().top }, 1000);
            }
            else $('.remarks-cancel').hide();
        });
    </script>
</asp:Content>
