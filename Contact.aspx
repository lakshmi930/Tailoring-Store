<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AlTarwadaWebStore.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>

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
                            <li><asp:LinkButton ID="cart" onclick="Button2_Click" runat="server">Cart<span class="badge" id="pcount" runat="server"></span></asp:LinkButton></li>
                            <li><a href="About.aspx">About Us</a></li>
                            <li class="active"><a href="Contact.aspx">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--- Navigation bar end-->
            <!---Contact Slide--->
                <br />
                <hr />
                <div id="Contact" class="container">
                    <h2 class="text-center">Contact us</h2>
                    
                    <div class="row">
                        <div class="col-md-4">
                            <h4><small>Contact us and we'll get back to you within 24 hours.</small></h4>
                            <p><span class="glyphicon glyphicon-map-marker"></span>AL Khan Khalidiya, Sharjah, UAE </p>
                            <p><span class="glyphicon glyphicon-phone"></span>+971 50 534 4619 </p>
                            <p><span class="glyphicon glyphicon-envelope"></span> altarwada@gmail.com </p>
                        </div>
                    </div>
                    <div class="container col-md-8 dynamic">
                        <div class="col-sm-4 form-group">
                        Name<asp:TextBox ID="fname" runat="server" class="form-control" placeholder="Name" type="text" required="required" style="width:200px;"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 form-group">
                        Telephone No.<asp:TextBox ID="tel" runat="server" class="form-control" placeholder="00971501234567" required="required" style="width:200px;"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 form-group">
                        Email<asp:TextBox ID="email" class="form-control" runat="server"  placeholder="someone@example.com" required="required" TextMode="Email"></asp:TextBox>
                        </div>

 

                    </div>
                    <div class="col-md-8">
                        
                        <asp:TextBox ID="com" CssClass="form-control" runat="server" placeholder="Place your Comments, Queries, and any custom orders here." rows="5" required="required" TextMode="MultiLine" ></asp:TextBox>
                    </div>
                    
                        <div class="col-md-8 form-group">
                            <br />
                            <asp:Button ID="Button1" class="btn btn-default pull-right" onclick="dbsend" runat="server" Text="Send" />
                        </div>
                </div>
                <!---Footer start--->
                <footer>
                    <div class="container text-center" id="footer">
                        <p class="text-muted credit">
                            &copy; 2020 Dhanya &amp; Lakshmi Co. 
                        </p>
                    </div>
                </footer>
                <!---Footer ends--->
        </div>
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
                   
        })
    </script>

</body>
</html>
