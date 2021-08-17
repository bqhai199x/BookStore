/*==================================================================
[ Validate ]*/
var input = $('.validate-input .input100');

$('.login100-form').submit(function () {
    var check = true;
    for (var i = 0; i < input.length; i++) {
        if (validate(input[i]) == false) {
            showValidate(input[i]);
            check = false;
        }
    }
    var type = $(this).attr('type');
    if (check && type == 'login') {
        $.ajax({
            url: "/Account/LoginRequest",
            type: "POST",
            data: $(this).serialize(),
            success: function (data) {
                if (data.success) window.location = "/";
                else $('.err-message').text('Tài khoản hoặc mật khẩu không chính xác!');
            },
            error: function (error) {
                swal("Lỗi", "Có một lỗi đã xảy ra vui lòng thử lại !", "error");
            }
        });
    }
    else if (check && type == 'register') {
        $.ajax({
            url: "/Account/RegisterRequest",
            type: "POST",
            data: $(this).serialize(),
            success: function (data) {
                if (data.success) {
                    swal({
                        icon: 'success',
                        title: 'Đăng ký thành công !',
                        buttons: 'Đăng nhập ngay',
                        text: '',
                    }).then((value) => {
                        if (value) {
                            window.location = "/dang-nhap";
                        }
                    });
                }
                else {
                    if (data.existUser) {
                        var input = $("input[name='UserName']");
                        $(input).parent().attr('data-validate', 'Tài khoản đã tồn tại');
                        $(input).parent().addClass('alert-validate');
                    } 
                    if (data.existEmail) {
                        var input = $("input[name='Email']");
                        $(input).parent().attr('data-validate', 'Email đã tồn tại');
                        $(input).parent().addClass('alert-validate');
                    }
                    if (data.existPhone) {
                        var input = $("input[name='Phone']");
                        $(input).parent().attr('data-validate', 'Số điện thoại đã tồn tại');
                        $(input).parent().addClass('alert-validate');
                    }
                }
            },
            error: function (error) {
                swal("Lỗi", "Có một lỗi đã xảy ra vui lòng thử lại !", "error");
            }
        });
    }
});

$('.validate-form .input100').each(function () {
    $(this).on('input', function () {
        $('.err-message').text('');
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
    else if ($(input).attr('name') == 'UserName') {
        if ($(input).val().trim() == '') {
            $(input).parent().attr('data-validate', 'Bạn chưa nhập tài khoản'); 
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