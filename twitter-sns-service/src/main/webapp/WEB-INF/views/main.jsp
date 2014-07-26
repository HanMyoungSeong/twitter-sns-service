<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html class="yui3-js-enabled">
<head>
  <meta charset="utf-8">
  <title>jeju twitter - 스터디 작품</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/pure-min.css">
  <link rel="stylesheet" href="resources/css/marketing.css">
  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
  <link rel="stylesheet" href="resources/css/tweet-main.css">
  <script src="http://yui.yahooapis.com/combo?3.17.2/yui/yui-min.js"></script>
  <script charset="utf-8" id="yui_3_17_2_1_1406009716503_2" src="http://yui.yahooapis.com/combo?3.17.2/oop/oop-min.js&amp;
  3.17.2/event-custom-base/event-custom-base-min.js&amp;3.17.2/event-base/event-base-min.js&amp;3.17.2/dom-core/dom-core-min.js&amp;
  3.17.2/dom-base/dom-base-min.js&amp;3.17.2/selector-native/selector-native-min.js&amp;3.17.2/selector/selector-min.js&amp;
  3.17.2/node-core/node-core-min.js&amp;3.17.2/dom-style/dom-style-min.js&amp;3.17.2/node-base/node-base-min.js&amp;
  3.17.2/event-delegate/event-delegate-min.js&amp;3.17.2/node-event-delegate/node-event-delegate-min.js" async=""></script>

<style>
@font-face {
    font-family: 'VerilySerifMonoBook';
    src: url('resources/font/Verily-Serif/VerilySerifMono-webfont.eot');
    src: url('resources/font/Verily-Serif/VerilySerifMono-webfont.eot?#iefix') format('embedded-opentype'),
         url('resources/font/Verily-Serif/VerilySerifMono-webfont.woff') format('woff'),
         url('resources/font/Verily-Serif/VerilySerifMono-webfont.ttf') format('truetype'),
         url('resources/font/Verily-Serif/VerilySerifMono-webfont.svg#VerilySerifMonoBook') format('svg');
    font-weight: normal;
    font-style: normal;

}

@font-face {
    font-family: 'LatinModernMono10Regular';
    src: url('resources/font/Latin-Modern/lmmono10-regular-webfont.eot');
    src: url('resources/font/Latin-Modern/lmmono10-regular-webfont.eot?#iefix') format('embedded-opentype'),
         url('resources/font/Latin-Modern/lmmono10-regular-webfont.woff') format('woff'),
         url('resources/font/Latin-Modern/lmmono10-regular-webfont.ttf') format('truetype'),
         url('resources/font/Latin-Modern/lmmono10-regular-webfont.svg#LatinModernMono10Regular') format('svg');
    font-weight: normal;
    font-style: normal;

}

body {
    font-family: 'LatinModernMono10Regular', Arial, sans-serif;
    color: #393939;
    font-size: 16px;
}
img {
    max-width: 100%;
}
p {
    font-size: 12px;
    line-height: 18px;
    color: #555555;
}
a {
    white-space: nowrap;
}
h1, h2, h3, h4, h5, h6 {
    font-weight: normal;
    font-family: 'VerilySerifMonoBook', Arial, sans-serif;
}
.header {
    margin: 0 0 35px;
    padding-bottom: 6px;
    border-bottom: 1px solid #ddd;
}

.header .nav {
    color: #999;
}
.header .nav a {
    font-size: 18px;
    color: #999;
    text-decoration: none;
    margin: 22px 8px 0 8px;
}
.header .nav a:hover {
    font-size: 18px;
    color: #000;
}

.header h1 {
    text-align: center;
    margin: 40px 0;
    text-transform: uppercase;
}
.box {
  width: 270px;
}
.article {
  padding: 8px;
  line-height: 1;
  border: 1px solid #ddd;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075);
  -moz-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075);
  margin-bottom: 10px;
  position: relative;
}
.article h4 {
  margin: 14px 0 4px 0;
}

