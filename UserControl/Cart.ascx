<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cart.ascx.cs" Inherits="CarCare.UserControl.Cart" %>


<section class="shop-kart-tyre">
    <div class="container" style="width:1108px">
        <div class="row">
            <div class="col-md-8" id="dvCartItems" runat="server">
                <div class="mycart-heading-box">
                    <div class="mycart-heading">
                        <h3 >my cart<span id="cartcount" runat="server"></span></h3>
                       
                      
                    </div>
                   <div>
                      
                   </div>
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
                                            <p>Rs:<%# Eval("Cart_Total","{0:0}") %><span>Rs:<%# Eval("ProdPrice_MRP","{0:0}") %></span>
                                                <span><%# Eval("ProdPrice_DiscountPercent") %>% OFF</span></p>

                                            <asp:Label ID="lblPromocode" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                                           
                                             <asp:Label ID="lblProdId" runat="server" Visible="false"
                                            Text='<%# Eval("Cart_ProductIDFK") %>' />
                                        
                                         <asp:Label ID="lblCartId" runat="server" Visible="false"
                                            Text='<%# Eval("Cart_ID") %>' /></h3>
                                        </div>
                                        <div class="mycart-add-remove">
                                            <div class="add-more-item">
                                               
                                                    <%--<asp:Button ID="imgminus" runat="server" CssClass='qtyminus' Text="-"
                                                    CommandName="minus" />--%>
                                                 <asp:LinkButton ID="imgminus" runat="server"  Text="-" CssClass="qtyminusnew"
                                                    CommandName="minus"></asp:LinkButton>

                                                    <asp:TextBox ID="lblProdQty" runat="server" 
                                                    Text='<%# Eval("Cart_Quantity") %>' CssClass="qty" Enabled="false"></asp:TextBox>
                              
                                                 <%--<asp:Button ID="imgplus" runat="server" CssClass='qtyplus' Text="+"
                                                     CommandName="plus"/>--%>
                                                 <asp:LinkButton ID="imgplus" runat="server" CssClass="qtyplusnew"  Text="+"
                                                     CommandName="plus"></asp:LinkButton>

                                            </div>
                                             <div class="add-remove-cart">
                                            <asp:LinkButton ID="lnkWhishlist" runat="server" CommandName="whishlist" style="padding-left:10px">
                                                <i class="fa fa-heart" aria-hidden="true" style="color: #a3a5a6" id="iconWhishlist" runat="server"></i>move to wishlist</asp:LinkButton>
                                             <asp:LinkButton ID="lnkCartDel" runat="server"  CommandName="Delete">
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
                    <div class="mycart-subtotal">
                        <p>Amount Payable <span> <asp:Label ID="lblPrice" runat="server"
                                                    /></span></p>
                    </div>
                    <div class="place-order">
                        <%--<a class="continue-shop" href="catalogue" id="aContinue" runat="server">continue shopping</a>--%>
                         <asp:Button ID="aContinue" runat="server" CssClass="continue-shop" PostBackUrl="~/Catalogue.aspx" Text="continue shopping"/>
                        <%--<a class="order-cart" href="CheckOut.aspx" id="aPlaceOrdr" runat="server">place order</a>--%>
                        <asp:Button ID="aPlaceOrdr" runat="server" CssClass="order-cart" OnClick="aPlaceOrdr_Click" Text="place order"/>
                    </div>
                </div>

            </div>
            <div class="col-md-4" id="dvPrice" runat="server">
                <div class="price-detail-box">
                    <div class="price-details">
                        <h3>price details</h3>
                    </div>
                    <div class="price-item-details">
                        <p>subtotal<span id="prodPrice" runat="server"></span></p>
                        <p>delivery charges<span id="deliveryCharges" runat="server"></span></p>
                        <p id="pPromocode" runat="server" visible="false">Coupon discount<span id="spanPromocode" runat="server"></span></p>
                         <p id="pOrdrDis" runat="server" visible="false">Offer discount<span id="spanOrdrDis" runat="server"></span></p>
                        <p id="pOffrDetai" runat="server" visible="false" style="font-size:12px">Flat 20% off on above purchase of Rs. 5000</p>
                    </div>
                    <div class="check-promo-code">
              <%--          <input type="text" class="promo-enter form-control" placeholder="Enter Promo Code">--%>
                        <asp:TextBox ID="txtpromocode" runat="server" placeholder="Enter Coupon Code" CssClass="promo-enter form-control"></asp:TextBox>
                        <%--<asp:LinkButton ID="lnkRemovecode" runat="server" Text="Remove" Visible="false"></asp:LinkButton>--%>
                         <%--<button class="btn promo-apply-btn" type="submit">Apply</button>--%>
                        <asp:Button ID="btnPromocode" runat="server" CssClass="btn promo-apply-btn" Text="Apply" OnClick="btnPromocode_Click"/>
                        <asp:Button ID="btnPromoRemove" runat="server" CssClass="btn promo-apply-btn" Text="Remove" OnClick="btnPromoRemove_Click" Visible="false"/>
                       
                    <asp:Label ID="lblErrCode" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                    </div>
                    <div class="price-to-pay">
                        <p>Amount Payable<span id="totalprice" runat="server"></span></p>
                    </div>
                </div>
            </div>
            <div class="col-md-12 shopping-cart-con" id="dvEmpty" runat="server" visible="false">
                 <h4>Your Shopping Cart is <span>empty</span></h4>
                  <a class="continue-shop" href="catalogue">continue shopping</a>
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
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="txtLoginEmail"
                                            ErrorMessage="*" ForeColor="Red" ValidationGroup="Login" />
                                        <asp:RegularExpressionValidator ID="validateEmail"
                                            runat="server" ErrorMessage="Invalid email."
                                            ControlToValidate="txtLoginEmail" ForeColor="Red"
                                            ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="Login"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group password-for">
                                      
                                        <asp:TextBox ID="txtLoginPwd" TextMode="Password" runat="server" placeholder="Enter Password" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3"
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
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4"
                                            ControlToValidate="txtRegName" ErrorMessage="*" ForeColor="Red" ValidationGroup="Register" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                                            runat="server" ErrorMessage="Invalid name."
                                            ControlToValidate="txtRegName" ForeColor="Red"
                                            ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="Register"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">

                                     
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

                                    
                                        <asp:TextBox ID="txtRegPwd" TextMode="Password" runat="server" placeholder="Enter Password"
                                            CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6"
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
</section>
