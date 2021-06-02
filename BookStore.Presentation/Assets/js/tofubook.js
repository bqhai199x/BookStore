    
//// init Isotope
//var initial_items = 4;
//var next_items = 4;
//var $grid = $('.isotope-grid').isotope({
//    itemSelector: '.isotope-item',
//    percentPosition: true,
//    animationEngine: 'best-available',
//    layoutMode: 'fitRows',
//    stamp: '.isotope-item--static',
//    masonry: {
//        columnWidth: '.isotope-item'
//    }
//});


//// bind filter button click
//$('.filter-tope-group').on('click', 'button', function () {
//    var filterValue = $(this).attr('data-filter');
//    // use filterFn if matches value
//    $grid.isotope({ filter: filterValue });
//    updateFilterCounts();
//});
//function updateFilterCounts() {
//    // get filtered item elements
//    var itemElems = $grid.isotope('getFilteredItemElements');
//    var count_items = $(itemElems).length;

//    if (count_items > initial_items) {
//        $('.loadmore').show();
//    }
//    else {
//        $('.loadmore').hide();
//    }
//    if ($('.isotope-item').hasClass('visible_item')) {
//        $('.isotope-item').removeClass('visible_item');
//    }
//    var index = 0;

//    $(itemElems).each(function () {
//        if (index >= initial_items) {
//            $(this).addClass('visible_item');
//        }
//        index++;
//    });
//    $grid.isotope('layout');
//}

//function showNextItems(pagination) {
//    var itemsMax = $('.visible_item').length;
//    var itemsCount = 0;
//    $('.visible_item').each(function () {
//        if (itemsCount < pagination) {
//            $(this).removeClass('visible_item');
//            itemsCount++;
//        }
//    });
//    if (itemsCount >= itemsMax) {
//        $('.loadmore').hide();
//    }
//    $grid.isotope('layout');
//}
//// function that hides items when page is loaded
//function hideItems(pagination) {
//    var itemsMax = $('.isotope-item').length;
//    var itemsCount = 0;
//    $('.isotope-item').each(function () {
//        if (itemsCount >= pagination) {
//            $(this).addClass('visible_item');
//        }
//        itemsCount++;
//    });
//    if (itemsCount < itemsMax || initial_items >= itemsMax) {
//        $('.loadmore').hide();
//    }
//    $grid.isotope('layout');
//}

//$('.loadmore').on('click','button', function (e) {
//    e.preventDefault();
//    showNextItems(next_items);
//});

//hideItems(initial_items);

// external js: isotope.pkgd.js

// external js: isotope.pkgd.js

$(document).ready(function () {

    // init Isotope
    var $container = $('.isotope-grid').isotope({
        itemSelector: '.isotope-item',
        percentPosition: true,
        animationEngine: 'best-available',
        layoutMode: 'fitRows',
        stamp: '.isotope-item--static',
        masonry: {
            columnWidth: '.isotope-item'
        },
    });

    // filter functions
    var filterFns = {
        // show if number is greater than 50
        lessThan100k: function () {
            var price = $(this).find('.price').text();
            price = parseFloat(price.replace('.', ''));
            return parseInt(price, 10) < 100000;
        },
        greaterThan100k: function () {
            var price = $(this).find('.price').text();
            price = parseFloat(price.replace('.', ''));
            return parseInt(price, 10) > 100000;
        },

        //// show if name ends with -ium
        ////greaterThan100: function () {
        ////    var name = $(this).find('.name').text();
        ////    return name.match(/ium$/);
        ////}
    };

    var filters = {};

    function concatValues(obj) {
        var value = '';
        for (var prop in obj) {
            value += obj[prop];
        }
        return value;
    }

    // bind filter button click
    $('.filter-tope-group, .filter-tope-group-2').on('click', 'button', function (event) {
        var $button = $(event.currentTarget);
        // get group key
        var $buttonGroup = $button.parents('.filter-tope-group, .filter-tope-group-2');
        var filterGroup = $buttonGroup.attr('data-filter-group');
        // set filter for group
        var temp = $button.attr('data-filter');
        temp = filterFns[temp] || temp;
        filters[filterGroup] = temp;

        // combine filters
        var filterValue = concatValues(filters);
        filterValue = 
        // use filterFn if matches value
        $container.isotope({
            filter: filterValue
        });
    });


    //$('#sorts').on('click', 'button', function () {
    //    var filterValue = $(this).attr('data-filter');
    //    // use filterFn if matches value
    //    filterValue = filterFns[filterValue] || filterValue;
    //    $container.isotope({
    //        filter: filterValue
    //    });
    //});

    // bind sort button click   
    //$('#sorts').on('click', 'a', function () {
    //    var sortByValue = $(this).attr('data-sort-by');
    //    $container.isotope({
    //        sortBy: sortByValue
    //    });
    //});

    //// change is-checked class on buttons
    //$('.button-group').each(function (i, buttonGroup) {
    //    var $buttonGroup = $(buttonGroup);
    //    $buttonGroup.on('click', 'button', function () {
    //        $buttonGroup.find('.is-checked').removeClass('is-checked');
    //        $(this).addClass('is-checked');
    //    });
    //});

    //****************************
    // Isotope Load more button
    //****************************
    var initShow = 8; //number of items loaded on init & onclick load more button
    var counter = initShow; //counter for load more button
    var iso = $container.data('isotope'); // get Isotope instance

    loadMore(initShow); //execute function onload

    function loadMore(toShow) {
        $container.find(".hidden").removeClass("hidden");

        var hiddenElems = iso.filteredItems.slice(toShow, iso.filteredItems.length).map(function (item) {
            return item.element;
        });
        $(hiddenElems).addClass('hidden');
        $container.isotope('layout');

        //when no more to load, hide show more button
        if (hiddenElems.length == 0) {
            jQuery(".loadmore").hide();
        } else {
            jQuery(".loadmore").show();
        };

    }

    //append load more button
    //$container.after('<button id="load-more"> Load More</button>');

    //when load more button clicked
    $('.loadmore').on('click', 'button', function () {
        if ($('.filter-tope-group').data('clicked')) {
            //when filter button clicked, set initial value for counter
            counter = initShow;
            $('.filter-tope-group').data('clicked', false);
        } else {
            counter = counter;
        };

        counter = counter + initShow;

        loadMore(counter);
    });

    //when filter button clicked
    $(".filter-tope-group").click(function () {
        $(this).data('clicked', true);

        loadMore(initShow);
    });



});