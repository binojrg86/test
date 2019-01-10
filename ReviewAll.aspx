<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ReviewAll.aspx.cs" Inherits="CarCare.ReviewAll" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Care Express | Review Rating Product</title>
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
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
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
    <section class="review-rating-all-in">
        <div class="container">
            <div class="row">
                <div class="review-heading-all">
                    <div class="col-md-12">
                        <div class="review-header">
                            <h3>Ratings <span>& Reviews</span></h3>
                        </div>
                    </div>

                </div>
                <div class="review-details-all">
                    <div class="col-md-4">
                        <div class="user-all-reviews">
                            <div class="col-md-4 no-right-pad">
                                <div class="star-overall-point">
                                    <p><span id="avgRating" runat="server"></span><span>★</span></p>
                                </div>
                            </div>
                            <div class="col-md-8 no-left-pad">
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
                        </div>
                        <div class="review-rating-take">
                            <div class="review-product-details">

                                <asp:LinkButton ID="lnkReviewpopup" CausesValidation="false" runat="server" Text="Write review product" OnClick="lnkReviewpopup_Click"></asp:LinkButton>
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
                                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txtReviewComment" ErrorMessage="*" ForeColor="Red" ValidationGroup="Review" />
                                                </div>
                                            </div>
                                            <div class="modal-footer">

                                                <asp:Button ID="btnReviewSubmit" runat="server" Text="submit" OnClick="btnReviewSubmit_Click" CssClass="review-submit" ValidationGroup="Review" />

                                                <asp:Button ID="btnReviewClose" runat="server" Text="close" OnClick="btnReviewClose_Click" CssClass="close-review" />
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="user-review-products-info">
                            <div class="product-review-info-img">
                                <a href="#">

                                    <asp:Image ID="imgprod" runat="server" />
                                </a>
                            </div>
                            <div class="product-review-info-all">
                                <div class="product-review-head-in">
                                    <a href="#">
                                        <h3 id="prodName" runat="server"></h3>
                                    </a>
                                </div>
                                <div class="product-review-stars-in">
                                    <p><span id="prodRating" runat="server"></span></p>
                                </div>
                                <div class="product-review-rating-in">
                                    <p><span id="prodratingSum" runat="server"></span> & 6 reviews</p>
                                </div>
                                <div class="product-review-price-in">
                                    <p>
                                        <span class="org-price" id="prodSP" runat="server"></span>
                                        <span class="rm-price" id="prodMRP" runat="server"></span>
                                        <%--<span class="rm-percen">5% Off</span>--%>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="user-review-import">
                    <div class="col-md-12">
                        <div class="user-review-all-in">
                            <div class="user-review-all-in-head">
                                <h3>all reviews</h3>
                            </div>
                            <div class="user-review-all-in-details">
                                
                              
                                <asp:DataList ID="dlRating" runat="server" ItemStyle-CssClass="rating">
                                <ItemTemplate>

                                   <div class="user-review-all-in-each">
                                    <p class="user-head-all-p"><span><%# Eval("ProdReviews_Rating", "{0:0.#}") %> ★</span>
                                       <%#Eval("ProdReviews_Subject") %></p>
                                    <div class="user-review-all-in-comment">
                                        <p class="more">
                                           <%#Eval("ProdReviews_Body") %> 
                                        </p>
                                    </div>
                                    <div class="user-review-all-about-name">
                                        <p class="user-name-in"><%#Eval("User_FirstName") %><span><%# DataBinder.Eval(Container.DataItem, "[ProdReviews_PostDate]", "{0:dd MMMM yyyy}")%></span></p>
                                        <div class="user-review-like-dis">
                                            <a href="#">
                                                <p><span><i class="fa fa-thumbs-up" aria-hidden="true"></i></span><span><%#Eval("ProdReviews_Likes") %></span></p>
                                            </a>
                                            <a href="#">
                                                <p><span><i class="fa fa-thumbs-down" aria-hidden="true"></i></span><span><%#Eval("ProdReviews_Dislikes") %></span></p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                </ItemTemplate>

                            </asp:DataList>
                                <div class="load-more-review-all">
                                    <a href="#" id="loadMor">load more</a>
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


            </div>
        </div>
    </section>
</asp:Content>
