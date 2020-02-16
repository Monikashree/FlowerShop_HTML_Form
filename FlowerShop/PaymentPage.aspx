<%--/**
   HTML: PaymentPage
   Version : 1.0
   Date : 16-02-2020
   Author : Monikashree
**/--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="FlowerShop.PaymentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Validation.js"></script>
    <link rel="stylesheet" type="text/css" href="Style.css" />
</head>
<body>
    <form id="form1" runat="server" class="border" style="line-height: 30px">

        <div class="header">
            <h1>&nbsp &nbsp FLOWER SHOP ONLINE</h1>
            <hr class="hr" />
        </div>
        <div class="part">
            <div class="navigation">
                <div class="image"></div>
            </div>
            <div class="section">
                <h1 class="header">Secure Payment Page</h1>
                <label><b>Select Language</b></label>
                <select class="alignment alignLang" id="language" title="Choose Language" required="required">
                    <option>English</option>
                    <option>Hindi</option>
                    <option>English(United Kingdom)</option>
                </select>
                <br />
                <label>Payment method &nbsp &nbsp<b class="alignment">Visa</b></label>

                <br />
                <label>Description <b class="alignment">Item ordered</b></label><br />
                <label>Amount <b class="alignment">&euro;100.00</b></label><br />
                <img class="visa" src="Image/Visa.jpg" align="right" />
                <div class="content">
                    <h2 class="hr" style="color: white">Card details</h2>
                    <label>You must fill in fields marked with *</label>
                    <br />
                    <label>* Card number</label>
                    <input class="alignment alignNum" type="text" id="txtCardNum" name="Card number" required="required" onchange="ValidateCardNumber()" /><br />
                    <label>* <u>Security code</u></label>
                    <input class="alignment alignCode" type="text" id="txtCode" name="Security code" required="required" onchange="ValidateSecurityCode()" /><br />

                    <label>* Expiry date</label>
                    <asp:DropDownList ID="ddlMonth" runat="server" class="alignMonth" required="required" onchange="ValidateExpiryMonth()"></asp:DropDownList>

                    <asp:DropDownList ID="ddlYear" runat="server" class="alignYear" required="required" onchange="ValidateExpiryYear()"></asp:DropDownList><br />
                    <label>* Cardholder's name</label>
                    <input class="alignment alignName" type="text" id="txtCardName" name="Cardholder's name" required="required" onchange="ValidateName()" /><br />
                    <h2 class="hr" style="color: white">Cardholder details</h2>
                    <label>You must fill in fields marked with *</label>
                    <br />
                    <label>* Address 1</label>
                    <input class="alignment alignAdd" type="text" id="txtAdd1" name="Address 1" required="required" onchange="ValidateAddress()" /><br />
                    <label>&nbsp;&nbsp;Address 2</label>
                    <input class="alignment alignAdd" type="text" id="txtAdd2" name="Address 2" /><br />
                    <label>&nbsp;&nbsp;Address 3</label>
                    <input class="alignment alignAdd" type="text" id="txtAdd3" name="Address 3"  /><br />
                    <label>* Town/City</label>
                    <input class="alignment alignAdd" type="text" id="txtTown" name="Town/City" required="required" /><br />
                    <label>&nbsp;&nbsp;Region</label>
                    <input class="alignment alignAdd" type="text" id="txtReg" name="Region" /><br />
                    <label>* Postcode/Zipcode</label>
                    <input class="alignment alignXtra" type="text" id="txtPost" name="Postcode/Zipcode" required="required" onchange="ValidateZipCode()" /><br />
                    <label>* Country</label>
                    <select class="alignment alignCountry" id="country" title="Choose Country" required="required" onchange="ValidateCountry()">
                        <option>India</option>
                        <option>US</option>
                        <option>United Kingdom</option>
                    </select><br />
                    <label>&nbsp;&nbsp;Telephone</label>
                    <input class="alignment alignXtra" type="text" id="txtPhone" name="Telephone" onchange="ValidatePhoneNo()" /><br />
                    <label>&nbsp;&nbsp;Fax</label>
                    <input class="alignment alignXtra" type="text" id="txtFax" name="Fax" onchange="ValidateFax()"/><br />
                    <label>* Email address</label>
                    <input class="alignment alignAdd" type="text" id="txtMail" name="Email address" required="required" onchange="ValidateEmail()" /><br />
                </div>
                <div style="color: #034072">
                    <asp:ImageButton ID="ImageButton1" class="cancel" type="reset" ImageUrl="~/Image/refresh_image.png" ImageAlign="Left" runat="server" OnClientClick="" formnovalidate="formnovalidate" />
                    <b>START AGAIN &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <span style="align: right; margin-right: 5%"><a href="#" onclick="Validation.js:MakePayment();">MAKE PAYMENT</a></span></b>
                    
                    <input type ="image" src="Image/gg.png" alt="submit" class="Payment" onchange="MakePayment()" formnovalidate="formnovalidate" />
                    <%--<asp:ImageButton ID="imgbtn3" class="Payment" ImageUrl="~/Image/gg.png" ImageAlign="Left" runat="server" formnovalidate="formnovalidate" onchange="MakePayment()" />--%>
                    <%--  <b style="align:left; margin-right: 10%">&nbsp;<span style="align:right; margin-right: 5%">MAKE PAYMENT</span></b>--%>
                </div>
                <div style="color: #034072">
                    <input type ="image" src="Image/cancel_image.png" alt="submit" class="cancel" onchange="Cancel()" formnovalidate="formnovalidate" />
                    <%--<asp:ImageButton ID="imbbtn2" class="cancel" ImageUrl="~/Image/cancel_image.png" ImageAlign="Left" runat="server" onchange="Cancel()" formnovalidate="formnovalidate"/>--%>
                    <b>CANCEL</b>
                </div>
                <div class="line">
                    <hr />                   
                </div>
                <h3 class="h3">Refunds and Returns</h3>
                <p class="h3" style="margin-top:0%">For more information visit our <u>Refunds and Returns Policy.</u></p>
                <div><img src="Image/world.gif" style="float: left"/><p class="help"style="align: right;">For help with your payment visit the <u>WorldPay Help</u></p></div>

            </div>


            <div>
                <img class="question" src="Image/question.png" align="left" />
            </div>
            <div>
                <img class="question2" src="Image/question.png" align="left" />
            </div>

        </div>


        <footer class="footer">
            <h1>Thank you for shopping at Flowershop. Have a nice day</h1>
        </footer>
    </form>
</body>
</html>
