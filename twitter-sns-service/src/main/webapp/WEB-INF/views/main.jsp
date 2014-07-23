<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html class="yui3-js-enabled">
<head>
	<meta charset="utf-8">
	<title>jeju twitter - 스터디 작품</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/pure-min.css">
	<link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/grids-responsive-min.css">
	<link rel="stylesheet" href="resources/css/marketing.css">
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
	<link rel="stylesheet" href="resources/css/tweet-main.css">
	<script src="http://yui.yahooapis.com/combo?3.17.2/yui/yui-min.js"></script>
	<script charset="utf-8" id="yui_3_17_2_1_1406009716503_2" src="http://yui.yahooapis.com/combo?3.17.2/oop/oop-min.js&amp;
	3.17.2/event-custom-base/event-custom-base-min.js&amp;3.17.2/event-base/event-base-min.js&amp;3.17.2/dom-core/dom-core-min.js&amp;
	3.17.2/dom-base/dom-base-min.js&amp;3.17.2/selector-native/selector-native-min.js&amp;3.17.2/selector/selector-min.js&amp;
	3.17.2/node-core/node-core-min.js&amp;3.17.2/dom-style/dom-style-min.js&amp;3.17.2/node-base/node-base-min.js&amp;
	3.17.2/event-delegate/event-delegate-min.js&amp;3.17.2/node-event-delegate/node-event-delegate-min.js" async=""></script>

</head>
<body>
	<div class="header">
		<div class="home-menu pure-menu pure-menu-open pure-menu-horizontal pure-menu-fixed">
			<a class="pure-menu-heading" href="">제주 트위터</a>
			<ul>
				<li>
					<a href="#">
						<img id="header-photographic" alt="한명승" src="resources/test.jpg">
						<span id="header-photographic-name">한명승</span>
					</a>
				</li>
				<li>
					<a id="status-write" class="header-top-menu-buttons" href="#">글쓰기</a>
				</li>
			</ul>
		</div>
	</div>
	<div id="tweet-wrapper">
		<div id="tweet-wrapper-user-status-write">
			<div class="pure-menu pure-menu-open pure-menu-horizontal">
				<form action="" method="post">
					<fieldset>
						<legend>업데이트</legend>
						<textarea id="textarea-status-write" placeholder="지금 무슨생각 하십니까?" title="지금 무슨생각 하십니까?"></textarea>
						<div class="pure-g">
							<div class="pure-u-2-1">
								<img id="preview" alt="미리보기"/>
							</div>
						    <div class="pure-u-2-1">
							    <div id="status-write-capture" style="background-image: url('resources/icon/capture.png');">
									<input class="_n" type="file" onchange="readURL(this);">
								</div>
							</div>
						    <div class="pure-u-1-2">
								<button type="submit" class="pure-button pure-button-primary">게시</button>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
		<div id="tweet-content">
			asdfasdf
		</div>
		<div class= "footer l-box is-center" id= "yui_3_17_2_1_1406006214911_8">
			스터디 맴버 : 한명승, 성의현, 김연주
		</div>
	</div>
		<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
		<script src="resources/JbPopup/jquery.bpopup.min.js"></script>
		<script type="text/javascript">
			$("#status-write").click(function(){
				$("#tweet-wrapper-user-status-write").bPopup();
			});
			
			function readURL(input) {
				if (input.files && input.files[0]) {
					var reader = new FileReader();
					reader.onload = function (e) {
						$('#preview').attr('src', e.target.result);
					}
					reader.readAsDataURL(input.files[0]);
				}
			}
		</script>
</body>
</html>
