<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>jQuery WeUI</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<meta name="description"
	content="Write an awesome description for your new site here. You can edit this line in _config.yml. It will appear in your document head meta (for Google search results) and in your feed.xml site description.">

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/weui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery-weui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/demos.css">
</head>

<body ontouchstart>

	<header class='demos-header'>
		<h1 class="demos-title">调查一</h1>
	</header>
	<div class="weui-cells__title">第一题：你使用的手机是什么品牌？</div>
	<div class="weui-cells weui-cells_radio">
		<label class="weui-cell weui-check__label" for="x11">
			<div class="weui-cell__bd">
				<p>苹果</p>
			</div>
			<div class="weui-cell__ft">
				<input type="radio" class="weui-check" name="radio1" id="x11">
				<span class="weui-icon-checked"></span>
			</div>
		</label> 
		
		<label class="weui-cell weui-check__label" for="x12">
			<div class="weui-cell__bd">
				<p>三星</p>
			</div>
			<div class="weui-cell__ft">
				<input type="radio" class="weui-check" name="radio1" id="x12"
					checked="checked"> <span class="weui-icon-checked"></span>
			</div>
		</label>
		
		<label class="weui-cell weui-check__label" for="x13">
			<div class="weui-cell__bd">
				<p>华为</p>
			</div>
			<div class="weui-cell__ft">
				<input type="radio" class="weui-check" name="radio1" id="x13">
				<span class="weui-icon-checked"></span>
			</div>
		</label> 
		
		<label class="weui-cell weui-check__label" for="x14">
			<div class="weui-cell__bd">
				<p>小米</p>
			</div>
			<div class="weui-cell__ft">
				<input type="radio" class="weui-check" name="radio1" id="x14"
					checked="checked"> <span class="weui-icon-checked"></span>
			</div>
		</label>
	</div>
	

	<div class="weui-btn-area">
		<a class="weui-btn weui-btn_primary" href="javascript:"
			id="showTooltips">确定</a>
	</div>

	<script src="assets/js/jquery-2.1.4.js"></script>
	<script src="assets/js/fastclick.js"></script>
	<script>
		$(function() {
			FastClick.attach(document.body);
		});
	</script>
	<script src="assets/js/jquery-weui.js"></script>

	<script>
		$("#showTooltips").click(function() {
			var tel = $('#tel').val();
			var code = $('#code').val();
			if (!tel || !/1[3|4|5|7|8]\d{9}/.test(tel))
				$.toptip('请输入手机号');
			else if (!code || !/\d{6}/.test(code))
				$.toptip('请输入六位手机验证码');
			else
				$.toptip('提交成功', 'success');
		});
	</script>
</body>
</html>

