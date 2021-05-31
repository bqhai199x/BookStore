var count = 0;

$(".loadmore").click(function() {
    count = count + 4;
    var url = "/Home/Product?count=" + count;
    $("#product").load(url, function () {
        /*$(".loadmore").hide();*/
    });
})

function searchByCategory(id) {
    var url = "/Home/Product?cateId=" + id;
    $("#product").load(url)
}