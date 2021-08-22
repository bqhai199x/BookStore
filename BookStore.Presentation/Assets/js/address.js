/*==================================================================
    [ Select Address ]*/

function GetCity() {
    $.getJSON("Assets/json/tinh_tp.json", function (data) {
        $.each(data, function (key, val) {
            $("select[name='city']").append("<option code='" + val.code + "' value='"
                + val.slug + "'>" + val.name_with_type + "</option>");
        });
    });
}

function GetDistrict(code) {
    $.getJSON("Assets/json/quan-huyen/" + code + ".json", function (data) {
        $.each(data, function (key, val) {
            $("select[name='district']").append("<option code='" + val.code + "' value='"
                + val.slug + "'>" + val.name_with_type + "</option>");
        })
    })
}

function GetCommune(code) {
    $.getJSON("Assets/json/xa-phuong/" + code + ".json", function (data) {
        $.each(data, function (key, val) {
            $("select[name='commune']").append("<option code='" + val.code + "' value='"
                + val.slug + "'>" + val.name_with_type + "</option>");
        })
    })
}

function CityChange() {
    $("select[name='city']").on('change', function () {
        $("[name='district'] option").each(function () {
            $(this).remove();
        });
        $("select[name='district']").append("<option value='' hidden>Chọn quận huyện</option>");
        $("select[name='commune'] option").each(function () {
            $(this).remove();
        });
        $("select[name='commune']").append("<option value='' hidden>Chọn xã phường</option>");
        GetDistrict($(this).find('option[value="' + $(this).val() + '"]').attr('code'));
    })
}

function DistrictChange() {
    $("select[name='district']").on('change', function () {
        $("select[name='commune'] option").each(function () {
            $(this).remove();
        });
        $("select[name='commune']").append("<option value='' hidden>Chọn xã phường</option>");
        GetCommune($(this).find('option[value="' + $(this).val() + '"]').attr('code'));
    })
}

function BindAddress(name, type) {
    var element = $("select[name='" + type + "'] option[value='" + name + "']");
    element.attr("selected", "selected");
    return element.attr('code');
}

function Checkout() {
    var cityElement = $("select[name='city']");
    var city = cityElement.find('option[value="' + cityElement.val() + '"]').text();

    var districtElement = $("select[name='district']");
    var district = districtElement.find('option[value="' + districtElement.val() + '"]').text();

    var communeElement = $("select[name='commune']");
    var commune = communeElement.find('option[value="' + communeElement.val() + '"]').text();

    var street = $("textarea[name='street']").val();

    var address = street + ', ' + commune + ', ' + district + ', ' + city;
    $("input[name='address']").val(address);

    var shipType = $("input[name='shiptype']").val();
    var noteMassage = $("input[name='noteMessage']").val();

    var note = (shipType == 'home' ? '[Nhà riêng] ' : '[Cơ quan] ') + noteMassage;
    $("input[name='note']").val(note);
}