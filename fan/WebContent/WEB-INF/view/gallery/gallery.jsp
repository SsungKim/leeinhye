<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!doctype html>
<html>
    <head>
    	<c:import url="/WEB-INF/view/main/head.jsp"/>
    </head>
     
    <body>
        <div id="wrapper">
            <header class="sub_header">
            	<c:import url="/WEB-INF/view/main/sub_header.jsp"/>
            </header>
            <div class="gallery_page">
                <div class="title">
                    <div class="txt">
                        GALLEY
                    </div>
                </div>
                <div class="gallery_popup">
                    <div class="gp_opa"></div>
                    <div class="gp_close">
                        <img src="/img/gallery/close.png">
                    </div>
                    <div class="gp_img"></div>
                </div>
                <div class="page_inner">
                	<c:if test="${login != null }">
	                	<div class="gallery_btn" onclick="location.href='/admin/gallery'">
	                        GALLERY 사진 수정
	                    </div>
                	</c:if>
                    <div class="contents">
                    	<c:forEach var="t" items="${galleryList }">
	                        <div class="item ${t.ran > 0.5 ? 'item2' : '' }" id="gallery_item${t.auto }"
	                        	style="background-image: url('/file/gallery/${t.img }'); background-size: cover; background-position: center center; ">
	                            <div class="item_cover" onclick="gallery_view('${t.img }')"></div>
	                        </div>
                    	</c:forEach>
                    </div>
                    <div class="more_arrow_wrap">
                        <div class="img">
                            <img src="/img/gallery/arrow.png" onclick="gallery_more()">
                        </div>
                        <div class="txt">more</div>
                    </div>
                </div>
            </div>
            <footer class="sub_footer">
            	<c:import url="/WEB-INF/view/main/footer.jsp"/>
            </footer>
        </div>
    </body>
</html>