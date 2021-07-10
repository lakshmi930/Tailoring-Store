<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AlTarwadaWebStore.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Al Tarwada Store</title>
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
<body data-spy="scroll" data-target=".navbar" data-offset="50">
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
                            <li class="active"><a href="Default.aspx"><span class="glyphicon glyphicon-home"></span></a></li>
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
                            <li><a href="Contact.aspx">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            </div>
            <!--- Navigation bar end-->

            <!---Landing image--->
            <br />
            <div id="landing" class="slide-version bg-cover" style="overflow: hidden;">
                <img src="Images/Carousel/Img6.jpg" class="w3-image w3-greyscale-min" style="width:100%; height:100%" />
            </div>

            <br />
            <br />

            <!---Featured Products--->
            <br />
            <hr />
            <div id="Products" class="container-fluid text-center center-block bg-grey">
                <div class="row slideanim center">
                    <div class="col-sm-4">
                        <img class="img-thumbnail" src="Images/Carousel/Img3.jpg" alt="Kandura" width="400" height="400" />
                        <h4>Custom-tailored</h4>
                        <h3><a href="kandura.aspx">Kandura</a></h3>
                    </div>
                    <div class="col-sm-4">
                        <img class="img-thumbnail" src="Images/Baby/baby.jpg" alt="Baby sets" width="400" height="400" />
                        <h4>Custom-delivered</h4>
                        <h3><a href="baby.aspx">Baby accessories1 and sets</a></h3>
                    </div>
                    <div class="col-sm-4">
                        <img class="img-thumbnail" src="Images/custom-tailoring.jpg" alt="Custom Orders" width="400" height="400" />
                        <h4>For more</h4>
                        <h3><a href="Contact.aspx">Contact us</a></h3>
                    </div>
                </div>
            </div>

            <!---Features-->
            <br />
            <hr />
            <br />
            <section class="Features lead">
                    <div class="container-fluid text-center center-block panel panel-default">
                        <div class="row center">
                            <br />
                            <br />
                            <h2 class="panel-heading">Tailoring The Look</h2>
                            <h4>What we offer</h4>
                            <br />

 

                            <br />
                            <div class="row slideanim panel-body">
                                <div class="col-sm-4">
                                    <span class="glyphicon glyphicon-scissors logo-small"></span>
                                    <br />
                                    <h4>MAKE IT FIT</h4>
                                    <p>Fitted to your measurements</p>
                                </div>
                                <div class="col-sm-4">
                                    <span class="glyphicon glyphicon-heart logo-small"></span>
                                    <br />
                                    <h4>MAKE IT COMFORT</h4>
                                    <p>Suited to your comforts and fabrics</p>
                                </div>
                                <div class="col-sm-4">
                                    <span class="glyphicon glyphicon-tint logo-small"></span>
                                    <br />
                                    <h4>MAKE IT FAVORITE</h4>
                                    <p>Personalized to your style and color choice</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

        </div>
            <!---Footer--->
           <br /><br /><br /><br />
            <footer>
                <div class="container text-center">
                    <p class="text-muted">
                        &copy; 2020 Dhanya &amp; Lakshmi Co. 
                    </p>
                </div>
            </footer>
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
