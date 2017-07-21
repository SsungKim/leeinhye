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
            <div class="admin_about">
                <header class="sub_header">
                	<c:import url="/WEB-INF/view/main/sub_header.jsp"/>
                </header>
                <div class="page_inner">
                    <div class="index_txt">
						※메인 슬라이더 사진은 총 3장까지 등록 가능합니다. <br>
						※사진 크기는 600*667사이즈로 편집해서 업로드 해주세요<br>
						※사진 삭제를 원할실때는 <span><img src="/img/admin/minus01.png"></span> 버튼을 클릭해 삭제해 주시면 됩니다.
                    </div>
                    <section class="contents">
                        <div class="big_img">
                            <img src="/file/about/${aboutPic.get(0) }">
                        </div>
                        <form action="/admin/aboutUpload" method="post" enctype="multipart/form-data" id="aboutForm">
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
	                                    <input type="text" placeholder="1981.01.17" value="${about.born }" name="about_born" id="about_born">
	                                </div>
	                                <div class="profile hw">
	                                    <div class="tit">
	                                        Height <span>l</span> Weihgt
	                                    </div>
	                                    <div class="input_wrap">
	                                        <input type="text" placeholder="165cm" value="${about.height }" name="about_height" id="about_height">
	                                        <input class="m2" type="text" placeholder="44kg" value="${about.weight }" name="about_weight" id="about_weight">
	                                        <div class="input_boundry"></div>
	                                    </div>
	                                </div>
	                                <div class="profile">
	                                    <div class="tit">
	                                        Agency
	                                    </div>
	                                    <input type="text" placeholder="Flyup Entertainment" value="${about.agency }" name="about_agency" id="about_agency">
	                                </div>
	                                <div class="profile">
	                                    <div class="tit">
	                                        Education
	                                    </div>
	                                    <textarea placeholder="고려대학교 일반대학원 언론학박사&#13;&#10;고려대학교 일반대학원 언론학석사&#13;&#10;고려대학교 신문방송학과 졸업" name="about_education" id="about_education">${about.education }</textarea>
	                                </div>
	                            </div>
	                            <div class="thumbs_wrap">
	                            	<c:forEach var="t" begin="0" end="2">
		                                <div class="thumb thumb_none" id="aboutDiv${t+1 }" style="background-image: url('/file/about/${aboutPic.get(t) }'); background-size: cover; background-position: center center;">
		                                    <label for="aboutFile${t+1 }" id="aboutLabel${t+1 }" style="display: none; "></label>
		                                    <input type="file" id="aboutFile${t+1 }" class="upload_hidden" onchange="aboutPic(this)" name="aboutFile${t+1 }" style="dsiplay: none; ">
		                                    <div class="minus" id="aboutMinus${t+1 }" onclick="aboutMinus(this)" style="display: block; ">
		                                        <img src="/img/admin/minus.png">
		                                    </div>
		                                </div>
	                            	</c:forEach>
	                            </div>
	                        </div>
                        </form>
                    </section>
                    <div class="ms_btn_wrap">
                        <div class="ms_btn" onclick="history.back()">취소</div>
                        <div class="ms_btn" onclick="about_save()">변경</div>
                    </div>
                </div>
                <footer class="main_footer">
                	<c:import url="/WEB-INF/view/main/footer.jsp"/>
                </footer>
            </div>
        </div>
    </body>
</html>