<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!doctype html>
<html>
    <head>
    	<c:import url="/WEB-INF/view/main/head.jsp"/>
    </head>
     
    <body oncontextmenu='return false' ondragstart='return false' onselectstart='return false'>
        <div id="wrapper">
            <header class="main_header">
            	<c:import url="/WEB-INF/view/main/header.jsp"/>
            </header>
            <div class="main">
				<c:if test="${login != null }">
    	        	<div class="sm_btn">
					<div class="btn_opa"></div>
						<div class="txt" onclick="location.href='/upload'">
							메인 슬라이더 변경
						</div>
	                </div>
				</c:if>
                <div class="main_arrow main_arrow_prev">
                    <img src="/img/common/arrow_prev.png">
                </div>
                <div class="main_arrow main_arrow_next">
                    <img src="/img/common/arrow_next.png">
                </div>
                <div class="main_slider">
                	<c:forEach var="t" begin="0" end="${img.size()-1 }">
                		<c:if test="${img.get(t) != '1' }">
	                		<c:choose>
	                			<c:when test="${t == 0 }">
				                    <div class="main_slide main_slide_on" style="background-image: url('/file/main/${img.get(t) }')"></div>
	                			</c:when>
	                			<c:otherwise>
				                    <div class="main_slide" style="background-image: url('/file/main/${img.get(t) }')"></div>
	                			</c:otherwise>
	                		</c:choose>
                		</c:if>
                	</c:forEach>
                </div>
                <div class="main_gnb_wrap">
                    <ul>
                        <li class="about" onclick="location.href='/about'"></li>
                        <li class="career" onclick="location.href='/career'"></li>
                        <li class="gallery" onclick="location.href='/gallery'"></li>
                        <li class="sns" onclick="location.href='/sns'"></li>
                        <li class="contact" onclick="location.href='/contact'"></li>
                    </ul>
                </div>
            </div>
            <footer class="main_footer">
            	<c:import url="/WEB-INF/view/main/footer.jsp"/>
            </footer>
        </div>
    </body>
</html>