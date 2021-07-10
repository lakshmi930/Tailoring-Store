<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="AlTarwadaWebStore.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"/>
    <link href="Content/Styles.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="page-container">
            <div id="content-wrap">

            <!--- Navigation bar start-->
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span><img src="Images/logo-new.png" alt="Tarwada Web Portal" height="30"/></span> Al Tarwada Tailoring Store </a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx"><span class="glyphicon glyphicon-home"></span></a></li>
                            <li class="dropdown">
                                <a href="Products.aspx" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                <div>
                                     <ul class="dropdown-menu">
                                    <li role="separator"></li>
                                    <li class="dropdown-header">Ladies Designs</li>
                                    <li role="separator"></li>
                                    <li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="lwork">Lace</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="LinkButton2" runat="server" OnClick="ework">Embroidery</asp:LinkButton></li>
                                    <li role="separator"></li>
                                    <li class="dropdown-header">Babies' Products</li>
                                    <li role="separator"></li>
                                    <li><asp:LinkButton ID="LinkButton3" runat="server" OnClick="bwork">Baby Bag</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="LinkButton4" runat="server" OnClick="fwork">Baby Full Set</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="LinkButton5" runat="server" OnClick="cwork">Cradle</asp:LinkButton></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="active"><asp:LinkButton ID="cart" onclick="Button2_Click" runat="server">Cart<span class="badge" id="pcount" runat="server"></span></asp:LinkButton></li>
                            <li><a href="About.aspx">About Us</a></li>
                            <li><a href="Contact.aspx">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--- Navigation bar end-->
            <!---Contact Slide--->
                <br />
                <hr />
                <div style="padding-top:50px;">
                    <div class="col-md-9">
                        <h4 class="proNameView" runat="server" id="h4Noitem"> Cart </h4>
                        <asp:Repeater ID="Repeater1" runat="server">
                             <ItemTemplate>
                                <%--show Cart start--%>
                                <div class="media" style="border:1px solid black;">
                                    <div class="media-left">
                                        <a href="#">
                                            <img class="media-object" style="width:100px;" src='data:image/jpg;base64,<%# !string.IsNullOrEmpty(Eval("p_image").ToString()) ? Convert.ToBase64String((byte[])Eval("p_image")) : string.Empty %>' alt=".." />
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading proNameCart"><%# Eval("p_group") %> ID: <%# Eval("p_id") %></h4>
                                        <p class="protype"> Cloth Type: <%# Eval("clr_type")%> </p>
                                        <p class="protype"> Cloth Color: <%# Eval("clr_name")%> </p>
                                        <p class="protype"> Design Color:  <%# Eval("clr_des") %></p>
                                        <span class="proPriceView">Price: <%# Eval("p_price") %></span>
                                        <p>
                                            <asp:Button ID="remove" CssClass="cartdesign" runat="server" Text="Remove" OnClick="remove_Click"/> 
                                        </p>
                                    </div>
                                </div>
                                <%--show Cart end--%>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="col-md-3" runat="server" id="divtotal">
                        <%-- --%>
                        <h5> PRICE DETAILS </h5>
                        <div>
                            <label>Cart Total</label>
                            <span class="pull-right priceGray" runat="server" id="spanCartTotal">Value</span>
                        </div>
                        <%-- --%>
                        <div>
                            <div class="proPriceView">
                                <label>Total</label>
                                <span class="pull-right priceGray" runat="server" id="spantotal">Value</span>
                            </div>
                            <div>
                                <asp:Button ID="buy" CssClass="buybutton" runat="server" Text="Buy Now" OnClick="buy_Click"/>
                            </div>
                        </div>
                    </div>
                </div>
                
           </div>
            <!---Footer start--->
                <br /><br /><br /><br /><br />
                <footer>
                    <div class="container text-center" id="footer">
                        <p class="text-muted credit">
                            &copy; 2020 Dhanya &amp; Lakshmi Co. 
                        </p>
                    </div>
                </footer>
                <!---Footer ends--->
        </div>
    </form>

    <!---Scripts--->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
    </script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script>
        $(document).ready(function(){
        // Add smooth scrolling to all links in navbar + footer link
        $("navbar footer a[href='Default.aspx']").on('click', function(event) {
            // Make sure this.hash has a value before overriding default behavior
            if (this.hash !== "") {
                // Prevent default anchor click behavior
                event.preventDefault();

                // Store hash
                var hash = this.hash;

                // Using jQuery's animate() method to add smooth page scroll
                // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                $('html, body').animate({scrollTop: $(hash).offset().top}, 100, function(){
   
                    // Add hash (#) to URL when done scrolling (default click behavior)
                    window.location.hash = hash;
                });
            } // End if
        });
  
        $(window).scroll(function() {
            $(".slideanim").each(function(){
            var pos = $(this).offset().top;

            var winTop = $(window).scrollTop();
            if (pos < winTop + 600) {$(this).addClass("slide");}
            });
        });

            $("#addCart").Click(function myFunction() {
                window.location.href = "~/Cart.aspx";
            });
        })
    </script>

</body>
</html>

