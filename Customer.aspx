<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="AlTarwadaWebStore.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css" />
    <link href="Content/Styles.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    

</head>
<body>
    <form runat="server" id="Form" class="form-group">
        <div class="page-container">
            <div id="content-wrap">
                <div>
                    <!--- Navigation bar start-->
                    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                        <div class="container">
                            <div class="navbar-header">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                        <span class="sr-only">Toggle Navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand" href="#"><span><img src="Images/logo-new.png" alt="Tarwada Web Portal" height="30"/></span> Al Tarwada Tailoring Store </a>
                                </div>
                            </div>
                        </div>
                    <!--- Navigation bar end-->
                    </div>
                </div>
                <!--- Customer starts --->
                <div class="focus">
                        <br />
                        <br />
                        <h2 class="text-center">You're one step away from placing your order!</h2>
                </div>
                <div class="panel panel-body">                
                    <!-- One "tab" for each step in the form: -->
                    <div class="panel-group">
                        <br />
                        <h4 class="text-center">Please enter your personal and contact details</h4>
                        <p class="text-center small">So that your order will be processed immediately!</p>
                        <div>
                            <br />
                            <table style="margin-left:auto; margin-right:auto;">
                                <tr>
                                    <td style="text-align:right;">Full Name: </td> 
                                    <td class="form-inline">
                                        <asp:TextBox ID="fname" name="firstname" placeholder="First Name" runat="server" CssClass="form-control" required="true" ></asp:TextBox>
                                        <asp:TextBox ID="lname" name="lastname" placeholder="Last Name" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td style="text-align:right;">
                                        Mobile No. (with country code):  
                                    </td>
                                    <td>
                                        <asp:TextBox ID="telno" name="tel" placeholder="00971501234567" TextMode="Phone" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td style="text-align:right;">
                                        Email: 
                                    </td>
                                    <td>
                                        <asp:TextBox ID="email" name="email" TextMode="Email" placeholder="someone@example.com" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                                    </td>
                                    
                                </tr>
                            </table>
                            
                        </div>
                    </div>
                    <hr />
                    <div class="panel-group">
                        
                        <h4 class="text-center">Please enter your shipping details</h4>
                        <p class="text-center small">So that there's no misfortunes in delivery!</p>
                        <div>
                            <br />
                            <table style="margin-left:auto; margin-right:auto;">
                                <tr>
                                    <td style="text-align:right;">Address Line 1: </td>
                                    <td>
                                        <asp:TextBox ID="addr1" name="line1" placeholder="House #, Building" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td style="text-align:right;">Address Line 2: </td>
                                    <td>
                                        <asp:TextBox ID="addr2" name="line2" placeholder="Street, Area" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td style="text-align:right;">City: </td>
                                    <td>
                                        <asp:TextBox ID="city" name="Dubai" TextMode="SingleLine" placeholder="Emirate/City" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td style="text-align:right;">Country: </td>
                                    <td>
                                        <asp:TextBox ID="cntry" name="country" TextMode="SingleLine" placeholder="UAE" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                                    </td>
                                    
                                </tr>
                            </table>
                        </div>
                    </div>
                    <hr />
                    <div class="text-center panel-group">
                        <h3>Your order is about to be placed</h3>
                            <div>
                                <br />
                                
                                <p>Please wait patiently as it takes time to tailor them for you. Contact us incase of any concerns.</p>
                                <p><strong>The order will be shipped within one month from the date of order. The shipment will be cash-on-delivery.</strong></p>

                            </div>
                    </div> 
                 </div>   
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="click_submit_cus" CssClass="center center-block" CausesValidation="true"/>
            </div>
        <!--- Customer Ends --->
        <!--- Footer start--->
                <footer>
                    <a class="pull-right" href="Default.aspx" title="To Home"><span class="glyphicon glyphicon-chevron-up"></span></a>
                    <div class="container text-center">
                        <p class="text-muted">
                            &copy; 2020 Dhanya &amp; Lakshmi Co. 
                        </p>
                    </div>
                </footer>
        <!--- Footer end-->
        </div>
    </form>
</body>
</html>