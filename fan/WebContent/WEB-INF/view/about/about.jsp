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
            <div class="about_page">
                <header class="sub_header">
                	<c:import url="/WEB-INF/view/main/sub_header.jsp"/>
                </header>
                <div class="title">
                    <div class="txt">
                        ABOUT
                    </div>
                </div>
                <div class="page_inner" id="about_printSection">
                    <section class="pheader">
                        <div class="tit">
                            PROFILE
                        </div>
                        <div class="print" onclick="about_print()">
                            Print
                        </div>
                        <c:if test="${login != null }">
	                        <div class="about_btn" onclick="location.href='/admin/about'">
	                            ABOUT 내용 수정
	                        </div>
                        </c:if>
                    </section>
                    <section class="contents">
                        <div class="big_img">
                            <img src="/file/about/${aboutPic.get(0) }" id="about_bigImg">
                        </div>
                        <div class="about_wrap">
                            <div class="name">
								이인혜
                                <span>lee in hye</span>
                            </div>
                            <div class="profile_wrap">
                                <div class="profile">
                                    <div class="tit">
                                        Born
                                    </div>
                                    <div class="txt">
                                        ${about.born }
                                    </div>
                                </div>
                                <div class="profile hw">
                                    <div class="tit">
                                        Height <span>l</span> Weihgt
                                    </div>
                                    <div class="txt">
                                        ${about.height } l  ${about.weight }
                                    </div>
                                </div>
                                <div class="profile">
                                    <div class="tit">
                                        Agency
                                    </div>
                                    <div class="txt">
                                        ${about.agency }
                                    </div>
                                </div>
                                <div class="profile">
                                    <div class="tit">
                                        Education
                                    </div>
                                    <div class="txt">
										${about.education }
                                    </div>
                                </div>
                            </div>
                            <div class="thumbs_wrap">
                                <div class="thumbs_inner">
                                	<c:forEach var="t" begin="0" end="${aboutPic.size() - 1 }">
	                                    <div class="thumb" onclick="about_img('${aboutPic.get(t)}', '${t+1 }')" id="about_img${t+1 }">
	                                        <div class="thumb_cover">
	                                            <div class="thumb_opa"></div>
	                                            <div class="click">
	                                                <div class="click_opa"></div>
	                                                <div class="txt">Click</div>
	                                            </div>
	                                        </div>
	                                        <img src="/file/about/${aboutPic.get(t) }">
	                                    </div>
                                	</c:forEach>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <footer class="main_footer">
                	<c:import url="/WEB-INF/view/main/footer.jsp"/>
                </footer>
            </div>
        </div>
    </body>
</html>