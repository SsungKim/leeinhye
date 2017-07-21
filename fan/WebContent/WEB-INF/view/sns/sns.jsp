<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!doctype html>
<html>
<head>
<c:import url="/WEB-INF/view/main/head.jsp" />
</head>

<body>
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.9&appId=495060230617933";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<div id="wrapper">
		<div class="sns_page">
			<header class="sub_header">
				<c:import url="/WEB-INF/view/main/sub_header.jsp" />
			</header>
			<div class="title">
				<div class="txt">S N S</div>
			</div>
			<section class="contents">
				<div class="sns_section facebook_section">
					<div class="facebook_wrap">
						<div class="sns1 facebook">
							<div class="fb-page"
								data-href="https://www.facebook.com/RedVelvet/?fref=ts"
								data-tabs="timeline" data-width="400" data-height="530"
								data-small-header="false" data-adapt-container-width="true"
								data-hide-cover="false" data-show-facepile="true">
								<blockquote cite="https://www.facebook.com/RedVelvet/?fref=ts"
									class="fb-xfbml-parse-ignore">
									<a href="https://www.facebook.com/RedVelvet/?fref=ts">레드벨벳
										(Red Velvet)</a>
								</blockquote>
							</div>
						</div>
						<div class="sns_btn">Facebook 바로가기</div>
					</div>
				</div>
				<div class="sns_section instagram_section">
					<div class="instagram_wrap">
						<div class="sns1 instagram" id="instaDiv"></div>
						<div class="sns_btn">instagram 바로가기</div>
					</div>
				</div>
			</section>
			<footer class="main_footer">
				<c:import url="/WEB-INF/view/main/footer.jsp" />
			</footer>
		</div>
	</div>
</body>

<script>
	$(document).ready(function() {
		var tocken = "1466511144.e90cc9d.c54d16f6d5484ab9b29108e9c5598b1b"; /* Access Tocken 입력 */
		var count = "6";
		$.ajax({
			type : "GET",
			dataType : "jsonp",
			cache : false,
			url : "https://api.instagram.com/v1/users/self/media/recent/?access_token=" + tocken + "&count=" + count,
			success : function(response) {
				if (response.data.length > 0) {
					for (var i = 0; i < response.data.length; i++) {
						var insta = '<div class="insta-box">';
						insta += "<a target='_blank' href='" + response.data[i].link + "'>";
						insta += "<div class'image-layer'>";
						//insta += "<img src='" + response.data[i].images.thumbnail.url + "'>";  
						insta += '<img src="' + response.data[i].images.thumbnail.url + '">';
						insta += "</div>";
						//console.log(response.data[i].caption.text);  
						if (response.data[i].caption !== null) {
							insta += "<div class='caption-layer'>";
							if (response.data[i].caption.text.length > 0) {
								insta += "<p class='insta-caption'>" + response.data[i].caption.text + "</p>"
							}
							insta += "<span class='insta-likes'>" + response.data[i].likes.count + " Likes</span>";
							insta += "</div>";
						}
						insta += "</a>";
						insta += "</div>";
						$("#instaDiv").append(insta);
					}
				}
			// 	       		$(".insta-box").hover(function(){  
			// 	           		$(this).find(".caption-layer").css({"backbround" : "rgba(255,255,255,0.7)", "display":"block"});  
			// 	           	}, function(){  
			// 	           		$(this).find(".caption-layer").css({"display":"none"});  
			// 	           	});  
			}
		});
	});
</script>

</html>