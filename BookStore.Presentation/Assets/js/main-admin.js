/*==================================================================
    [ Product Admin ]*/

function ProductUpsert(prodcutId) {
    var url = "/Admin/ProductAdmin/ProductModal?productId=" + prodcutId;
    $("#myModalBodyDiv1").load(url, function () {
        $("#myModal1").modal("show");
    })
}

function ProductDelete(productId) {
    swal({
        text: "Bạn có chắc muốn xoá sản phẩm này?",
        icon: "warning",
        buttons: true,
        dangerMode: true
    })
        .then((willCancel) => {
            if (willCancel) {
                $.ajax({
                    url: "/Admin/ProductAdmin/ProductDelete",
                    type: "POST",
                    data: {
                        "productId": productId
                    },
                    success: function (data) {
                        window.location = "/trang-quan-tri";
                    },
                    error: function (error) {
                        swal("Lỗi", "Có một lỗi đã xảy ra vui lòng thử lại !", "error");
                    }
                });
            }
        });
}

function LoadImage(event) {
    var imgLink;
    var img = document.getElementById('img');
    for (var i = 0; i < event.target.files.length; i++) {
        imgLink = URL.createObjectURL(event.target.files[i]);
        img.innerHTML += '<label class="how-itemcart1 d-inline-block" onclick="DeleteImage(this)"><img src="' + imgLink + '" /></label>';
    }
};

function DeleteImage(el) {
    var removeId = document.getElementById('removeId');
    removeId.value += ',' + el.getAttribute("data-img");
    el.remove();
}

/*==================================================================
    [ Order Admin ]*/

function ViewDetail(orderId) {
    var url = "/Admin/OrderAdmin/OrderDetail?orderId=" + orderId;
    $("#myModalBodyDiv1").load(url, function () {
        $("#myModal1").modal("show");
    })
}

function UpdateOrder(orderId) {
    $.ajax({
        url: "/Admin/OrderAdmin/UpdateStatus",
        type: "POST",
        data: {
            "orderId": orderId,
            "status": $("select[data-order='" + orderId + "']").val()
        },
        success: function (data) {
            if (data) {
                swal("Thành công", "Trạng thái đơn hàng đã được cập nhật !", "success");
            }
            else {
                swal("Cập nhật thất bại", "Trạng thái đơn hàng hiện không có sự thay đổi !", "warning");
            }
        },
        error: function (error) {
            swal("Lỗi", "Có một lỗi đã xảy ra vui lòng thử lại !", "error");
        }
    });
}

function Reset() {
    $('#orderForm select option').removeAttr('selected');
    $('#orderForm input[type="date"]').removeAttr('value');
}