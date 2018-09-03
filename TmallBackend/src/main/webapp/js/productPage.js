var log = console.log.bind(console)

/*控制大图src*/
var controlBigImg = () => {
    var imgs = $('.smallImageDiv img')
    var bigImg = $('.bigImg')
    var o = imgs[0].src
    bigImg.attr('src',o)
    imgs.each(function(){
        var img = $(this)
        img.on('mouseover', function() {
               var imgsrc = img.attr('src')
               bigImg.attr('src',imgsrc)
           })
    })
}

var showProductDetailOrProductReview = () => {
    var productReviewLink = $('.productDetailTopReviewLink')
    var productDetailLink = $('.productReviewTopPartSelectedLink')
    var productDetailDiv = $('.productDetailDiv')
    var productReviewDiv = $('.productReviewDiv')
    productDetailLink.on('click',function() {
        productReviewDiv.attr('style', 'display:none!important')
        productDetailDiv.attr('style', 'display:block!important')
        return false;
    })

    productReviewLink.on('click',function() {
        productReviewDiv.attr('style', 'display:block!important')
        productDetailDiv.attr('style', 'display:none!important')
        return false;
    })
}
//控制购物数量
var controlBuyNum = () => {
	  var updowns = $('.updown')
	    var up = $(updowns[0])
	    var down = $(updowns[1])
	    var input = $('.productNumberSetting')
	    up.on('click', function() {
	        var num = input.val()
	        num++
	        input.val(num)
	    })

	    down.on('click', function() {
	        var num = input.val()
	        num--
	        if (num <= 1) {
	            num = 1
	        }
	        input.val(num)
	    })
}

var controlBuyCartAndAddCart = () => {
	var button = $('#modalButton')
	var addCartLink = $('.addCartLink')
	var buyCartLink = $('.buyCartLink')
	addCartLink.on('click', function() {
		console.log('dsada')
		button.click()
	})
	buyCartLink.on('click', function() {
		button.click()
	})
}

var _main = () => {
    controlBigImg()
    showProductDetailOrProductReview()
    controlBuyNum()
    controlBuyCartAndAddCart()
}

_main()
