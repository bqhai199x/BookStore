///*==================================================================
//[ active ]*/

var isotopeButton = $('.filter-tope-group button');

$(isotopeButton).each(function () {
    $(this).on('click', function () {
        for (var i = 0; i < isotopeButton.length; i++) {
            $(isotopeButton[i]).removeClass('how-active1');
        }

        $(this).addClass('how-active1');
    });
});

var isotopeButton2 = $('.filter-tope-group-2 button');

$(isotopeButton2).each(function () {
    $(this).on('click', function () {
        for (var i = 0; i < isotopeButton2.length; i++) {
            $(isotopeButton2[i]).removeClass('filter-link-active');
        }

        $(this).addClass('filter-link-active');
    });
});

var isotopeButton3 = $('.sort-tope-group button');

$(isotopeButton3).each(function () {
    $(this).on('click', function () {
        for (var i = 0; i < isotopeButton3.length; i++) {
            $(isotopeButton3[i]).removeClass('filter-link-active');
        }

        $(this).addClass('filter-link-active');
    });
});

///*==================================================================
//[ isotope ]*/

// init Isotope
var qsRegex;
var filters = {};
var buttonFilter;
var initial_items = 8;
var next_items = 8;

var $grid = $('.isotope-grid').isotope({
    itemSelector: '.isotope-item',
    percentPosition: true,
    animationEngine: 'best-available',
    layoutMode: 'fitRows',
    stamp: '.isotope-item--static',
    masonry: {
        columnWidth: '.isotope-item'
    },
    getSortData: {
        price: function (itemElem) {
            var price = $(itemElem).find('.pricesort').text();
            return parseFloat(price.replace('.', ''));
        },
        rate: function (itemElem) {
            var rate = $(itemElem).find('.ratesort').text();
            return parseInt(rate);
        },
        newness: function (itemElem) {
            var newness = $(itemElem).find('.newsort').text();
            return parseInt(newness);
        },
        name: '.name'
    },
    filter: function () {
        var $this = $(this);
        var searchResult = qsRegex ? $this.find('.name, .author, .publisher').text().match(qsRegex) : true;
        var buttonResult = buttonFilter ? $this.is(buttonFilter) : true;
        return searchResult && buttonResult;
    }
});

// use value of search field to filter
var $quicksearch = $('.quicksearch').keyup(debounce(function () {
    qsRegex = new RegExp($quicksearch.val(), 'gi');
    $grid.isotope();
    updateFilterCounts();
}, 300));

// debounce so filtering doesn't happen every millisecond
function debounce(fn, threshold) {
    var timeout;
    threshold = threshold || 100;
    return function debounced() {
        clearTimeout(timeout);
        var args = arguments;
        var _this = this;
        function delayed() {
            fn.apply(_this, args);
        }
        timeout = setTimeout(delayed, threshold);
    };
}

function concatValues(obj) {
    var value = '';
    for (var prop in obj) {
        value += obj[prop];
    }
    return value;
}

//bind filter button click
$('.filter-tope-group, .filter-tope-group-2').on('click', 'button', function (event) {
    var $button = $(event.currentTarget);
    // get group key
    var $buttonGroup = $button.parents('.filter-tope-group, .filter-tope-group-2');
    var filterGroup = $buttonGroup.attr('data-filter-group');
    // set filter for group
    filters[filterGroup] = $button.attr('data-filter');

    // combine filters
    buttonFilter = concatValues(filters);
    $grid.isotope();
    updateFilterCounts();
});

$('.sort-tope-group').on('click', 'button', function () {
    var sortByValue = $(this).attr('data-sort-by');
    sortByValue = sortByValue.split(' ');
    var value = sortByValue[0];
    var isSortByAsc = sortByValue[1] == 'asc' ? true : false;
    $grid.isotope({
        sortBy: value,
        sortAscending: isSortByAsc
    });
    updateFilterCounts();
});

function updateFilterCounts() {
    // get filtered item elements
    var itemElems = $grid.isotope('getFilteredItemElements');
    var count_items = $(itemElems).length;

    if (count_items > initial_items) {
        $('.loadmore').show();
    }
    else {
        $('.loadmore').hide();
    }
    if ($('.isotope-item').hasClass('visible_item')) {
        $('.isotope-item').removeClass('visible_item');
    }
    var index = 0;

    $(itemElems).each(function () {
        if (index >= initial_items) {
            $(this).addClass('visible_item');
        }
        index++;
    });
    $grid.isotope('layout');
}

