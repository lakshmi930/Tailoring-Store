<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="measure.aspx.cs" Inherits="AlTarwadaWebStore.measure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Measurements</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css" />
    <link href="Content/Styles.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" />

</head>
<body data-spy="scroll" data-offset="60">
    <form id="form1" runat="server">
        <div class="page-container">
            <div class="content-wrap">
                <!--- Navigation bar start-->
                <div>
                    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                        <div class="container">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle Navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="#"><span>
                                    <img src="Images/logo-new.png" alt="Tarwada Web Portal" height="30" /></span> Al Tarwada Tailoring Store </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--- Navigation bar end-->

                <!--- Measuring starts --->
                <div class="panel-heading center-block">
                    <br />
                    <br />
                    <h2 class="text-center">Let's get measured!</h2>
                </div>
                <div class="panel panel-body">
                    <h3 class="text-center">Here's what you need</h3>
                    <br />
                    <div class="row text-center">
                        <div class="col-sm-4">
                            <span class="glyphicon glyphicon-user"></span>
                            <br />
                            <h4>A friend</h4>
                        </div>
                        <div class="col-sm-4">
                            <span class="glyphicon glyphicon-scale"></span>
                            <br />
                            <h4>A measuring tape</h4>
                        </div>
                        <div class="col-sm-4">
                            <span class="glyphicon glyphicon-time"></span>
                            <br />
                            <h4>15 minutes</h4>
                        </div>
                    </div>
                    <div class="text-center">
                        <br />
                        <p>With the help of a friend, it will take 15 minutes.</p>
                        <p><strong>Wear a well-fitting and comfortable dress during the process.</strong></p>
                        <br />
                        <p>Once you submit the measurements, they're sent to our expert tailors for review.
                        <br />If any concerns come up, we will reach out to you to ensure the best fit possible.</p>
                        <br />
                    </div>
                </div>
                <!---Shoulder starts--->
                <div class="panel panel-body row text-center slideanim">
                    <div class="col-lg-6">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/u2pXOlx9xTw" class="center-block media-object"></iframe>
                    </div>
                    <div class="form-inline col-lg-6">
                        Shoulder Line (in cm): <asp:TextBox ID="shoulder" runat="server" Text="0.0" TextMode="SingleLine" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <!---Shoulder ends--->

                <!---Bust starts--->
                <div class="panel panel-body row text-center bg-grey slideanim">
                    
                    <div class="form-inline col-lg-6">
                        Bust Line (in cm): <asp:TextBox ID="bust" runat="server" Text="0.0" TextMode="SingleLine" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-lg-6">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/X_NBlhA1_pQ" class="center-block media-object"></iframe>
                    </div>
                </div>
                <!---Shoulder ends--->

                <!---Waist starts--->
                <div class="panel panel-body row text-center slideanim">

                    <div class="col-lg-6">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/KvbI2YXc0Vc" class="center-block media-object"></iframe>
                    </div>
                    
                    <div class="form-inline col-lg-6">
                        Waist Line (in cm): <asp:TextBox ID="waist" runat="server" Text="0.0" TextMode="SingleLine" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <!---Waist ends--->

                <!---Hip starts--->
                <div class="panel panel-body row text-center bg-grey slideanim">
                    <div class="form-inline col-lg-6">
                        Hip Line (in cm): <asp:TextBox ID="hip" runat="server" Text="0.0" TextMode="SingleLine" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-lg-6">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/lV7W7d9Y4TY" class="center-block media-object"></iframe>
                    </div>
                </div>
                <!---Hip ends--->

                <!---Arm Hole starts--->
                <div class="panel panel-body row text-center slideanim">
                    <div class="col-lg-6">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/ixRDc0AIIzQ" class="center-block media-object"></iframe>
                    </div>
                    <div class="form-inline col-lg-6">
                        Arm Hole (in cm): <asp:TextBox ID="arm" runat="server" Text="0.0" TextMode="SingleLine" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <!---Arm Hole ends--->

                <!---Sleeve starts--->
                <div class="panel panel-body row text-center bg-grey slideanim">
                    <div class="form-inline  col-lg-6">
                        Sleeve Length (in cm): <asp:TextBox ID="sleeve" runat="server" Text="0.0" TextMode="SingleLine" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class=" col-lg-6">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/CWw6NOkh3Uw" class="center-block media-object"></iframe>
                    </div>
                </div>
                <!---Sleeve ends--->

                <!---Wrist starts--->
                <div class="panel panel-body row text-center slideanim">
                    <div class=" col-lg-6">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/pb8F99cC4ZY" class="center-block media-object"></iframe>
                    </div>
                    <br />
                    <div class="form-inline col-lg-6">
                        Wrist Size (in cm): <asp:TextBox ID="wrist" runat="server" Text="0.0" TextMode="SingleLine" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <!---Wrist ends--->

                <!---Kandura starts--->
                <div class="panel panel-body row text-center bg-grey slideanim">
                    <div class="form-inline col-lg-6">
                        Kandura Length (in cm): <asp:TextBox ID="length" runat="server" Text="0.0" TextMode="SingleLine" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class=" col-lg-6">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/u2pXOlx9xTw" class="center-block media-object"></iframe>
                    </div>
                </div>
                <!---Kandura ends--->

                <div class="panel center-block slideanim">
                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="center center-block" onClick="Button1_Click"/>
                </div>
            </div>
            <!--- Measuring Ends --->
            <!--- Footer start--->
            <footer>
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
        })
    </script>
</body>
</html>
