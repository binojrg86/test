<%@ Page Title="" Language="C#" MasterPageFile="~/CheckOut.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="CarCare.ThankYou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Care Express | ThankYou</title>
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
    <link rel="stylesheet" type="text/css" href="css/xzoom.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/flexslider.css">
    <link rel="stylesheet" href="css/etalage.css">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <!-- jquery -->
    <script src="js/jquery.min.js"></script>
    <script src="js/custom.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" runat="server">
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="thank-confirm">
                        <h1>thank <span>you</span></h1>
                        <p>Your order has been placed</p>
                        <p>Order summary has been sent to your email ID</p>
                    </div>
                </div>
                <div class="thank-order-summary">
                    <div class="col-md-6">
                        <div class="thank-order-info">
                            <h4>Order <span>Details</span></h4>
                            <div class="order-details-all">
                            <div class="col-md-3">
                                <div class="thank-order-id-date">
                                    <p>Order ID: </p>
                                </div>
                           </div>
                             <div class="col-md-9 no-pad">
                               <p> <span id="orderId" runat="server"></span></p>
                             </div>
                                </div>
                            <div class="col-md-3">
                                <div class="thank-order-id-date">
                                    <p>Order Date:</p>
                                </div>
                           </div>
                                 <div class="col-md-9 no-pad">
                               <p> <span id="orderDate" runat="server"></span></p>
                             </div>

                              <div class="col-md-3">
                                <div class="thank-order-id-date">
                                    <p>Grand Total:</p>
                                </div>
                           </div>
                                 <div class="col-md-9 no-pad">
                               <p><i class="fa fa-inr" aria-hidden="true"></i> <span id="grandTotal" runat="server"></span></p>
                             </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="thank-ship-info">

                            <h4>Shipping <span>Address</span></h4>
                            <div class="thank-ship-address">
                                <p>
                                    <span id="orderAddress" runat="server"></span>
                                </p>
                            </div>
                        </div>
                    </div>
              <%--      <div class="col-md-12">
                        <div class="thank-first-total">
                            <p>
                                grand total: <i class="fa fa-inr" aria-hidden="true"></i><span id="grandTotal" runat="server">
                                    </span>
                                
                            </p>
                        </div>
                    </div>--%>
                </div>
                <div class="thanks-order-particular">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                 <thead>
                                            <tr>
                                                <th style="width:450px;">Items</th>
                                                <th style="width:226px;">Quantity</th>
                                                <th>Unit Price</th>
                                                <th>Subtotal</th>
                                            </tr>
                                        </thead>
                            </table>

                            <asp:DataList ID="dlOrder" runat="server" Width="100%" CssClass="table">
                                <ItemTemplate>
                                    <table >
                                       
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <%--<img src="images/shop-kart-item.jpeg">--%>
                                                    <asp:Image ID="imgProduct" runat="server" 
                                                    ImageUrl='<%# Bind("Product_Image", "~/images/products/{0}") %>' />
                                                    <p><%# Eval("Product_Name") %></p>
                                                </td>
                                                <td style="width:226px;" ><%# Eval("OrderItem_Quantity") %></td>
                                                <td style="width:246px;"><i class="fa fa-inr" aria-hidden="true"></i><%# Eval("OrderItem_SellingPrice","{0:0}") %></span></td>
                                                <td style="width:217px;"><i class="fa fa-inr" aria-hidden="true"></i><%# Eval("OrderItem_Subtotal","{0:0}") %></span></td>
                                            </tr>
                                           
                                        </tbody>
                                    </table>

                                </ItemTemplate>
                            </asp:DataList>

                        </div>
                    </div>
                </div>
                <div class="total-thanks-charge">
                    <div class="col-md-5 col-md-offset-7">
                        <div class="thanks-subtotal">
                            <div class="col-md-5 col-md-offset-3">
                                <p>Total: </p>
                            </div>
                            <div class="col-md-4">
                                <p><i class="fa fa-inr" aria-hidden="true"></i><span id="subTotal" runat="server"></span></p>
                            </div>
                        </div>
                        <div class="thanks-charges">
                            <div class="col-md-5 col-md-offset-3">
                                <p>Shipping charges: </p>
                            </div>
                            <div class="col-md-4">
                                <p><%--<i class="fa fa-inr" aria-hidden="true"></i>--%><span id="shippingCharges" runat="server"></span></p>
                            </div>
                        </div>
                          <div class="thanks-charges" id="dvDis" runat="server" visible="false">
                            <div class="col-md-5 col-md-offset-3">
                                <p>Discount: </p>
                            </div>
                            <div class="col-md-4">
                                <p><i class="fa fa-inr" aria-hidden="true"></i><span id="discount" runat="server"></span></p>
                            </div>
                        </div>
                        <div class="thanks-grandtotal">
                            <div class="col-md-5 col-md-offset-3">
                                <p>Grandtotal: </p>
                            </div>
                            <div class="col-md-4">
                                <p><i class="fa fa-inr" aria-hidden="true"></i><span id="grandTotal1" runat="server"></span></p>
                            </div>
                        </div>
                    </div>
                    <div class="thanks-confirm-continue">
                        <div class="col-md-12">
                            <a href="home">continue shopping</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

</asp:Content>