function showNextItems(pagination) {
    var itemsMax = $('.visible_item').length;
    var itemsCount = 0;
    $('.visible_item').each(function () {
        if (itemsCount < pagination) {
            $(this).removeClass('visible_item');
            itemsCount++;
        }
    });
    if (itemsCount >= itemsMax) {
        $('.loadmore').hide();
    }
    $grid.isotope('layout');
}
// function that hides items when page is loaded
function hideItems(pagination) {
    var itemsMax = $('.isotope-item').length;
    var itemsCount = 0;
    $('.isotope-item').each(function () {
        if (itemsCount >= pagination) {
            $(this).addClass('visible_item');
        }
        itemsCount++;
    });
    if (itemsCount < itemsMax || initial_items >= itemsMax) {
        $('.loadmore').hide();
    }
    $grid.isotope('layout');
}

$('.loadmore').on('click', 'button', function (e) {
    e.preventDefault();
    showNextItems(next_items);
    $('html,body').animate({
        scrollTop: $('.scroll').offset().top - $('.isotope-item').height() * 1.61
    }, 1500);
});

hideItems(initial_items);

/*==================================================================
    [ Show modal1 ]*/

$('.js-show-modal1').on('click', function (e) {
    e.preventDefault();
    var url = '/Product/QuickProduct?id=' + $(this).find('.newsort').text();
    $('.quick-product').load(url, function () {
        $('.js-modal1').addClass('show-modal1');
    })
});

$('.js-hide-modal1').on('click', function () {
    $('.js-modal1').removeClass('show-modal1');
});

/*==================================================================
    [ Quick cart ]*/



/*==================================================================
    [ AddToCart ]*/

$('.js-addcart-detail').each(function () {
    $(this).on('click', function () {
        var nameProduct = $('.name').text();
        $.ajax({
            url: "/Cart/AddToCart",
            type: "POST",
            data: {
                "productId": $('#detailId').val(),
                "quantity": $('.num-product2').val()
            },
            success: function (data) {
                if (!data) {
                    swal({
                        icon: 'error',
                        title: 'Bạn chưa đăng nhập !',
                        buttons: 'Đăng nhập',
                        text: 'Vui lòng đăng nhập để thực hiện chức năng này!',
                    }).then((value) => {
                        if (value) {
                            window.location = "/dang-nhap";
                        }
                    });
                }
                else {
                    $('.header-cart-content').load("/Cart/QuickCart", function () {
                        $('.icon-header-noti').attr('data-notify', data)
                        swal(nameProduct, "đã được thêm vào giỏ hàng !", "success");
                    })
                }
            },
            error: function (error) {
                swal("Lỗi", "Có lỗi đã xảy ra !", "error");
            }
        });
    });
});

/*==================================================================
    [ AddReview ]*/

$('.send').on('click', function () {
    if ($('#review').val().trim().length == 0) {
        toastr.error('Bạn chưa nhập nội dung', '', { positionClass: "toast-bottom-right" });
    }
    else {
        $.ajax({
            url: "/Product/AddReview",
            type: "POST",
            data: {
                "productId": $('#detailId').val(),
                "rate": $('#rating').val(),
                "content": $('#review').val()
            },
            success: function (data) {
                $('#review-content').load("/Product/Review?productId=" + $('#detailId').val());
                $('#reviewCount').text("Đánh giá (" + data + ")");
                $('#review').val('');
                $('#rating').val('');
                $('.item-rating').removeClass('zmdi-star');
                $('.item-rating').removeClass('zmdi-star-outline');
                $('.item-rating').addClass('zmdi-star-outline');
                toastr.success('Đăng tải bình luận thành công', '', { positionClass: "toast-bottom-right" });
            },
            error: function (error) {
                toastr.error('Đăng tải bình luận thất bại');
            }
        })
    }
});

/*==================================================================
    [ RemoveReview ]*/
