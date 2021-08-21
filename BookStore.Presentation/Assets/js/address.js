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
        $("select[name='district']").append("<option value='0' hidden>Chọn quận huyện</option>");
        $("select[name='commune'] option").each(function () {
            $(this).remove();
        });
        $("select[name='commune']").append("<option value='0' hidden>Chọn xã phường</option>");
        GetDistrict($(this).find('option[value="' + $(this).val() + '"]').attr('code'));
    })
}

function DistrictChange() {
    $("select[name='district']").on('change', function () {
        $("select[name='commune'] option").each(function () {
            $(this).remove();
        });
        $("select[name='commune']").append("<option value='0' hidden>Chọn xã phường</option>");
        GetCommune($(this).find('option[value="' + $(this).val() + '"]').attr('code'));
    })
}

function BindAddress(name, type) {
    var element = $("select[name='" + type + "'] option[value='" + name + "']");
    element.attr("selected", "selected");
    return element.attr('code');
}