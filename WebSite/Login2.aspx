<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login2.aspx.cs" Inherits="Login2" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Shine - The Chat Room</title>
    <style>
        .center {
            margin: 0 auto;
        }
    </style>
    <!-- WEB FONTS -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:100,300,100italic,400,300italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>

    <!-- BOOTSTRAP -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- CUSTOM STYLING -->
    <link href="css/styles.css" rel="stylesheet">
    <!-- PRELOADER -->
    <link href="css/loader.css" rel="stylesheet">
</head>

<body>
    <form id="form1" runat="server">
        <!-- PRELOADER -->
        <div id="loader-wrapper">
            <div id="loader">
                <div class="sk-spinner sk-spinner-cube-grid">
                    <div class="sk-cube"></div>
                    <div class="sk-cube"></div>
                    <div class="sk-cube"></div>
                    <div class="sk-cube"></div>
                    <div class="sk-cube"></div>
                    <div class="sk-cube"></div>
                    <div class="sk-cube"></div>
                    <div class="sk-cube"></div>
                    <div class="sk-cube"></div>
                </div>
            </div>
        </div>

        <!-- HEADER -->
        <section id="header">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-8">
                        <img class="logo" src="images/logo.png" />
                        <h1 class="white-text">Welcome Template Stock</h1>
                        <h5 class="white-text">Lorem ipsum dolor sit amet, ed do eiusmod tempor incididunt.</h5>
                        <div id="countdown" class="white-text"></div>
                    </div>
                </div>
            </div>
            <div class="animation">
                <a class="arrow-down-animation" data-scroll href="#contact"><i class="fa fa-angle-down"></i></a>
            </div>
        </section>
        <!-- HEADER ENDS -->
        <!-- CONTACT US -->
        <section id="contact">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-8 col-md-offset-2">
                        <!-- CONTACT FORM -->
                            <p data-sr="enter top over 1s, wait 0.3s, move 24px, reset" class="contact-info text-center">LOGIN IN</p>
                            <div data-sr="enter left over 1s, wait 0.3s, move 24px, reset" class="form-group col-md-6">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Your Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="帳號不可為空白!" ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div data-sr="enter right over 1s, wait 0.3s, move 24px, reset" class="form-group col-md-6">
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Your Password" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="密碼不可為空白!" ControlToValidate="TextBox2" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div data-sr="enter bottom over 1s, wait 0.3s, move 24px, reset" class="form-group col-sm-12 ">
                                <asp:Button ID="Button2" runat="server" class="button-leweb" Text="Login In" OnClick="Button2_Click" />
                            </div>
                            <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" Visible="false"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:testConnectionString %>' SelectCommand="SELECT * FROM [Member]"></asp:SqlDataSource>

                        <!-- AFTER SENDING MESSAGE -->
                        <div id="success" class="col-md-12 col-sm-12 text-center">
                            <i class="fa fa-check-circle"></i>
                            <strong>Message successfully sent</strong>
                            <p>Thanks for contacting us. We will respond to you as soon as possible!</p>
                        </div>
                        <!-- CONTACT FORM ENDS -->
                    </div>
                </div>
            </div>
        </section>
        <!-- CONTACT ENDS -->
        <!-- ABOUT -->
        <%--<section id="about">
            <div class="container">
                <div class="row text-center">
                    <!-- Section 1 -->
                    <div data-sr="enter top over 1s, wait 0.3s, move 24px, reset" class="col-md-4">
                        <i class="fa fa-laptop"></i>
                        <h3>Responsive Design</h3>
                        <div class="colored-line-small-center"></div>
                        <p>Lorem ipsum dolor sit amet, ed do eiusmod tempor incididunt ut labore et dolore magna.</p>
                    </div>
                    <!-- Section 2 -->
                    <div data-sr="enter bottom over 1s, wait 0.3s, move 24px, reset" class="col-md-4 middle">
                        <i class="fa fa-lightbulb-o"></i>
                        <h3>Creative Design</h3>
                        <div class="colored-line-small-center"></div>
                        <p>Lorem ipsum dolor sit amet, ed do eiusmod tempor incididunt ut labore et dolore magna.</p>
                    </div>
                    <!-- Section 3 -->
                    <div data-sr="enter top over 1s, wait 0.3s, move 24px, reset" class="col-md-4">
                        <i class="fa fa-newspaper-o"></i>
                        <h3>Mailchimp Ready</h3>
                        <div class="colored-line-small-center"></div>
                        <p>Lorem ipsum dolor sit amet, ed do eiusmod tempor incididunt ut labore et dolore magna.</p>
                    </div>
                </div>
            </div>
        </section>--%>
        <div data-sr="enter top over 1s, wait 0.3s, move 24px, reset">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="id" Width="50%" CssClass="center">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True"></asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="newview.aspx?id={0}" HeaderText="Title" SortExpression="Title" DataTextField="Title"></asp:HyperLinkField>
                    <asp:BoundField DataField="Count" HeaderText="Count" SortExpression="Count"></asp:BoundField>
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date"></asp:BoundField>
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:testConnectionString %>' SelectCommand="SELECT * FROM [News]"></asp:SqlDataSource>
            <a href="Login2.aspx">返回</a>
            <br />
            <a href="Login2.aspx">login</a>
        </div>
        <!-- FOOTER -->
        <footer id="footer">
            <div class="container">
                <div class="row text-center">
                    <p>
                        1108105181徐仁鴻 <a href="http://templatestock.co">Template Stock</a>
                        <span class="social">
                            <a href="https://github.com/07Nick-kciN21"><i class="fa fa-github-square"></i></a>
                        </span>
                    </p>
                </div>
            </div>
        </footer>
        <!-- FOOTER ENDS -->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <!-- SMOOTH SCROLL -->
        <script src="js/smooth-scroll.min.js"></script>
        <!-- PARALLAX IMG -->
        <script src="js/jquery.parallax-1.1.3.js"></script>
        <!-- SCROLL REVEAL -->
        <script src="js/scrollReveal.min.js"></script>
        <!-- FUNCTIONS -->
        <script src="js/functions.js"></script>
        </form>
</body>
</html>
