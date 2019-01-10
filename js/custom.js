$(document).ready(function(){ 
	
		$('.service-offered-head-a li').click(function(event){
			event.preventDefault();
			$('.service-offered-head-a li span').removeClass("rectangle");
			$('.service-offered-head-a li.active span').addClass("rectangle");
	});
});

//function scrollvisible_a() {
//    $('#click-more-a').text("SEE LESS");
//    $('.vehicle-model-selector ul').css({ "overflow-y": "scroll", 'height': '215px' });
//    $('#click-more-a').one("click", scrollhidden_a);
//}
//function scrollhidden_a() {
//    $('#click-more-a').text("SEE MORE");
//    $('.vehicle-model-selector ul').css({ "overflow": "hidden", 'height': '120px' });
//    $('.vehicle-model-selector ul').animate({
//        scrollTop: $(".vehicle-model-selector ul").offset().top - 2000
//    }, 1400);
//    $('#click-more-a').one("click", scrollvisible_a);
//}

$(document).ready(function () {
    function scrollvisible_a() {
        $('#click-more-a').text("SEE LESS");
        $('.vehicle-model-selector ul').css({ "overflow-y": "scroll", 'height': '215px' });
        $(document).on("click", "#click-more-a", scrollhidden_a);
    }
    function scrollhidden_a() {
        $('#click-more-a').text("SEE MORE");
        $('.vehicle-model-selector ul').css({ "overflow": "hidden", 'height': '120px' });
        $('.vehicle-model-selector ul').animate({
            scrollTop: $(".vehicle-model-selector ul").offset().top - 2000
        }, 1400);
        $(document).on("click", "#click-more-a", scrollvisible_a);
    }
    $(document).on("click", "#click-more-a", scrollvisible_a);
});

//function scrollvisible_b() {
//    $('#click-more-b').text("SEE LESS");
//    $('.type-name-selector ul').css({ "overflow-y": "scroll", 'height': '215px' });
//    $('#click-more-b').one("click", scrollhidden_b);
//}
//function scrollhidden_b() {
//    $('#click-more-b').text("SEE MORE");
//    $('.type-name-selector ul').css({ "overflow": "hidden", 'height': '120px' });
//    $('.type-name-selector ul').animate({
//        scrollTop: $(".type-name-selector ul").offset().top - 2000
//    }, 1400);
//    $('#click-more-b').one("click", scrollvisible_b);
//}
	
$(document).ready(function(){ 
    function scrollvisible_b() {
        $('#click-more-b').text("SEE LESS");
        $('.type-name-selector ul').css({ "overflow-y": "scroll", 'height': '215px' });
        $(document).on("click", "#click-more-b", scrollhidden_b);
    }
    function scrollhidden_b() {
        $('#click-more-b').text("SEE MORE");
        $('.type-name-selector ul').css({"overflow": "hidden", 'height': '120px'});
        $('.type-name-selector ul').animate({scrollTop: $(".type-name-selector ul").offset().top-2000
        }, 1400);
        $(document).on("click", "#click-more-b", scrollvisible_b);
    }
    $(document).on("click", "#click-more-b", scrollvisible_b);
			
});
$(document).ready(function(){ 
    function scrollvisible() {
        $('#click-more-c').text("SEE LESS");
        $('.type-width-selector ul').css({ "overflow-y": "scroll", 'height': '215px' });
        $(document).on("click", "#click-more-c", scrollhidden);
    }
    function scrollhidden() {
        $('#click-more-c').text("SEE MORE");
        $('.type-width-selector ul').css({"overflow": "hidden", 'height': '120px'});
        $('.type-width-selector ul').animate({scrollTop: $(".type-width-selector ul").offset().top-2000
        }, 1400);
        $(document).on("click", "#click-more-c", scrollvisible);
    }
    $(document).on("click", "#click-more-c", scrollvisible);
			
});
	
