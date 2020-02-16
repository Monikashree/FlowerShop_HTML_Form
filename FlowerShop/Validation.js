function ValidateCardNumber() {
    var x = document.getElementById("txtCardNum").value;
    var regex = /^(?:4[0-9]{12}(?:[0-9]{3})?)$/;
    if (!x.match(regex)) {
        alert("Card number is invalid!");
        x.focus();
    }
}

function ValidateSecurityCode() {
    var x = document.getElementById("txtCode").value;
    var regex = /[0-9]{3}/;
    if (!x.match(regex)) alert("Security code is invalid!");
}

function ValidateExpiryMonth() {
    var x = document.getElementById("ddlMonth").selectedIndex;

    if (x === 0) alert("Expiry Month is invalid!");
}

function ValidateExpiryYear() {
    var y = document.getElementById("ddlYear").selectedIndex;
    if (y === null) alert("Expiry Year is invalid!");
}

function ValidateName() {
    var x = document.getElementById("txtCardName").value;
    var regex = /^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$/;
    if (!x.match(regex)) alert("Name is Invalid");
}

function ValidateAddress() {
    var x = document.getElementById("txtAdd1").value;
    var regex = /^[a-zA-Z0-9\s,'-]*$/;
    if (!x.match(regex)) alert("Address is invalid!");
}

function ValidatePhoneNo() {
    var x = document.getElementById("txtPhone").value;
    var regex = /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
    if (!x.match(regex)) alert("Phone number is invalid!");
}

function ValidateFax() {
    var x = document.getElementById("txtFax").value;
    var regex = /^\+?[0-9]{6,}$/;
    if (!x.match(regex)) alert("Fax number is invalid!");
}

function ValidateEmail() {
    var x = document.getElementById("txtMail").value;
    var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    if (!x.match(regex)) alert("Email is invalid!");
}

function ValidateZipCode() {
    var x = document.getElementById("txtPost").value;
    var regex = /^[0-9]{5}(?:-[0-9]{4})?$/;
    if (!x.match(regex)) alert("Zip Code is invalid!");
}

function ValidateCountry() {
    var x = document.getElementById("txtCountry").selectedIndex;
    if (x === 0) alert("Country is invalid");
}

function Cancel() {
    window.stop();
}

function MakePayment() {
    var cardNum = document.getElementById("txtCardnum").value.length;
    var code = document.getElementById("txtCode").value.length;
    var name = document.getElementById("txtCardName").value.length;
    var address = document.getElementById("txtAdd1").value.length;
    var town = document.getElementById("txtTown").value.length;
    var post = document.getElementById("txtPost").value.length;
    var country = document.getElementById("txtCountry").value.length;
    var email = document.getElementById("txtMail").value.length;
    if (
      cardNum > 0 &&
      code > 0 &&
      name > 0 &&
      address > 0 &&
      town > 0 &&
      post > 0 &&
      country > 0 &&
      email > 0
    )
    {
        alert("Payment Successfull!");
    }
    else
    {
        alert("Please fill out the details and Try Again....");
    }
}