.footer {
    font-family: 'VerilySerifMonoBook', Arial, sans-serif;
    border-top: 1px solid #ddd;
    margin-top: 35px;
    padding-top: 6px;
    text-align: center;
    font-size: 12px;
}
</style>
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
  
  <div id="user-status-write">
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
                <input id ="click-photo" class="_n" type="file" multiple="multiple">
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
  
  <div id="tweet-wrapper">
         <div class="box">
             <div class="article">
                <img alt="Jaipure picture" class="thumbnail" src="resources/Jaipur-1.JPG">
                  <h4>Jaipur picture 01</h4>
                  <p>Donec id elit non mi porta gravida at eget metus. Fusce
        dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut
        fermentum massa justo sit amet risus. Etiam porta sem malesuada magna
        mollis euismod. Donec sed odio dui. <a class="" href="#">Read more »</a></p>
             </div>
         </div>
         <div class="box">
             <div class="article">
                <img alt="Jaipure picture" class="thumbnail" src="resources/Jaipur-2.JPG">
                  <h4>Jaipur picture 02</h4>
                  <p>Donec id elit non mi porta gravida at eget metus. Fusce
        dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut
        fermentum massa justo sit amet risus. Etiam porta sem malesuada magna
        mollis euismod. Donec sed odio dui. <a class="" href="#">Read more »</a></p>
             </div>
         </div>
         <div class="box">
             <div class="article">
                <img alt="Jaipure picture" class="thumbnail" src="resources/Jaipur-3.JPG">
                  <h4>Jaipur picture 03</h4>
                  <p>Donec id elit non mi porta gravida at eget metus. Fusce
        dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut
        fermentum massa justo sit amet risus. Etiam porta sem malesuada magna
        mollis euismod. Donec sed odio dui. <a class="" href="#">Read more »</a></p>
             </div>
         </div>
         <div class="box">
             <div class="article">
                <img alt="Jaipure picture" class="thumbnail" src="resources/Jaipur-4.JPG">
                  <h4>Jaipur picture 04</h4>
                  <p>Donec id elit non mi porta gravida at eget metus. Fusce
        dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut
        fermentum massa justo sit amet risus. Etiam porta sem malesuada magna
        mollis euismod. Donec sed odio dui. <a class="" href="#">Read more »</a></p>
             </div>
         </div>
         <div class="box">
             <div class="article">
                <img alt="Jaipure picture" class="thumbnail" src="resources/Jaipur-5.JPG">
                  <h4>Jaipur picture 05</h4>
                  <p>Donec id elit non mi porta gravida at eget metus. Fusce
        dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut
        fermentum massa justo sit amet risus. Etiam porta sem malesuada magna
        mollis euismod. Donec sed odio dui. <a class="" href="#">Read more »</a></p>
             </div>
         </div>
         <div class="box">
             <div class="article">
                <img alt="Jaipure picture" class="thumbnail" src="resources/Jaipur-6.JPG">
                  <h4>Jaipur picture 06</h4>
                  <p>Donec id elit non mi porta gravida at eget metus. Fusce
        dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut
        fermentum massa justo sit amet risus. Etiam porta sem malesuada magna
        mollis euismod. Donec sed odio dui. <a class="" href="#">Read more »</a></p>
             </div>
         </div>
  </div>
  
  <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
  <script src="resources/js/lib/jquery.masonry.min.js"></script>
  <script src="resources/JbPopup/jquery.bpopup.min.js"></script>
  <script src="resources/js/Util.js"></script>
 
  <script type="text/javascript">
  	$("#status-write").click(function() {
		$("#user-status-write").bPopup();
	});

	Util.onlyOnePicturePreview("#click-photo", "#preview");
	
	$(document).ready(function(){
	    var $container = $('#tweet-wrapper');

	    var gutter = 30;
	    var min_width = 300;
	    $container.imagesLoaded( function(){
	        $container.masonry({
	            itemSelector : '.box',
	            gutterWidth: gutter,
	            isAnimated: true,
	              columnWidth: function( containerWidth ) {
	                var box_width = (((containerWidth - 2*gutter)/3) | 0) ;

	                if (box_width < min_width) {
	                    box_width = (((containerWidth - gutter)/2) | 0);
	                }

	                if (box_width < min_width) {
	                    box_width = containerWidth;
	                }

	                $('.box').width(box_width);

	                return box_width;
	              }
	        });
	    });
	});
  </script>
  
</body>
</html>
