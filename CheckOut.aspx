<%@ Page Title="" Language="C#" MasterPageFile="~/CheckOut.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="CarCare.CheckOut" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="~/UserControl/Cart.ascx" TagPrefix="uc" TagName="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Care Express | CheckOut</title>
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
     <script src="js/jquery-ui.min.js"></script>
    <style>
        .contentCssClass {
            height: 200px;
            border: 1px solid grey;
            border-color: #ddd;
            margin-bottom: 5px;
            overflow-x: hidden;
        }

        .headerSelectedCss {
            color: #fff;
            background-color: #ee1c25;
            border-color: #ddd;
            border: 1px solid #ee1c25;
            border-radius: 0px;
            padding-top: 5px;
            padding-bottom: 5px;
            padding-left: 10px;
            text-transform: uppercase;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" runat="server">
    <asp:ScriptManager ID="scriptmanager" runat="server" EnablePageMethods="true"></asp:ScriptManager>

    <section class="checkout-details">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="panel-group" id="accordion">
                        <asp:Accordion ID="Accordion1" runat="server" HeaderCssClass="panel-heading1"
                            ContentCssClass="contentCssClass" HeaderSelectedCssClass="headerSelectedCss"
                            FadeTransitions="true" TransitionDuration="500" AutoSize="None">
                            <Panes>
                                <asp:AccordionPane ID="AccordionPane1" runat="server">
                                    <Header>• login<%-- <a href="#">edit</a>--%></Header>

                                    <Content>

                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <div id="collapse1">
                                                    <div class="panel-body">
                                                        <div class="checkout-login">

                                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"
                                                                ControlToValidate="txtEmail" CssClass="required-text" ValidationGroup="LoginContinue"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="rgEmail"
                                                                runat="server" ErrorMessage="Not valid!"
                                                                ControlToValidate="txtEmail" ValidationGroup="LoginContinue"
                                                                Display="Dynamic" ForeColor="Red"
                                                                ValidationExpression="^[a-zA-Z][a-zA-Z|0-9|]*([_])*([_][a-zA-Z|0-9]+)*([.][a-zA-Z|0-9]+([_][a-zA-Z|0-9]+)*)*@(?:[a-zA-Z-]+\.)+[a-zA-Z]{2,7}$">
                                                            </asp:RegularExpressionValidator>

                                                            <div class="radio">
                                                                <label>
                                                                    <asp:RadioButtonList ID="rbtnLogin" runat="server" CssClass="radio-regular" OnSelectedIndexChanged="rbtnLogin_SelectedIndexChanged" AutoPostBack="true">
                                                                        <asp:ListItem Selected="True">Continue as guest</asp:ListItem>
                                                                        <asp:ListItem>Registered account</asp:ListItem>
                                                                    </asp:RadioButtonList>

                                                                </label>
                                                            </div>


                                                            <div class="password-registered">
                                                                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" CssClass="form-control" Visible="false" placeholder="Enter Password"></asp:TextBox>
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1"
                                                                    ControlToValidate="txtPwd" SetFocusOnError="true" ForeColor="Red" />
                                                                <asp:Label ID="lblPwdErr" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                                                            </div>
                                                            <div class="order-continue">
                                                                <%--<p>Your order information will send to this mail <span id="mailSentId" runat="server"></span></p>--%>

                                                                <%--<asp:Button ID="btnGuestContinue" runat="server"  Text="Continue" CssClass="checkout-login-btn" ValidationGroup="LoginContinue" OnClick="btnContinue_Click" />--%>
                                                                <asp:LinkButton ID="lnkGuestContinue" runat="server" Text="Continue" OnClick="lnkGuestContinue_Click" CssClass="checkout-login-btn" ValidationGroup="LoginContinue"></asp:LinkButton>
                                                                <asp:Label ID="lblGuestErr" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ContentTemplate>

                                        </asp:UpdatePanel>
                                    </Content>
                                </asp:AccordionPane>
                                <asp:AccordionPane ID="AccordionPane2" runat="server">
                                    <Header>• delivery address</Header>
                                    <Content>

                                        <div id="collapse2">
                                            <div class="panel-body">
                                                <div class="delivery-address-check">
                                                    <div class="delivery-name">
                                                        <div class="col-md-6">
                                                            <div>
                                                                <%--<input type="text" class="form-control inputText" required />--%>

                                                                <asp:TextBox ID="txtname" runat="server" CssClass="form-control inputTex"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="rqFirstName" runat="server" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"
                                                                    ControlToValidate="txtname" ValidationGroup="DeliveryDetails"></asp:RequiredFieldValidator>

                                                                <asp:RegularExpressionValidator ID="regvName" runat="server" ValidationGroup="DeliveryDetails"
                                                                    Display="Dynamic" ForeColor="Red"
                                                                    ControlToValidate="txtname" ErrorMessage="Not valid!"
                                                                    ValidationExpression="^[a-zA-Z'.\s]{1,50}" Font-Size="12px">
                                                                </asp:RegularExpressionValidator>
                                                                <span class="floating-label">Name</span>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div>
                                                                <%--<input type="number" class="form-control inputText" required />--%>
                                                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control inputText"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"
                                                                    ControlToValidate="txtPhone" ValidationGroup="DeliveryDetails"></asp:RequiredFieldValidator>

                                                                <asp:RegularExpressionValidator ID="regvLName" runat="server" ValidationGroup="DeliveryDetails"
                                                                    Display="Dynamic" ForeColor="Red"
                                                                    ControlToValidate="txtPhone" ErrorMessage="Not valid!"
                                                                    ValidationExpression="[0-9]{10}" Font-Size="12px">
                                                                </asp:RegularExpressionValidator>
                                                                <span class="floating-label">Phone Number</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="delivery-pin">
                                                        <div class="col-md-6">
                                                            <div>
                                                                <%--<input type="number" class="form-control inputText" required />--%>
                                                                <asp:TextBox ID="txtPincode" runat="server" MaxLength="6" CssClass="form-control inputText" AutoPostBack="true" OnTextChanged="txtPincode_TextChanged"></asp:TextBox>
                                                                <asp:AutoCompleteExtender ID="AutoCompleteExtender1"
                                                                    runat="server"
                                                                    TargetControlID="txtPincode"
                                                                    MinimumPrefixLength="2"
                                                                    EnableCaching="true"
                                                                    CompletionSetCount="1"
                                                                    CompletionInterval="1000"
                                                                    ServiceMethod="SearchPincode" ServicePath="~/CheckOut.aspx">
                                                                </asp:AutoCompleteExtender>

                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"
                                                                    ControlToValidate="txtPincode" ValidationGroup="DeliveryDetails"></asp:RequiredFieldValidator>
                                                                <%--  <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                                                    runat="server" ErrorMessage="Not valid!"
                                                                    ControlToValidate="txtPincode" ValidationGroup="DeliveryDetails"
                                                                    Display="Dynamic" ForeColor="Red"
                                                                    ValidationExpression="\d{6}" Font-Size="12px">
                                                                </asp:RegularExpressionValidator>--%>
                                                                <span class="floating-label">Pincode</span>
                                                                <asp:Label ID="lblPinErr" ForeColor="Red" Font-Size="12px" runat="server" Visible="false"></asp:Label>
                                                            </div>

                                                        </div>
                                                        <div class="col-md-6">
                                                            <div>

                                                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control inputTex" TextMode="MultiLine"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"
                                                                    ControlToValidate="txtAddress" ValidationGroup="DeliveryDetails"></asp:RequiredFieldValidator>
                                                                <span class="floating-label">Address(Area and Street)</span>
                                                            </div>

                                                        </div>
                                                        <%--       <div class="col-md-6">
                                                            <div>
                                                             
                                                                <asp:TextBox ID="txtLocality" runat="server" CssClass="form-control inputText"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" Display="Dynamic"
                                                                    ControlToValidate="txtLocality" ValidationGroup="DeliveryDetails"></asp:RequiredFieldValidator>
                                                                <span class="floating-label">Locality</span>
                                                            </div>
                                                        </div>--%>
                                                    </div>
                                                    <%--<div class="delivery-add">
                                                       
                                                    </div>--%>
                                                    <div class="delivery-pin">
                                                        <div class="col-md-6">
                                                            <div>
                                                                <%--<input type="text" class="form-control inputText" required />--%>
                                                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control inputText"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"
                                                                    ControlToValidate="txtCity" ValidationGroup="DeliveryDetails"></asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                                                                    runat="server" ErrorMessage="Not valid!"
                                                                    ControlToValidate="txtCity" ValidationGroup="DeliveryDetails"
                                                                    Display="Dynamic" ForeColor="Red"
                                                                    ValidationExpression="^[a-zA-Z'.\s]{1,50}" Font-Size="12px">
                                                                </asp:RegularExpressionValidator>
                                                                <span class="floating-label" id="spancity" runat="server">City/District/Town</span>
                                                            </div>

                                                        </div>
                                                        <div class="col-md-6">
                                                            <div>
                                                                <%--<input type="text" class="form-control inputText" required />--%>
                                                                <asp:TextBox ID="txtState" runat="server" CssClass="form-control inputText"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"
                                                                    ControlToValidate="txtState" ValidationGroup="DeliveryDetails"></asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
                                                                    runat="server" ErrorMessage="Not valid!"
                                                                    ControlToValidate="txtState" ValidationGroup="DeliveryDetails"
                                                                    Display="Dynamic" ForeColor="Red"
                                                                    ValidationExpression="^[a-zA-Z'.\s]{1,50}" Font-Size="12px">
                                                                </asp:RegularExpressionValidator>
                                                                <span class="floating-label" id="spanstate" runat="server">State</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="delivery-pin">
                                                        <div class="col-md-6">
                                                            <div>
                                                                <%--<input type="text" class="form-control inputText" required />--%>
                                                                <asp:TextBox ID="txtLandmark" runat="server" CssClass="form-control inputText"></asp:TextBox>

                                                                <span class="floating-label">Landmark(optional)</span>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div>
                                                                <%--<input type="text" class="form-control inputText" required />--%>
                                                                <asp:TextBox ID="txtAltMobile" runat="server" CssClass="form-control inputText"></asp:TextBox>

                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5"
                                                                    runat="server" ErrorMessage="Not valid!"
                                                                    ControlToValidate="txtAltMobile" ValidationGroup="DeliveryDetails"
                                                                    Display="Dynamic" ForeColor="Red"
                                                                    ValidationExpression="[0-9]{10}" Font-Size="12px">
                                                                </asp:RegularExpressionValidator>
                                                                <span class="floating-label">Alternate phone(optional)</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="delivery-pin">
                                                        <div class="col-md-12">
                                                            <div class="center-save-btn">
                                                                <%--<a href="#" class="save-address">Continue</a>--%>
                                                                <asp:Button ID="btnDelivey" runat="server" Text="Continue" ValidationGroup="DeliveryDetails" CssClass="save-address" OnClick="btnDelivey_Click" />
                                                                <asp:Button ID="btnDeliveryUpdate" runat="server" Text="Update" ValidationGroup="DeliveryDetails" CssClass="save-address" OnClick="btnDeliveryUpdate_Click" Style="display: none" />
                                                                <asp:Label ID="lblDeliveryErr" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </Content>
                                </asp:AccordionPane>

                                <asp:AccordionPane ID="AccordionPane3" runat="server" Enabled="true">
                                    <Header>• order summary</Header>
                                    <Content>

                                        <div id="collapse3">
                                            <div class="panel-body">
                                                <div class="delivery-summary" id="userControl" runat="server">
                                                    <ul class="delivery-summary-list">
                                                        <li>
                                                            <asp:DataList ID="dlCart" runat="server" OnItemCommand="dlCart_ItemCommand" OnItemDataBound="dlCart_ItemDataBound">
                                                                <ItemTemplate>
                                                                    <div class="cart-header">

                                                                        <div class="main-mycart-in">
                                                                            <div class="col-md-8">
                                                                                <div class="mycart-image">
                                                                                    <asp:ImageButton ID="imgProduct" runat="server"
                                                                                        ImageUrl='<%# Bind("Product_Image", "~/images/products/{0}") %>' />
                                                                                </div>
                                                                                <div class="mycart-product-des">
                                                                                    <h4><%# Eval("Product_Name") %></h4>
                                                                                    <p>
                                                                                        Rs:<%# Eval("Cart_Total","{0:0}") %><span>Rs:<%# Eval("ProdPrice_MRP","{0:0}") %></span>
                                                                                        <span><%# Eval("ProdPrice_DiscountPercent") %>% OFF</span>
                                                                                    </p>

                                                                                    <asp:Label ID="lblPromocode" runat="server" Visible="false" ForeColor="Red"></asp:Label>

                                                                                    <asp:Label ID="lblProdId" runat="server" Visible="false"
                                                                                        Text='<%# Eval("Cart_ProductIDFK") %>' />

                                                                                    <asp:Label ID="lblCartId" runat="server" Visible="false"
                                                                                        Text='<%# Eval("Cart_ID") %>' /></h3>
                                                                                </div>
                                                                                <div class="mycart-add-remove">
                                                                                    <div class="add-more-item">


                                                                                        <asp:LinkButton ID="imgminus" runat="server" Text="-" CssClass="qtyminusnew"
                                                                                            CommandName="minus" CausesValidation="false"></asp:LinkButton>

                                                                                        <asp:TextBox ID="lblProdQty" runat="server"
                                                                                            Text='<%# Eval("Cart_Quantity") %>' CssClass="qty" Enabled="false"></asp:TextBox>


                                                                                        <asp:LinkButton ID="imgplus" runat="server" CssClass="qtyplusnew" Text="+"
                                                                                            CommandName="plus" CausesValidation="false"></asp:LinkButton>

                                                                                    </div>
                                                                                    <div class="add-remove-cart">
                                                                                        <asp:LinkButton ID="lnkWhishlist" runat="server" CausesValidation="false" CommandName="whishlist" Style="padding-left: 10px">
                                                <i class="fa fa-heart" aria-hidden="true" style="color: #a3a5a6" id="iconWhishlist" runat="server"></i>move to wishlist</asp:LinkButton>
                                                                                        <asp:LinkButton ID="lnkCartDel" runat="server" CausesValidation="false" CommandName="Delete">
                                                 <i class="fa fa-trash-o" aria-hidden="true"></i>remove</asp:LinkButton>
                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="product-delivery-date">
                                                                                    <p>Delivery in <%# Eval("Product_Delivery") %> days</p>
                                                                                    <p><%# Eval("ProdOtherInfo_Value") %> Days Replacement Policy</p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                </ItemTemplate>

                                                            </asp:DataList>

                                                        </li>
                                                    </ul>

                                                </div>
                                                <div class="place-order">

                                                    <asp:Button ID="aContinue" runat="server" CssClass="continue-shop" PostBackUrl="~/Catalogue.aspx" Text="continue shopping" CausesValidation="false" />

                                                    <asp:Button ID="btnProceed" runat="server" CssClass="order-cart" Text="Proceed" OnClick="btnOdrProceed_Click" CausesValidation="false" />
                                                </div>
                                                <%--<div class="col-md-8" id="dvEmpty" runat="server" visible="false">
                                                    <h3>Your Shopping Cart is empty</h3>
                                                    <a class="continue-shop" href="catalogue">continue shopping</a>
                                                </div>--%>
                                                <%--   <div class="delivery-summary-btn">
                                                    <a href="#" class="summary-btn-del">continue</a>
                                                </div>--%>
                                            </div>
                                        </div>
                                    </Content>
                                </asp:AccordionPane>

                                <asp:AccordionPane ID="AccordionPane4" runat="server">
                                    <Header>• payment options</Header>
                                    <Content>

                                        <div id="collapse4">
                                            <div class="panel-body">
                                                <div class="payment-options-btn">
                                                    <div class="net-bank">
                                                        <div class="radio">
                                                            <%--  <label>
                                                                <input type="radio" class="pay-edit online-te" name="cash">Online Banking</label>--%>
                                                        </div>
                                                    </div>
                                                    <%-- <div class="cash-on-del">
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" class="pay-edit cash-on" name="cash">Cash on delivery</label>

                                                        </div>
                                                    </div>--%>
                                                    <div class="cash-on-del">
                                                        <div class="radio">
                                                            <label>
                                                                <asp:RadioButtonList ID="rbtnPayment" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rbtnPayment_SelectedIndexChanged">
                                                                    <asp:ListItem>Online Banking</asp:ListItem>
                                                                    <asp:ListItem>Cash on delivery</asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="cash-on-delivery" id="show" runat="server">

                                                        <label class="checkbox-inline">

                                                            <asp:CheckBox ID="chkCODTerms" Visible="false" CssClass="radio-inline" runat="server" Text="I agree with term and conditions." /></label>


                                                        <asp:LinkButton ID="lkbtnCOD" runat="server" Text="Make Payment"
                                                            CssClass="make-payment-btn" OnClick="lkbtnCOD_Click" CausesValidation="false"></asp:LinkButton>
                                                        <asp:Label ID="lblOrderErr" runat="server" Visible="false" Style="display: block; float: left;" Font-Size="12px" ForeColor="Red"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </Content>
                                </asp:AccordionPane>
                            </Panes>
                        </asp:Accordion>
                    </div>



                </div>
                <%-- <div id="userControl2" runat="server" class="col-md-4">
                       <uc:cart ID="priceControl" runat="server" />    
                </div>--%>

                <div class="col-md-4">
                    <div class="checkout-price" id="pricedetails" runat="server">
                        <div class="checkout-price-details">
                            <h4>cart summary</h4>
                        </div>
                        <div class="checkout-details-price">
                            <div class="checkout-price-item-details">
                                <p>
                                    subtotal<span> </span><span id="prodPrice" runat="server"></span>
                                    <%--  <i class="fa fa-inr" aria-hidden="true"></i>--%>
                                </p>
                                <p id="pDeliveryCharges" runat="server">
                                    Shipping charges
                                    <span id="deliveryCharges" runat="server">
                                        <i class="fa fa-inr" aria-hidden="true"></i></span>
                                </p>
                            </div>
                            <%--	<div class="grand-total">
								<p id="pGrandTotal" runat="server">Grand Total<span id="totalprice" runat="server">
                                    <i class="fa fa-inr" aria-hidden="true"></i></span></p>
							</div>--%>
                            <div class="checkout-promo-code">
                                <%--								<input type="text" class="promo-enter form-control" placeholder="Enter Promo Code">--%>
                                <asp:TextBox ID="txtpromocode" runat="server" placeholder="Enter Coupon Code" CssClass="promo-enter form-control"></asp:TextBox>
                                <%--<button class="promo-apply-btn" type="submit">Apply</button>--%>
                                <asp:Button ID="btnPromocode" runat="server" CssClass="btn promo-apply-btn" Text="Apply" OnClick="btnPromocode_Click" />
                                <asp:Button ID="btnPromoRemove" runat="server" CssClass="btn promo-apply-btn" Text="Remove" OnClick="btnPromoRemove_Click" Visible="false" />
                                <asp:Label ID="lblErrCode" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                            </div>
                            <div class="discount-offer-price" id="dvDiscount" runat="server" visible="false">
                                <p>Coupon Discount<span id="spanPromocode" runat="server"><%--<i class="fa fa-inr" aria-hidden="true"></i>--%></span></p>

                            </div>
                            <div class="discount-offer-price" id="dvoffer" runat="server" visible="false">
                                <p id="pOrdrDis" runat="server" visible="false">Offer discount<span id="spanOrdrDis" runat="server"></span></p>
                                <p id="pOffrDetai" runat="server" visible="false" style="font-size: 12px">Flat 20% off on above purchase of Rs. 5000</p>
                            </div>
                            <div class="checkout-price-to-pay">
                                <p>Amount Payable<span id="totalprice1" runat="server"><i class="fa fa-inr" aria-hidden="true"></i></span></p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <!--login-form and sign up form-->
        <div class="login-signup">
            <div class="modal fade" id="loginmodal" runat="server">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div id="loginform" style="display: block;" runat="server">
                            <div class="modal-header">

                                <asp:Button ID="Button1" runat="server" Text="&times;" OnClick="btnclose_Click" CssClass="close" />
                                <h4 class="modal-title">Login</h4>
                            </div>
                            <div class="modal-body">

                                <div class="form-group">

                                    <asp:TextBox ID="txtLoginEmail" runat="server" placeholder="Enter Email"
                                        CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ControlToValidate="txtLoginEmail"
                                        ErrorMessage="*" ForeColor="Red" ValidationGroup="Login" />
                                    <asp:RegularExpressionValidator ID="validateEmail"
                                        runat="server" ErrorMessage="Invalid email."
                                        ControlToValidate="txtLoginEmail" ForeColor="Red"
                                        ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="Login"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group password-for">

                                    <asp:TextBox ID="txtLoginPwd" TextMode="Password" runat="server" placeholder="Enter Password" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9"
                                        ControlToValidate="txtLoginPwd" ErrorMessage="*" ForeColor="Red" ValidationGroup="Login" />

                                    <div class="forget-password">
                                        <a href="#">Forget?</a>
                                    </div>
                                </div>

                                <div class="submit-login">

                                    <asp:Button ID="btnLogin" runat="server" Text="Submit" CssClass="btn btn-default submit-log-btn"
                                        ValidationGroup="Login" CausesValidation="False" OnClick="btnLogin_Click" />
                                </div>

                                <div class="need-register">

                                    <asp:LinkButton ID="lnkNeedReg" runat="server" Text="Need a Register?" OnClick="lnkNeedReg_Click"></asp:LinkButton>
                                </div>
                                <div>
                                    <asp:Label ID="lblLoginmsg" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                                </div>
                            </div>

                        </div>
                        <div id="signform" style="display: none" runat="server">
                            <div class="modal-header">

                                <asp:Button ID="btnclose1" runat="server" Text="&times;" OnClick="btnclose_Click" CssClass="close" />
                                <h4 class="modal-title">sign up</h4>
                            </div>
                            <div class="modal-body">

                                <div class="form-group">


                                    <asp:TextBox ID="txtRegName" runat="server" placeholder="Enter Name"
                                        CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10"
                                        ControlToValidate="txtRegName" ErrorMessage="*" ForeColor="Red" ValidationGroup="Register" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                        runat="server" ErrorMessage="Invalid name."
                                        ControlToValidate="txtRegName" ForeColor="Red"
                                        ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="Register"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">


                                    <asp:TextBox ID="txtRegEmail" runat="server" placeholder="Enter Email"
                                        CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator11"
                                        ControlToValidate="txtRegEmail" ErrorMessage="*" ForeColor="Red" ValidationGroup="Register" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4"
                                        runat="server" ErrorMessage="Invalid email."
                                        ControlToValidate="txtRegEmail" ForeColor="Red"
                                        ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="Register"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">


                                    <asp:TextBox ID="txtRegPwd" TextMode="Password" runat="server" placeholder="Enter Password"
                                        CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator12"
                                        ControlToValidate="txtRegPwd" ErrorMessage="*" ForeColor="Red" ValidationGroup="Register" />

                                </div>

                                <div class="submit-login">

                                    <asp:Button ID="btnRegister" CausesValidation="False" runat="server" Text="Submit" CssClass="btn btn-default submit-log-btn" ValidationGroup="Register" OnClick="btnRegister_Click" />
                                </div>
                                <div class="already-login">

                                    <asp:LinkButton ID="lnkNeedLogin" runat="server" Text="login id?" OnClick="lnkNeedLogin_Click"></asp:LinkButton>
                                </div>
                                <div>
                                    <asp:Label ID="lblRegmsg" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>


    </section>
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
    <script type="text/javascript">



        function RemoveHandlerAtRuntime(pane) {

            $removeHandler($find('cpMain_Accordion1_AccordionExtender').get_Pane(pane).header, "click", $find('cpMain_Accordion1_AccordionExtender')._headerClickHandler);
        }

        function changeSelected(idx) {
            alert("hi");
            $find('cpMain_Accordion1_AccordionExtender').set_SelectedIndex(idx);
        }

    </script>
    <script>
        $(document).ready(function () {
            $("#AccordionPane1").hide();
            $("#AccordionPane2").hide();
            $("#AccordionPane3").hide();
            $("#AccordionPane4").hide();
            $("#collapse1").on("show.bs.collapse", function () {
                $("#AccordionPane1").hide();
                $("#AccordionPane2").hide();
                $("#AccordionPane3").hide();
                $("#AccordionPane4").hide();

            });

            $("#collapse2").on("show.bs.collapse", function () {
                $("#AccordionPane1").show();
                $("#AccordionPane2").hide();
                $("#AccordionPane3").hide();
                $("#AccordionPane4").hide();
            });
            $("#collapse3").on("show.bs.collapse", function () {
                $("#AccordionPane1").show();
                $("#AccordionPane2").show();
                $("#AccordionPane3").hide();
                $("#AccordionPane4").hide();
            });
            $("#collapse4").on("show.bs.collapse", function () {
                $("#AccordionPane1").show();
                $("#AccordionPane2").show();
                $("#AccordionPane3").show();
                $("#AccordionPane4").hide();
            });


        });
    </script>
    <script>

        jQuery(function ($) {
            var $active = $('#accordion .panel-collapse.in').prev().addClass('active');

            $('#accordion').on('show.bs.collapse', function (e) {
                $('#accordion .panel-heading.active').removeClass('active');
                $(e.target).prev().addClass('active');
            });
            $('#accordion').on('hide.bs.collapse', function (e) {
                $(e.target).prev().removeClass('active');
            });
        });

    </script>

</asp:Content>
