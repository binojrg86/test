<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="OrderTrack.aspx.cs" Inherits="CarCare.OrderTrack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Care Express | OrderTrack</title>
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

    <section class="myorder-track">
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
                                    <li><a class="mar-bot" href="myaccount#my-orders-info">• my orders</a></li>
                                    <li class="div-part">
                                        <h4>my stuff</h4>
                                    </li>
                                    <li><a href="myaccount#my-review-rating">• my review and ratings</a></li>
                                    <li><a class="mar-bot" href="myaccount#wishlist-info">• my wishlist</a></li>
                                    <li class="div-part">
                                        <h4>account settings</h4>
                                    </li>
                                    <li><a href="myaccount#personal-info">• personal information</a></li>
                                    <li><a href="myaccount#password-info">• change password</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="my-order-track-details">
                        <div class="col-md-12">
                            <div class="my-order-track-detail-edit">
                               
                                  <asp:LinkButton ID="lnkOrdrReturn" runat="server" Text="Return" OnClick="lnkOrdrReturn_Click" Visible="false"></asp:LinkButton>
                                 <asp:LinkButton ID="lnkOrdrCancel" runat="server" Text="Cancel" OnClick="lnkOrdrCancel_Click" Visible="false"></asp:LinkButton>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="tracking-detail-product">
                                <h4>order details</h4>
                                <div class="tracking-detail-in-pro">
                                    <div class="col-md-5">
                                        <p>Order ID</p>
                                    </div>
                                    <div class="col-md-7 tracking-detail-in-out">
                                        <p id="pOrderId" runat="server"></p>
                                    </div>
                                </div>
                                <div class="tracking-detail-in-pro">
                                    <div class="col-md-5">
                                        <p>Order Date</p>
                                    </div>
                                    <div class="col-md-7 tracking-detail-in-out">
                                        <p id="pOrderDate" runat="server"></p>
                                    </div>
                                </div>
                                <div class="tracking-detail-in-pro">
                                    <div class="col-md-5">
                                        <p>Amount Paid</p>
                                    </div>
                                    <div class="col-md-7 tracking-detail-in-out">

                                        <p id="pAmt" runat="server">
                                        </p>


                                    </div>
                                </div>
                                <div class="tracking-detail-in-pro">
                                    <div class="col-md-5">
                                        <p>Payment mode</p>
                                    </div>
                                    <div class="col-md-7 tracking-detail-in-out">
                                        <p id="pPayment" runat="server"></p>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="tracking-detail-address">
                                <h4>Shipping Address</h4>
                                <p id="pAddress" runat="server"></p>
                                <br />
                                <p id="pPhone" runat="server" style="float: initial"></p>
                            </div>
                        </div>
                    </div>
                    <div class="where-my-order">



                        <div class="col-md-12">
                            <div class="my-order-details-head">
                                <h3>Track your order</h3>
                            </div>
                            <div class="my-order-tracking-where">
                                <div class="my-tracking-in my-track-ordered">
                                    <div class="my-track-order-img">
                                        <img id="imgOrdered" runat="server">
                                    </div>
                                    <span class="line"></span>
                                    <div class="my-track-order-p">
                                        <p id="dvOrdered" runat="server">ordered</p>
                                        <%--<p>Aug'15 2017</p>--%>
                                    </div>
                                </div>
                                <div class="my-tracking-in my-track-ordered" style="display: none" id="dvCancel" runat="server">
                                    <div class="my-track-order-img">
                                        <img id="imgCancelOrder" runat="server">
                                    </div>
                                    <span class="line"></span>
                                    <div class="my-track-order-p">
                                        <p id="dvCancelOrder" runat="server">cancelled</p>
                                        <%--<p>Aug'15 2017</p>--%>
                                    </div>
                                </div>
                                <div class="my-tracking-in my-track-packaged">
                                    <div class="my-track-order-img">
                                        <img id="imgPackeged" runat="server">
                                    </div>
                                    <span class="line"></span>
                                    <div class="my-track-order-p">
                                        <p id="dvPackaged" runat="server">packaged</p>
                                        <%--<p>Aug'16 2017</p>--%>
                                    </div>
                                </div>
                                <div class="my-tracking-in my-track-ordered" style="display: none">
                                    <div class="my-track-order-img">
                                        <img id="imgCancelPackage" runat="server">
                                    </div>
                                    <span class="line"></span>
                                    <div class="my-track-order-p">
                                        <p id="dvCancelPackage" runat="server">cancelled</p>
                                        <%--<p>Aug'15 2017</p>--%>
                                    </div>
                                </div>
                                <div class="my-tracking-in my-track-shipped">
                                    <div class="my-track-order-img">
                                        <img id="imgShipped" runat="server">
                                    </div>
                                    <span class="line"></span>
                                    <div class="my-track-order-p">
                                        <p id="dvShipped" runat="server">shipped</p>
                                        <%--<p>Aug'17 2017</p>--%>
                                    </div>
                                </div>
                                <div class="my-tracking-in my-track-ordered" style="display: none">
                                    <div class="my-track-order-img">
                                        <img id="imgCancelShip" runat="server">
                                    </div>
                                    <span class="line"></span>
                                    <div class="my-track-order-p">
                                        <p id="dvCancelShip" runat="server">cancelled</p>
                                        <%--<p>Aug'15 2017</p>--%>
                                    </div>
                                </div>
                                <div class="my-tracking-in my-track-delivered">
                                    <div class="my-track-order-img">
                                        <img id="imgDelivered" runat="server">
                                    </div>
                                    <div class="my-track-order-p">
                                        <p id="dvDelivered" runat="server">delivered</p>
                                        <%--<p>Aug'20 2017</p>--%>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="my-order-li-con">
                            <div class="col-md-12">
                                <div class="my-order-li-product-items">
                                    <h3>Order Items</h3>
                                </div>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                              <th style="width:33.3%;">Items</th>
                                                <th style="width:18.3%;">Subtotal</th>
                                                <th style="width:48.3%;">Status</th>
                                            </tr>
                                        </thead>

                                        <asp:DataList ID="dlProduct" runat="server" OnItemDataBound="dlProduct_ItemDataBound">
                                            <ItemTemplate>

                                                <tbody>
                                                    <tr>
                                                        <td style="width:33.3%;vertical-align:top;">
                                                              <asp:Label ID="lblPaymentStatusId" runat="server" Text='<%# Eval("OrderItem_PaymentStatusIDFK") %>' Visible="false"></asp:Label>
                                                            <asp:Label ID="lblProdStatusId" runat="server" Text='<%# Eval("OrderItem_StatusIDFK") %>' Visible="false"></asp:Label>
                                                              <asp:Label ID="lblProdOrderid" runat="server" Text='<%# Eval("Order_IDPK") %>' Visible="false"></asp:Label>
                                                             <asp:Image ID="imgProduct" runat="server"
                                                                ImageUrl='<%# Bind("Product_Image", "~/images/products/{0}") %>' />
                                                            <div class="product-list-name">
                                                                <p><%# Eval("Product_Name") %></p>
                                                                <p class="price-list-in">Price: <span><i class="fa fa-inr" aria-hidden="true"></i><%# Eval("OrderItem_SellingPrice","{0:0}") %></span></p>
                                                                <p class="qty-list-in">Qty: <span><%# Eval("OrderItem_Quantity") %></span></p>
                                                             </div>
                                                        </td>
                                                      
                                                        <td style="width:18%;vertical-align:top;">
                                                            <p><i class="fa fa-inr" aria-hidden="true"></i><span><%# Eval("OrderItem_Subtotal","{0:0}") %></span></p>
                                                        </td>
                                                        <td style="width:48.3%;vertical-align:top;">
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
                                                            <div class="my-order-li-con-del" id="dvProdCancel" runat="server" visible="false">
                                                                <p>Cancelled</p>
                                                                <p id="pCancelStatus" runat="server"></p>
                                                            </div>
                                                            <div class="my-order-li-con-del" id="dvProdReturn" runat="server" visible="false">
                                                                <p>Returned</p>
                                                                 <p id="pReturnstatus" runat="server"></p>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>



                                            </ItemTemplate>
                                        </asp:DataList>
                                    </table>
                                </div>


                                <div class="my-order-toal-acc">
                                    <div class="col-md-12">
                                        <div class="track-order-total">
                                            <p><span>Total</span><span id="spanTotal" runat="server"></span></p>
                                            <p><span>Shipping Charges</span><span id="spanDeliveryCharges" runat="server"></span></p>
                                            <p id="dvDiscount" runat="server"><span>Discount</span><span id="spanDis" runat="server"></span></p>
                                            <p><span>Grand Total</span><span id="spanGrandTotal" runat="server"></span></p>
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

                                        <asp:DataList ID="dlReturnProduct" runat="server">
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
                                    <p id="p1" runat="server"></p>
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
