/*==================================================================
[ Validate ]*/
var input = $('.validate-input .input100');

function Valid() {
    $('.err-message').text('');
    var check = true;

    for (var i = 0; i < input.length; i++) {
        if (validate(input[i]) == false) {
            showValidate(input[i]);
            check = false;
        }
    }
    return check;
};

$('.validate-form .input100').each(function () {
    $(this).focus(function () {
        hideValidate(this);
    });
});

function validate(input) {
    if ($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
        if ($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
            $(input).parent().attr('data-validate', 'Email không hợp lệ');
            return false;
        }
    }
    else if ($(input).attr('type') == 'tel' || $(input).attr('name') == 'phoneNumber') {
        if ($(input).val().trim().match(/^[0-9]{10}$/) == null) {
            $(input).parent().attr('data-validate', 'Số điện thoại không hợp lệ');
            return false;
        }
    }
    else {
        if ($(input).val().trim() == '') {
            return false;
        }
    }
}

function showValidate(input) {
    var thisAlert = $(input).parent();

    $(thisAlert).addClass('alert-validate');
}

function hideValidate(input) {
    var thisAlert = $(input).parent();

    $(thisAlert).removeClass('alert-validate');
}