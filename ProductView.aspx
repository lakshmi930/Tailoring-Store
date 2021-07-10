<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="AlTarwadaWebStore.ProductView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
    <meta charset="utf-8" />
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
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
                                <li><a href="About.aspx">About Us</a></li>
                                <li><a href="Contact.aspx">Contact Us</a></li>
                            </ul>
                            </div>
                        </div>
                <!--- Navigation bar end-->
                    </div>
                </div>
            <br />
            <div style = "padding-top:50px">
                <div class= "col-md-5">
                    <asp:Repeater ID="rpPro" runat="server">
                        <ItemTemplate>
                            <div style = "max-width:480px" class= "thumbnail" >
                                <img src = 'data:image/jpg;base64,<%# !string.IsNullOrEmpty(Eval("p_image").ToString()) ? Convert.ToBase64String((byte[])Eval("p_image")) : string.Empty %>' style = "object-fit:cover; width:auto; height: 300px" />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class= "col-md-5" >
                    <asp:Repeater ID="rpPro1" runat="server">
                        <ItemTemplate>
                            <div class= "divDet1">
                                <h1 class= "proNameView" ><%# Eval("p_group") %> ID: <%# Eval("p_id") %></h1>
                                <p class= "proPriceView" >Price: <%# Eval("p_price") %></p>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class= "divDet1" >
                        <h5 class= "h5size"> Cloth type: </h5 >
                            <div>
                                <asp:RadioButtonList ID = "cloth_type" runat="server">
                                    <asp:ListItem Text ="Cotton" Value="1" />
                                    <asp:ListItem Text ="Chiffon" Value="2" />
                                    <asp:ListItem Text ="Crape" Value="3" />
                                    <asp:ListItem Text ="Sattin" Value="4" />
                                </asp:RadioButtonList>
                            </div>
                    </div>
                    <div class= "divDet1" >
                        <h5 class= "h5size"> Cloth colour: </h5 >
                        <asp:DropDownList ID="cloth_color" runat="server" OnLoad="cloth_color_Load" OnSelectedIndexChanged="cloth_color_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:TextBox ID="TextBox1" runat="server" Height="20px" ReadOnly="True" Width="30px"></asp:TextBox>
                    </div>
                    <div class= "divDet1" >
                        <h5 class= "h5size"> Design colour: </h5 > <asp:DropDownList ID="design_color" runat="server" OnLoad="design_color_Load">
                        </asp:DropDownList>
                        <asp:TextBox ID="TextBox2" runat="server" Height="20px" ReadOnly="True" Width="30px"></asp:TextBox>
                    </div>
                    <div class= "divDet1" >
                        <asp:Button ID="addcart" CssClass="cartdesign" runat="server" Text="ADD TO CART" OnClick="addcart_Click"/>
                        <asp:Label ID="err" CssClass="text-danger" runat="server" Text=""></asp:Label>
                    </div>
                    <div class= "divDet1" >
                        <h5 class= "h5size"> Description </h5 >
                        <p>All materials will be of high quality, brought and stiched according to your customised sizes.</p>
                        <p>Cash on Delivery</p>
                        <p>30 Days from order - Expected delivery date</p>
                        <p>Rutern within 3 days for any alteration</p>
                        <p>Visit our store in AL Khan for more options</p>
                    </div>
                </div>
            </div>
            <br />
            <br />
            </div>
            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            <footer>
                <div id="ff">
                    <div class="container text-center">
                    <p class="text-muted">
                        &copy; 2020 Dhanya &amp; Lakshmi Co. 
                    </p>
                    </div>
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

            
        })
    </script>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
</body>
</html>