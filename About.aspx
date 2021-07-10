<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="AlTarwadaWebStore.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
    
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
<body data-spy="scroll" data-offset="60">
    <form id="form1" runat="server">
        <div class="page-container">
            <div id="content-wrap">
                <div>
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
                                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown">  Products  <b class="caret"></b></a>
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
                                    <li class="active"><a href="About.aspx">About Us</a></li>
                                    <li><a href="Contact.aspx">Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                    <!--- Navigation bar end-->
                    </div>
                </div>
                <br />
                <!--- About Us Page start-->
                <div>
                    <!-- Container (About Section) -->
                    <div id="about" class="container-fluid">
                        <div class="row">
                            <div class="col-sm-8">
                                <h2 style="margin-top:50px">About Us</h2><br/>
                                <h4>Al Tarwada Tailoring House is located in the heart of Sharjah, U.A.E. with a team of designers, tailors and striving towards presenting a customized and ethnic clothing.</h4><br/>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                <br/>
                                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-default btn-lg" NavigateUrl="~/Contact.aspx">Get in Touch</asp:HyperLink>
                            </div>
                            <div class="col-sm-4">
                                <span class="glyphicon glyphicon-heart logo"></span>
                            </div>
                        </div>
                    </div>

                    <div class="container-fluid bg-grey">
                        <div class="row">
                            <div class="col-sm-4">
                                <span class="glyphicon glyphicon-gift logo slideanim"></span>
                            </div>
                            <br/><br/><br>
                            <div class="col-sm-8">
                                <h2>Our Story</h2><br/>
                                <h4><strong>Vision:</strong> To provide for  the GCC demands to ethnic fashion and personalized comfort clothing.</h4><br/>
                                <p>Al Tarwada has been the best choice for a trusted, convenient, and professional tailoring service since 2000, when we began as Al Tarwada Tailoring House. Our story starts at our first shop at the centre of Sharjah - Rolla. We, later, was inspired to fill an evident market gap in having tailoring services available across the GCC.</p>
                            </div>
                        </div>
                    </div>
                    <br/><br /><br /><br />
                    <!-- Container (Services Section) -->
                    <div id="services" class="container-fluid text-center">
                        <h2 class="text-capitalize">Services</h2>
                        <h4>What we offer</h4>
                        <br/>
                        <div class="row slideanim">
                            <div class="col-sm-4">
                                <span class="glyphicon glyphicon-scissors logo-small"></span>
                                <h4>MAKE IT FIT</h4>
                                <p>One size = Your size</p>
                            </div>
                            <div class="col-sm-4">
                                <span class="glyphicon glyphicon-heart logo-small"></span>
                                <h4>MAKE IT COMFORT</h4>
                                <p>Suited to your comforts and fabrics</p>
                            </div>
                            <div class="col-sm-4">
                                <span class="glyphicon glyphicon-tint logo-small"></span>
                                <h4>MAKE IT FAVORITE</h4>
                                <p>Stylized to your color choice</p>
                            </div>
                        </div>
                        <br/><br/>
                    
                        <div class="row slideanim">
                            <div class="col-sm-4">
                                <span class="glyphicon glyphicon-globe logo-small"></span>
                                <h4 style="color:#303030;">WIDE DELIVERY</h4>
                                <p>Delivering across the GGC</p>
                            </div>
                            <div class="col-sm-4">
                                <span class="glyphicon glyphicon-leaf logo-small"></span>
                                <h4>GREEN</h4>
                                <p>Towards sustainable fashion</p>
                            </div>
                            <div class="col-sm-4">
                                <span class="glyphicon glyphicon-certificate logo-small"></span>
                                <h4>REGISTERED</h4>
                                <p>Under the Sharjah Commerce</p>
                            </div>
                        </div>
                    </div>

 

                    <!-- Container (Portfolio Section) -->
                    <div id="portfolio" class="container-fluid text-center bg-grey">
                        <h2>Portfolio</h2><br/>
                        <h4>What we have created</h4>
                        <div class="row text-center slideanim">
                            <div class="col-sm-4">
                                <div class="thumbnail">
                                    <img src="Images/Carousel/Img0.jpg" alt="Paris" width="400" height="300"/>
                                    <p><strong>Paris</strong></p>
                                    <p>Yes, we built Paris</p>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="thumbnail">
                                    <img src="Images/Carousel/Img4.png" alt="New York" width="400" height="300"/>
                                    <p><strong>New York</strong></p>
                                    <p>We built New York</p>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="thumbnail">
                                    <img src="Images/Carousel/Img3.jpg" alt="San Francisco" width="400" height="300"/>
                                    <p><strong>San Francisco</strong></p>
                                    <p>Yes, San Fran is ours</p>
                                </div>
                            </div>
                        </div><br/>
                    </div>
                    <!--- About Us Page end-->

                </div>
            </div>
            <!--- Footer start--->
            <footer>
                <a class="pull-right" href="Default.aspx" title="To Top"><span class="glyphicon glyphicon-chevron-up"></span></a>
                <div class="container text-center">
                    <p class="text-muted">
                        &copy; 2020 Dhanya &amp; Lakshmi Co. 
                    </p>
                </div>
            </footer>
            <!--- Footer end-->
        </div>
    </form>
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
    </script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            // Add smooth scrolling to all links in navbar + footer link
            $("navbar footer a[href='Default.aspx']").on('click', function (event) {
                // Make sure this.hash has a value before overriding default behavior
                if (this.hash !== "") {
                    // Prevent default anchor click behavior
                    event.preventDefault();

                    // Store hash
                    var hash = this.hash;

                    // Using jQuery's animate() method to add smooth page scroll
                    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                    $('html, body').animate({ scrollTop: $(hash).offset().top }, 100, function () {

                        // Add hash (#) to URL when done scrolling (default click behavior)
                        window.location.hash = hash;
                    });
                } // End if
            });

            $(window).scroll(function () {
                $(".slideanim").each(function () {
                    var pos = $(this).offset().top;

                    var winTop = $(window).scrollTop();
                    if (pos < winTop + 600) { $(this).addClass("slide"); }
                });
            });

            $("#addCart").Click(function myFunction() {
                window.location.href = "~/Cart.aspx";
            });
        })
    </script>

</body>
</html>