$(document).ready(function(){ 
    function scrollvisible() {
        $('#click-more-d').text("SEE LESS");
        $('.aspect-ratio-selector ul').css({ "overflow-y": "scroll", 'height': '215px' });
        $(document).on("click", "#click-more-d", scrollhidden);
    }
    function scrollhidden() {
        $('#click-more-d').text("SEE MORE");
        $('.aspect-ratio-selector ul').css({"overflow": "hidden", 'height': '120px'});
        $('.aspect-ratio-selector ul').animate({scrollTop: $(".aspect-ratio-selector ul").offset().top-2000
        }, 1400);
        $(document).on("click", "#click-more-d", scrollvisible);
    }
    $(document).on("click", "#click-more-d", scrollvisible);
			
});
$(document).ready(function(){ 
    function scrollvisible() {
        $('#click-more-e').text("SEE LESS");
        $('.rim-size-selector ul').css({ "overflow-y": "scroll", 'height': '215px' });
        $(document).on("click", "#click-more-e", scrollhidden);
    }
    function scrollhidden() {
        $('#click-more-e').text("SEE MORE");
        $('.rim-size-selector ul').css({"overflow": "hidden", 'height': '120px'});
        $('.rim-size-selector ul').animate({scrollTop: $(".rim-size-selector ul").offset().top-2000
        }, 1400);
        $(document).on("click", "#click-more-e", scrollvisible_b);
    }
    $(document).on("click", "#click-more-e", scrollvisible_b);
});
$(document).ready(function(){ 
    function scrollvisible() {
        $('#click-more-f').text("SEE LESS");
        $('.load-index-selector ul').css({ "overflow-y": "scroll", 'height': '215px' });
        $(document).on("click", "#click-more-f", scrollhidden);
    }
    function scrollhidden() {
        $('#click-more-f').text("SEE MORE");
        $('.load-index-selector ul').css({"overflow": "hidden", 'height': '120px'});
        $('.load-index-selector ul').animate({scrollTop: $(".load-index-selector ul").offset().top-2000
        }, 1400);
        $(document).on("click", "#click-more-f", scrollvisible);
    }
    $(document).on("click", "#click-more-f", scrollvisible);
			
}
	

	/*hide see more if less element presents*/
	$(window).load(function () {
	   
	    var $get_li = $(".vehicle-model-selector ul li").length;
	    if ($get_li < 4) {
	        $('#click-more-a').hide();
	    }
	    else {
	        $('#click-more-a').show();
	    }
	});
	$(document).ready(function () {
	    var $get_li = $(".type-name-selector ul li").length;
	    if ($get_li < 4) {
	        $('#click-more-b').hide();
	    }
	    else {
	        $('#click-more-b').show();
	    }
	});
	$(document).ready(function () {
	    var $get_li = $(".type-width-selector ul li").length;
	    if ($get_li < 4) {
	        $('#click-more-c').hide();
	    }
	    else {
	        $('#click-more-c').show();
	    }
	});
	$(document).ready(function () {
	    var $get_li = $(".aspect-ratio-selector ul li").length;
	    if ($get_li < 4) {
	        $('#click-more-d').hide();
	    }
	    else {
	        $('#click-more-d').show();
	    }
	});
	$(document).ready(function () {
	    var $get_li = $(".rim-size-selector ul li").length;
	    if ($get_li < 4) {
	        $('#click-more-e').hide();
	    }
	    else {
	        $('#click-more-e').show();
	    }
	});
	$(document).ready(function () {
	    var $get_li = $(".load-index-selector ul li").length;
	    if ($get_li < 4) {
	        $('#click-more-f').hide();
	    }
	    else {
	        $('#click-more-f').show();
	    }
	});

	
	$(document).ready(function () {

	    function showmore() {
	        $('.general-specification .read-more').text("READ LESS");
	        $('.specification-hidden-more').css("display", "block");
	        $('.general-specification .read-more').one("click", showless);
	    }
	    function showless() {
	        $('.general-specification .read-more').text("READ MORE");
	        $('.specification-hidden-more').css("display", "none");
	        $('.general-specification .read-more').one("click", showmore);
	    }
	    $(".general-specification .read-more").one("click", showmore);

	});


	$(document).ready(function () {
	    (function (e) { var t, o = { className: "autosizejs", append: "", callback: !1, resizeDelay: 10 }, i = '<textarea tabindex="-1" style="position:absolute; top:-999px; left:0; right:auto; bottom:auto; border:0; padding: 0; -moz-box-sizing:content-box; -webkit-box-sizing:content-box; box-sizing:content-box; word-wrap:break-word; height:0 !important; min-height:0 !important; overflow:hidden; transition:none; -webkit-transition:none; -moz-transition:none;"/>', n = ["fontFamily", "fontSize", "fontWeight", "fontStyle", "letterSpacing", "textTransform", "wordSpacing", "textIndent"], s = e(i).data("autosize", !0)[0]; s.style.lineHeight = "99px", "99px" === e(s).css("lineHeight") && n.push("lineHeight"), s.style.lineHeight = "", e.fn.autosize = function (i) { return this.length ? (i = e.extend({}, o, i || {}), s.parentNode !== document.body && e(document.body).append(s), this.each(function () { function o() { var t, o; "getComputedStyle" in window ? (t = window.getComputedStyle(u, null), o = u.getBoundingClientRect().width, e.each(["paddingLeft", "paddingRight", "borderLeftWidth", "borderRightWidth"], function (e, i) { o -= parseInt(t[i], 10) }), s.style.width = o + "px") : s.style.width = Math.max(p.width(), 0) + "px" } function a() { var a = {}; if (t = u, s.className = i.className, d = parseInt(p.css("maxHeight"), 10), e.each(n, function (e, t) { a[t] = p.css(t) }), e(s).css(a), o(), window.chrome) { var r = u.style.width; u.style.width = "0px", u.offsetWidth, u.style.width = r } } function r() { var e, n; t !== u ? a() : o(), s.value = u.value + i.append, s.style.overflowY = u.style.overflowY, n = parseInt(u.style.height, 10), s.scrollTop = 0, s.scrollTop = 9e4, e = s.scrollTop, d && e > d ? (u.style.overflowY = "scroll", e = d) : (u.style.overflowY = "hidden", c > e && (e = c)), e += w, n !== e && (u.style.height = e + "px", f && i.callback.call(u, u)) } function l() { clearTimeout(h), h = setTimeout(function () { var e = p.width(); e !== g && (g = e, r()) }, parseInt(i.resizeDelay, 10)) } var d, c, h, u = this, p = e(u), w = 0, f = e.isFunction(i.callback), z = { height: u.style.height, overflow: u.style.overflow, overflowY: u.style.overflowY, wordWrap: u.style.wordWrap, resize: u.style.resize }, g = p.width(); p.data("autosize") || (p.data("autosize", !0), ("border-box" === p.css("box-sizing") || "border-box" === p.css("-moz-box-sizing") || "border-box" === p.css("-webkit-box-sizing")) && (w = p.outerHeight() - p.height()), c = Math.max(parseInt(p.css("minHeight"), 10) - w || 0, p.height()), p.css({ overflow: "hidden", overflowY: "hidden", wordWrap: "break-word", resize: "none" === p.css("resize") || "vertical" === p.css("resize") ? "none" : "horizontal" }), "onpropertychange" in u ? "oninput" in u ? p.on("input.autosize keyup.autosize", r) : p.on("propertychange.autosize", function () { "value" === event.propertyName && r() }) : p.on("input.autosize", r), i.resizeDelay !== !1 && e(window).on("resize.autosize", l), p.on("autosize.resize", r), p.on("autosize.resizeIncludeStyle", function () { t = null, r() }), p.on("autosize.destroy", function () { t = null, clearTimeout(h), e(window).off("resize", l), p.off("autosize").off(".autosize").css(z).removeData("autosize") }), r()) })) : this } })(window.jQuery || window.$);

	    var __slice = [].slice; (function (e, t) { var n; n = function () { function t(t, n) { var r, i, s, o = this; this.options = e.extend({}, this.defaults, n); this.$el = t; s = this.defaults; for (r in s) { i = s[r]; if (this.$el.data(r) != null) { this.options[r] = this.$el.data(r) } } this.createStars(); this.syncRating(); this.$el.on("mouseover.starrr", "span", function (e) { return o.syncRating(o.$el.find("span").index(e.currentTarget) + 1) }); this.$el.on("mouseout.starrr", function () { return o.syncRating() }); this.$el.on("click.starrr", "span", function (e) { return o.setRating(o.$el.find("span").index(e.currentTarget) + 1) }); this.$el.on("starrr:change", this.options.change) } t.prototype.defaults = { rating: void 0, numStars: 5, change: function (e, t) { } }; t.prototype.createStars = function () { var e, t, n; n = []; for (e = 1, t = this.options.numStars; 1 <= t ? e <= t : e >= t; 1 <= t ? e++ : e--) { n.push(this.$el.append("<span class='glyphicon .glyphicon-star-empty'></span>")) } return n }; t.prototype.setRating = function (e) { if (this.options.rating === e) { e = void 0 } this.options.rating = e; this.syncRating(); return this.$el.trigger("starrr:change", e) }; t.prototype.syncRating = function (e) { var t, n, r, i; e || (e = this.options.rating); if (e) { for (t = n = 0, i = e - 1; 0 <= i ? n <= i : n >= i; t = 0 <= i ? ++n : --n) { this.$el.find("span").eq(t).removeClass("glyphicon-star-empty").addClass("glyphicon-star") } } if (e && e < 5) { for (t = r = e; e <= 4 ? r <= 4 : r >= 4; t = e <= 4 ? ++r : --r) { this.$el.find("span").eq(t).removeClass("glyphicon-star").addClass("glyphicon-star-empty") } } if (!e) { return this.$el.find("span").removeClass("glyphicon-star").addClass("glyphicon-star-empty") } }; return t }(); return e.fn.extend({ starrr: function () { var t, r; r = arguments[0], t = 2 <= arguments.length ? __slice.call(arguments, 1) : []; return this.each(function () { var i; i = e(this).data("star-rating"); if (!i) { e(this).data("star-rating", i = new n(e(this), r)) } if (typeof r === "string") { return i[r].apply(i, t) } }) } }) })(window.jQuery, window); $(function () { return $(".starrr").starrr() })

	    $(function () {

	        $('#new-review').autosize({ append: "\n" });

	        var reviewBox = $('#post-review-box');
	        var newReview = $('#new-review');
	        var openReviewBtn = $('#open-review-box');
	        var closeReviewBtn = $('#close-review-box');
	        var ratingsField = $('#ratings-hidden');

	        openReviewBtn.click(function (e) {
	            reviewBox.slideDown(400, function () {
	                $('#new-review').trigger('autosize.resize');
	                newReview.focus();
	            });
	            openReviewBtn.fadeOut(100);
	            closeReviewBtn.show();
	        });

	        closeReviewBtn.click(function (e) {
	            e.preventDefault();
	            reviewBox.slideUp(300, function () {
	                newReview.focus();
	                openReviewBtn.fadeIn(200);
	            });
	            closeReviewBtn.hide();

	        });

	        $('.starrr').on('starrr:change', function (e, value) {
	            ratingsField.val(value);
	        });
	    });
	});



	jQuery(document).ready(function () {
	    // This button will increment the value
	    $('.qtyplus').click(function (e) {
	        // Stop acting like a button
	        e.preventDefault();
	        // Get the field name
	        fieldName = $(this).attr('field');
	        // Get its current value
	        var currentVal = parseInt($('input[name=' + fieldName + ']').val());
	        // If is not undefined
	        if (currentVal == 24) {
	            $('input[name=' + fieldName + ']').val(currentVal);
	        }
	        else if (!isNaN(currentVal)) {
	            // Increment
	            $('input[name=' + fieldName + ']').val(currentVal + 1);
	        }
	        else {
	            // Otherwise put a 0 there
	            $('input[name=' + fieldName + ']').val(0);
	        }
	    });
	    // This button will decrement the value till 0
	    $(".qtyminus").click(function (e) {
	        // Stop acting like a button
	        e.preventDefault();
	        // Get the field name
	        fieldName = $(this).attr('field');
	        // Get its current value
	        var currentVal = parseInt($('input[name=' + fieldName + ']').val());
	        // If it isn't undefined or its greater than 0
	        if (!isNaN(currentVal) && currentVal > 0) {
	            // Decrement one
	            $('input[name=' + fieldName + ']').val(currentVal - 1);
	        } else {
	            // Otherwise put a 0 there
	            $('input[name=' + fieldName + ']').val(0);
	        }
	    });
	});

	$(document).ready(function () {

	    var all = $("#cpMain_ratingCnt5").text();
	    if (all >= 10) {
	        $(".user-bar-review-1").css("width", "100%")
	    }
	    else if (all >= 8) {
	        $(".user-bar-review-1").css("width", "80%")
	    }
	    else if (all >= 6) {
	        $(".user-bar-review-1").css("width", "60%")
	    }
	    else if (all >= 4) {
	        $(".user-bar-review-1").css("width", "40%")
	    }
	    else if (all >= 2) {
	        $(".user-bar-review-1").css("width", "20%")
	    }
	});
	$(document).ready(function () {
	    var all = $("#cpMain_ratingCnt4").text();

	    if (all >= 10) {
	        $(".user-bar-review-2").css("width", "100%")
	    }
	    else if (all >= 8) {
	        $(".user-bar-review-2").css("width", "80%")
	    }
	    else if (all >= 6) {
	        $(".user-bar-review-2").css("width", "60%")
	    }
	    else if (all >= 4) {
	        $(".user-bar-review-2").css("width", "40%")
	    }
	    else if (all >= 2) {
	        $(".user-bar-review-2").css("width", "20%")
	    }
	});
	$(document).ready(function () {
	    var all = $("#cpMain_ratingCnt3").text();

	    if (all >= 10) {
	        $(".user-bar-review-3").css("width", "100%")
	    }
	    else if (all >= 8) {
	        $(".user-bar-review-3").css("width", "80%")
	    }
	    else if (all >= 6) {
	        $(".user-bar-review-3").css("width", "60%")
	    }
	    else if (all >= 4) {

	        $(".user-bar-review-3").css("width", "40%")
	    }
	    else if (all >= 2) {
	        $(".user-bar-review-3").css("width", "20%")
	    }
	});
	$(document).ready(function () {
	    var all = $("#cpMain_ratingCnt2").text();
	    if (all >= 10) {
	        $(".user-bar-review-4").css("width", "100%")
	    }
	    else if (all >= 8) {
	        $(".user-bar-review-4").css("width", "80%")
	    }
	    else if (all >= 6) {
	        $(".user-bar-review-4").css("width", "60%")
	    }
	    else if (all >= 4) {
	        $(".user-bar-review-4").css("width", "40%")
	    }
	    else if (all >= 2) {
	        $(".user-bar-review-4").css("width", "20%")
	    }
	});

	$(document).ready(function () {
	    if ($("#collapse2").hasClass(".in")) {
	        $(".panel-heading").addClass(".change-bg");
	    }
	});




	//$(document).ready(function () {
	//    function cashon() {
	//        $(".cash-on-delivery").css("display", "block");
	//        $(".online-banking").css("display", "none");
	//        $('.online-te').one("click", onlineon);
	//    }
	//    function onlineon() {
	//        $(".online-banking").css("display", "block");
	//        $(".cash-on-delivery").css("display", "none");
	//        $('.cash-on').one("click", cashon);

	//    }
	//    $(".cash-on").one("click", cashon);
	//    $(".online-te").one("click", onlineon);
	//});

	$(document).ready(function () {
	    function passon() {
	        $(".password-registered").css("display", "none");
	        $(".reg-acc").one("click", showpasson)
	    }
	    function showpasson() {
	        $(".password-registered").css("display", "block");
	        $('.guest-ctn').one("click", passon);

	    }
	    $(".guest-ctn").one("click", passon);
	    $(".reg-acc").one("click", showpasson);
	});

	function OpenLoginPopUp() {
	    alert('h');
	    $('#divLogin').fadeIn();
	    return false;
	}

	function CloseLoginPopUp() {
	 
	    $('#divLogin').fadeOut();
	    return false;
	}

	$(function () {
	    $(".user-review-all-in-details .user-review-all-in-each").slice(0, 7).show();
	    $("#loadMor").on('click', function (e) {
	        e.preventDefault();
	        $(".user-review-all-in-details .user-review-all-in-each:hidden").slice(0, 7).slideDown();
	        if ($(".user-review-all-in-details .user-review-all-in-each:hidden").length == 0) {
	            $("#load").fadeOut('slow');
	            $("#loadMor").css({opacity:'0.5',cursor:"default"});
	        }
	       
	        $('html,body').animate({
	            scrollTop: $(this).offset().top
	        }, 1500);

	    });
	    var $reviewCount = $(".user-review-all-in-details .user-review-all-in-each").length;
	    if ($reviewCount < 7) {
	        $("#loadMor").hide();
	    }
	    else {
	        $("#loadMor").show();
	    }
	});

	$(document).ready(function () {
	    // Configure/customize these variables.
	    var showChar = 400;  // How many characters are shown by default
	    var ellipsestext = "...";
	    var moretext = "Read more";
	    var lesstext = "Read less";


	    $('.user-review-all-in-comment .more').each(function () {
	        var content = $(this).html();

	        if (content.length > showChar) {

	            var c = content.substr(0, showChar);
	            var h = content.substr(showChar, content.length - showChar);

	            var html = c + '<span class="moreellipses">' + ellipsestext + '&nbsp;</span><span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">' + moretext + '</a></span>';

	            $(this).html(html);
	        }

	    });
	    $(".morelink").click(function(){
	        if($(this).hasClass("less")) {
	            $(this).removeClass("less");
	            $(this).html(moretext);
	        } else {
	            $(this).addClass("less");
	            $(this).html(lesstext);
	        }
	        $(this).parent().prev().toggle();
	        $(this).prev().toggle();
	        return false;
	    });
	});

	$(document).ready(function () {
	    var max_items_page = 9;

	    $('.all-results-view .div-row-fixed:lt(' + max_items_page + ')').show();
	    var shown = null;
	    var items = $(".all-results-view").find('.div-row-fixed').length;

	    $('#loadMore').on('click', function (e) {
	        shown = $('.all-results-view .div-row-fixed:visible').length + max_items_page;
	        if (shown < items) {
	            $('.all-results-view .div-row-fixed:lt(' + shown + ')').show();
	        } else {
	            $('#myList li:lt(' + items + ')').show();
	            $('#loadMore').hide();
	        }
	    });
	});

	