function RemoveReview(reviewID) {
    $.ajax({
        url: "/Product/DeleteReview?reviewId=" + reviewID,
        success: function (data) {
            $('#review-content').load("/Product/Review?productId=" + $('#detailId').val());
            $('#reviewCount').text("Đánh giá (" + data + ")");
            toastr.success('Xoá thành công', '', { positionClass: "toast-bottom-right" });
        },
        error: function (error) {
            toastr.error('Xoá thất bại');
        }
    })
}

/*==================================================================
    [ Show more description ]*/

$('.description').showMore({
    minheight: 240,
    buttontxtmore: 'Xem thêm nội dung',
    buttontxtless: 'Thu gọn nội dung',
    buttoncss: 'flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-20 trans-04 showmore-btn',
    animationspeed: 500
});

/*==================================================================
    [ Search product ]*/
$("document").ready(function () {
    $('.header-cart-content').load("/Cart/QuickCart", function () {
        $('.icon-header-noti').attr('data-notify', $('#numCart').val())
    });
    var isSearch = $("#isSearch").val();
    if (isSearch) {
        $("[data-filter='.search-value']").trigger('click');
    }
});

/*==================================================================
    [ Update Quantity ]*/

function UpdateQuantity(productId, quantity) {
    $.ajax({
        url: "/Cart/UpdateQuantity",
        type: "POST",
        data: {
            "productId": productId,
            "quantity": quantity
        },
        success: function (data) {
            $('.shopping-cart').load('/Cart/ShoppingCart', function () {
                $('.header-cart-content').load('/Cart/QuickCart', function () {
                    $('.icon-header-noti').attr('data-notify', data);
                })
            })
        },
        error: function (error) {
            toastr.warning('Host cùi bấm từ từ thôi =))', '', { positionClass: "toast-bottom-right" })
        }
    });
}

/*==================================================================
    [ Checkout ]*/

function Checkout() {
    var cityElement = $("select[name='city']");
    var city = cityElement.find('option[value="' + cityElement.val() + '"]').text();

    var districtElement = $("select[name='district']");
    var district = districtElement.find('option[value="' + districtElement.val() + '"]').text();

    var communeElement = $("select[name='commune']");
    var commune = communeElement.find('option[value="' + communeElement.val() + '"]').text();

    var street = $("textarea[name='street']").val();

    var shipType = $("input[name='shiptype']").val();
    var note = (shipType == 'home' ? '[Nhà riêng] ' : '[Cơ quan] ');

    var address = note + street + ', ' + commune + ', ' + district + ', ' + city;
    $("input[name='address']").val(address);

    $.ajax({
        url: "/Order/CheckoutRequest",
        type: "POST",
        data: $('.checkout form').serialize(),
        success: function (data) {
            if (data.success) {
                swal({
                    icon: 'success',
                    title: 'Đặt hàng thành công !',
                    buttons: 'OK',
                    text: 'Đơn hàng đã được gửi tới người bán. Bạn có thể xem tại mục quản lý đơn hàng.',
                }).then((value) => {
                    window.location = "/";
                });
            }
            else {
                swal("Đặt hàng thất bại !", "Có một lỗi đã xảy ra vui lòng thử lại sau !", "error");
            }
        },
        error: function (error) {
            swal("Lỗi", "Có một lỗi đã xảy ra vui lòng thử lại !", "error");
        }
    });
}

function CancelOrder(orderId) {
    swal({
        text: "Bạn có chắc muốn huỷ đơn hàng này?",
        icon: "warning",
        buttons: true,
        dangerMode: true
    })
    .then((willCancel) => {
        if (willCancel) {
            $.ajax({
                url: "/Order/CancelOrder",
                type: "POST",
                data: {
                    "orderId": orderId
                },
                success: function (data) {
                    if (data.success) {
                        swal({
                            icon: 'success',
                            title: 'Huỷ đơn hàng thành công !',
                            buttons: 'OK',
                            text: 'Đơn hàng đã được huỷ. Mong bạn có trải nghiệm tốt hơn lần sau !',
                        }).then((value) => {
                            window.location = "/chi-tiet-don-hang/" + orderId;
                        });
                    }
                    else {
                        swal("Huỷ đơn hàng thất bại !", "Có một lỗi đã xảy ra vui lòng thử lại sau !", "error");
                    }
                },
                error: function (error) {
                    swal("Lỗi", "Có một lỗi đã xảy ra vui lòng thử lại !", "error");
                }
            });
        }
    });
}