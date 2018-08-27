var validate = (hasError, myErrorMessage) => {
	var flag = true
	if (hasError) {
		var errorMessage = $('.errorMessage')
		errorMessage.text(myErrorMessage)	
		flag = false
	}
	return flag
}

var validateAll = () => {
	var name = $('#name').val()
	var password = $('#password').val()
	var repeatpassword = $('#repeatpassword').val()
	var errorMessage = $('.errorMessage')
	var flag = true
	
	/*验证name不为空*/
	var hasError = name == ''
	myErrorMessage = '用户名不能为空'
	flag = validate(hasError, myErrorMessage)
	if (flag == false) {
		$('.registerErrorMessageDiv').css("visibility","visible");
		return flag
	}
	
	/*验证password不为空*/
	var hasError = password == ''
	myErrorMessage = '密码不能为空'
	flag = validate(hasError, myErrorMessage)
	if (flag == false) {
		$('.registerErrorMessageDiv').css("visibility","visible");
		return flag
	}
	
	/*验证再次输入密码不为空*/
	var hasError = repeatpassword == ''
	myErrorMessage = '再次输入密码不能为空'
	flag = validate(hasError, myErrorMessage)
	
	if (flag == false) {
		$('.registerErrorMessageDiv').css("visibility","visible");
		return flag
	}
	
	return flag
}

var gotoRegist = () => {
	var flag
	var button = $('.registerButtonTD button')
	button.on('click', function() {
		flag = validateAll()
		var name = $('#name').val()
		var password = $('#password').val()
		var errorMessage = $('.errorMessage')
		
		if(window.XMLHttpRequest){
            //非IE
            var xhr = new XMLHttpRequest();

        }else{
            var xhr = new ActiveXobject('Microsoft.XMLHTTP');
        }
        //给xhr 绑定事件 检测请求的过程
        xhr.onreadystatechange = function(){
            console.log(xhr.readyState);
            //如果成功接收到响应
            if(xhr.status == 200 && xhr.readyState == 4){
                 var text = xhr.responseText
                 if (text != "") {
                	 errorMessage.text(text)
                	 $('.registerErrorMessageDiv').css("visibility","visible");
                	 flag = false
                 }
                 
                 if (flag) {
         			window.location.href = 'http://localhost:8080/TmallBackend/registSuccess.jsp'
         		}
                
            }
        }
        //进行请求的初始化
        var url = 'http://localhost:8080/TmallBackend/user/registSuccess?name=' + name + "&password=" + password
        xhr.open('get', url, true);
        //正式发送请求
        xhr.send();		
	})
	
}



var main = () => {
	gotoRegist()
}

main()