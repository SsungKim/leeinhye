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
            <div class="ac_popup_wrap" id="careerDiv_drama">
                <div class="ac_tit" id="career_drama_title"></div>
                <div class="ac_item_wrap">
                	<form action="/admin/career/pic" method="post" enctype="multipart/form-data" id="career_drama_form">
	                	<c:forEach var="t" begin="0" end="${dramaList.size()-1 }">
	                		<div class="ac_item m2" id="career_drama${t+1 }" style="background-image: url('/file/career/${dramaList.get(t) }'); background-size: cover; background-position: center center; ">
		                        <input type="file" id="career_drama_file${t+1 }" onchange="career_pic_change(this)" name="career_drama_file${t+1 }" style="display: none; ">
		                        <label for="career_drama_file${t+1 }" id="career_drama_label${t+1 }" style="display: none; "></label>
		                        <div class="minus" id="career_drama_minus${t+1 }" style="display: block; " onclick="career_pic_minus(this)">
		                            <img src="/img/admin/minus.png">
		                        </div>
		                    </div>
	                	</c:forEach>
	                	<c:forEach var="t" begin="${dramaList.size() }" end="19">
	                		<div class="ac_item m2" id="career_drama${t+1 }">
		                        <input type="file" id="career_drama_file${t+1 }" onchange="career_pic_change(this)" name="career_drama_file${t+1 }">
		                        <label for="career_drama_file${t+1 }" id="career_drama_label${t+1 }"></label>
		                        <div class="minus" id="career_drama_minus${t+1 }" style="display: none; " onclick="career_pic_minus(this)">
		                            <img src="/img/admin/minus.png">
		                        </div>
		                    </div>
	                	</c:forEach>
	                </form>
                </div>
                <div class="popup_btn_wrap">
                    <div class="popup_btn close" onclick="career_picClose()">취소</div>
                    <div class="popup_btn" onclick="career_pic_save()">수정</div>
                </div>
            </div>
            <div class="ac_popup_wrap" id="careerDiv_movie">
                <div class="ac_tit" id="career_movie_title"></div>
                <div class="ac_item_wrap">
                	<form action="/admin/career/pic" method="post" enctype="multipart/form-data" id="career_movie_form">
	                	<c:forEach var="t" begin="0" end="${movieList.size()-1 }">
	                		<div class="ac_item m2" id="career_movie${t+1 }" style="background-image: url('/file/career/${movieList.get(t) }'); background-size: cover; background-position: center center; ">
		                        <input type="file" id="career_movie_file${t+1 }" onchange="career_pic_change(this)" name="career_movie_file${t+1 }" style="display: none; ">
		                        <label for="career_movie_file${t+1 }" id="career_movie_label${t+1 }" style="display: none; "></label>
		                        <div class="minus" id="career_movie_minus${t+1 }" style="display: block; " onclick="career_pic_minus(this)">
		                            <img src="/img/admin/minus.png">
		                        </div>
		                    </div>
	                	</c:forEach>
	                	<c:forEach var="t" begin="${movieList.size() }" end="19">
	                		<div class="ac_item m2" id="career_movie${t+1 }">
		                        <input type="file" id="career_movie_file${t+1 }" onchange="career_pic_change(this)" name="career_movie_file${t+1 }">
		                        <label for="career_movie_file${t+1 }" id="career_movie_label${t+1 }"></label>
		                        <div class="minus" id="career_movie_minus${t+1 }" style="display: none; " onclick="career_pic_minus(this)">
		                            <img src="/img/admin/minus.png">
		                        </div>
		                    </div>
	                	</c:forEach>
	                </form>
                </div>
                <div class="popup_btn_wrap">
                    <div class="popup_btn close" onclick="career_picClose()">취소</div>
                    <div class="popup_btn" onclick="career_pic_save()">수정</div>
                </div>
            </div>
            <div class="ac_popup_wrap" id="careerDiv_cf">
                <div class="ac_tit" id="career_cf_title"></div>
                <div class="ac_item_wrap">
                	<form action="/admin/career/pic" method="post" enctype="multipart/form-data" id="career_cf_form">
	                	<c:forEach var="t" begin="0" end="${cfList.size()-1 }">
	                		<div class="ac_item m2" id="career_cf${t+1 }" style="background-image: url('/file/career/${cfList.get(t) }'); background-size: cover; background-position: center center; ">
		                        <input type="file" id="career_cf_file${t+1 }" onchange="career_pic_change(this)" name="career_cf_file${t+1 }" style="display: none; ">
		                        <label for="career_cf_file${t+1 }" id="career_cf_label${t+1 }" style="display: none; "></label>
		                        <div class="minus" id="career_cf_minus${t+1 }" style="display: block; " onclick="career_pic_minus(this)">
		                            <img src="/img/admin/minus.png">
		                        </div>
		                    </div>
	                	</c:forEach>
	                	<c:forEach var="t" begin="${cfList.size() }" end="19">
	                		<div class="ac_item m2" id="career_cf${t+1 }">
		                        <input type="file" id="career_cf_file${t+1 }" onchange="career_pic_change(this)" name="career_cf_file${t+1 }">
		                        <label for="career_cf_file${t+1 }" id="career_cf_label${t+1 }"></label>
		                        <div class="minus" id="career_cf_minus${t+1 }" style="display: none; " onclick="career_pic_minus(this)">
		                            <img src="/img/admin/minus.png">
		                        </div>
		                    </div>
	                	</c:forEach>
	                </form>
                </div>
                <div class="popup_btn_wrap">
                    <div class="popup_btn close" onclick="career_picClose()">취소</div>
                    <div class="popup_btn" onclick="career_pic_save()">수정</div>
                </div>
            </div>
            <div class="ac_popup_wrap" id="careerDiv_mv">
                <div class="ac_tit" id="career_mv_title"></div>
                <div class="ac_item_wrap">
                	<form action="/admin/career/pic" method="post" enctype="multipart/form-data" id="career_mv_form">
	                	<c:forEach var="t" begin="0" end="${mvList.size()-1 }">
	                		<div class="ac_item m2" id="career_mv${t+1 }" style="background-image: url('/file/career/${mvList.get(t) }'); background-size: cover; background-position: center center; ">
		                        <input type="file" id="career_mv_file${t+1 }" onchange="career_pic_change(this)" name="career_mv_file${t+1 }" style="display: none; ">
		                        <label for="career_mv_file${t+1 }" id="career_mv_label${t+1 }" style="display: none; "></label>
		                        <div class="minus" id="career_mv_minus${t+1 }" style="display: block; " onclick="career_pic_minus(this)">
		                            <img src="/img/admin/minus.png">
		                        </div>
		                    </div>
	                	</c:forEach>
	                	<c:forEach var="t" begin="${mvList.size() }" end="19">
	                		<div class="ac_item m2" id="career_mv${t+1 }">
		                        <input type="file" id="career_mv_file${t+1 }" onchange="career_pic_change(this)" name="career_mv_file${t+1 }">
		                        <label for="career_mv_file${t+1 }" id="career_mv_label${t+1 }"></label>
		                        <div class="minus" id="career_mv_minus${t+1 }" style="display: none; " onclick="career_pic_minus(this)">
		                            <img src="/img/admin/minus.png">
		                        </div>
		                    </div>
	                	</c:forEach>
	                </form>
                </div>
                <div class="popup_btn_wrap">
                    <div class="popup_btn close" onclick="career_picClose()">취소</div>
                    <div class="popup_btn" onclick="career_pic_save()">수정</div>
                </div>
            </div>
            <div class="popup_cover"></div>
            <header class="sub_header">
            	<c:import url="/WEB-INF/view/main/sub_header.jsp"/>
            </header>
            <div class="admin_career">
                <div class="inner">
                    <div class="index_txt">
						※CAREER 사진은 슬라이드당 20장까지 등록 가능합니다.<br>
						※모든 사진의 크기는 325*230 사이즈로 편집해서 업로드 해주세요.<br>
						※사진 이나 경력 삭제를 원할실때는 <span><img src="/img/admin/minus01.png"></span> 버튼을 클릭해 삭제해 주시면 됩니다.<br>
						※경력을 추가할 때 '현재'까지 지속중인 경력의 경우 종료날짜를 9999로 입력해주세요.<br>
						※시작년도와 종료년도가 같을경우 두 곳 모두 입력해주세요.
                    </div>
                    <div class="ct_input_wrap">
                    	<select id="career_type">
                    		<option value="choose">선택</option>
                    		<option value="드라마">Drama</option>
                    		<option value="영화">Movie</option>
                    		<option value="예능">Ent</option>
                    		<option value="광고">CF</option>
                    		<option value="공연">Show</option>
                    		<option value="음반">Music</option>
                    		<option value="뮤직비디오">M.V</option>
                    		<option value="홍보대사">Ambassadors</option>
                    		<option value="저서">Book</option>
                    		<option value="수상">Award</option>
                    	</select>
                        <input class="date_input" type="text" id="career_syear">
                        <div class="txt">~</div>
                        <input class="date_input" type="text" id="career_eyear">
                        <input class="content_input" id="career_content">
                        <div class="ct_btn" onclick="career_add()">추가</div>
                    </div> 
                    <section class="contents">
                        <div class="cs_section">
                            <div class="cslider_container">
                                <div class="cslider_txt">
									※드라마 슬라이드
                                </div>
                                <div class="cslider_wrap" id="career_slide1">
                                    <div class="cslider_inner">
                                        <div class="cslide">
                                            <img src="/file/career/${dramaList.get(0) }">
                                        </div>
                                    </div>
                                </div>
                                <div class="cslide_btn" onclick="career_pic('drama')">
									사진수정
                                </div>
                            </div>
                        </div>
                        <div class="ct_section_wrap">
                            <div class="ct_section">
                                <div class="ct_tit">
                                    Drama
                                </div>
                                <div class="ct_txt_wrap">
                                    <c:forEach var="t" begin="0" end="${careerList.size()-1 }">
                                		<c:if test="${careerList.get(t).type == '드라마' }">
		                                    <div class="ct_txt" id="ct_txt${careerList.get(t).auto }">
		                                    	<div class="img" onclick="career_minus(${careerList.get(t).auto })">
		                                            <img src="/img/admin/minus01.png">
		                                        </div>
		                                        <div class="date">
		                                        	<c:choose>
		                                        		<c:when test="${careerList.get(t).syear == careerList.get(t).eyear }">
				                                            ${careerList.get(t).eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${careerList.get(t).eyear == 9999 }">
		                                        					${careerList.get(t).syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${careerList.get(t).syear } ~ ${careerList.get(t).eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${careerList.get(t).content }
		                                        </div>
		                                    </div>
                                		</c:if>
                                	</c:forEach>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="contents">
                        <div class="cs_section">
                            <div class="cslider_container">
                                <div class="cslider_txt">
									※영화, 예능 슬라이드
                                </div>
                                <div class="cslider_wrap" id="career_slide2">
                                    <div class="cslider_inner">
                                        <div class="cslide">
                                            <img src="/file/career/${movieList.get(0) }">
                                        </div>
                                    </div>
                                </div>
                                <div class="cslide_btn" onclick="career_pic('movie')">
									사진수정
                                </div>
                            </div>
                        </div>
                        <div class="ct_section_wrap">
                            <div class="ct_section">
                                <div class="ct_tit">
                                    Movie
                                </div>
                                <div class="ct_txt_wrap">
                                	<c:forEach var="t" begin="0" end="${careerList.size()-1 }">
                                		<c:if test="${careerList.get(t).type == '영화' }">
		                                    <div class="ct_txt" id="ct_txt${careerList.get(t).auto }">
		                                    	<div class="img" onclick="career_minus(${careerList.get(t).auto })">
		                                            <img src="/img/admin/minus01.png">
		                                        </div>
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${careerList.get(t).syear == careerList.get(t).eyear }">
				                                            ${careerList.get(t).eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${careerList.get(t).eyear == 9999 }">
		                                        					${careerList.get(t).syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${careerList.get(t).syear } ~ ${careerList.get(t).eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${careerList.get(t).content }
		                                        </div>
		                                    </div>
                                		</c:if>
                                	</c:forEach>
                                </div>
                            </div>
                            <div class="ct_section">
                                <div class="ct_tit">
                                    Ent
                                </div>
                                <div class="ct_txt_wrap">
                                	<c:forEach var="t" begin="0" end="${careerList.size()-1 }">
                                		<c:if test="${careerList.get(t).type == '예능' }">
		                                    <div class="ct_txt" id="ct_txt${careerList.get(t).auto }">
		                                    	<div class="img" onclick="career_minus(${careerList.get(t).auto })">
		                                            <img src="/img/admin/minus01.png">
		                                        </div>
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${careerList.get(t).syear == careerList.get(t).eyear }">
				                                            ${careerList.get(t).eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${careerList.get(t).eyear == 9999 }">
		                                        					${careerList.get(t).syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${careerList.get(t).syear } ~ ${careerList.get(t).eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${careerList.get(t).content }
		                                        </div>
		                                    </div>
                                		</c:if>
                                	</c:forEach>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="contents">
                        <div class="cs_section">
                            <div class="cslider_container">
                                <div class="cslider_txt">
									※CF 슬라이드
                                </div>
                                <div class="cslider_wrap" id="career_slide3">
                                    <div class="cslider_inner">
                                        <div class="cslide">
                                            <img src="/file/career/${cfList.get(0) }">
                                        </div>
                                    </div>
                                </div>
                                <div class="cslide_btn" onclick="career_pic('cf')">
									사진수정
                                </div>
                            </div>
                        </div>
                        <div class="ct_section_wrap">
                            <div class="ct_section">
                                <div class="ct_tit">
                                    CF
                                </div>
                                <div class="ct_txt_wrap">
                                    <c:forEach var="t" begin="0" end="${careerList.size()-1 }">
                                		<c:if test="${careerList.get(t).type == '광고' }">
		                                    <div class="ct_txt" id="ct_txt${careerList.get(t).auto }">
		                                    	<div class="img" onclick="career_minus(${careerList.get(t).auto })">
		                                            <img src="/img/admin/minus01.png">
		                                        </div>
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${careerList.get(t).syear == careerList.get(t).eyear }">
				                                            ${careerList.get(t).eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${careerList.get(t).eyear == 9999 }">
		                                        					${careerList.get(t).syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${careerList.get(t).syear } ~ ${careerList.get(t).eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${careerList.get(t).content }
		                                        </div>
		                                    </div>
                                		</c:if>
                                	</c:forEach>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="contents">
                        <div class="cs_section">
                            <div class="cslider_container">
                                <div class="cslider_txt">
									※공연, 음반, 뮤직비디오 슬라이드
                                </div>
                                <div class="cslider_wrap" id="career_slide4">
                                    <div class="cslider_inner">
                                        <div class="cslide">
                                            <img src="/file/career/${mvList.get(0) }">
                                        </div>
                                    </div>
                                </div>
                                <div class="cslide_btn" onclick="career_pic('mv')">
									사진수정
                                </div>
                            </div>
                        </div>
                        <div class="ct_section_wrap">
                            <div class="ct_section">
                                <div class="ct_tit">
                                    Show
                                </div>
                                <div class="ct_txt_wrap">
                                    <c:forEach var="t" begin="0" end="${careerList.size()-1 }">
                                   		<c:if test="${careerList.get(t).type == '공연' }">
		                                    <div class="ct_txt" id="ct_txt${careerList.get(t).auto }">
		                                    	<div class="img" onclick="career_minus(${careerList.get(t).auto })">
		                                            <img src="/img/admin/minus01.png">
		                                        </div>
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${careerList.get(t).syear == careerList.get(t).eyear }">
				                                            ${careerList.get(t).eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${careerList.get(t).eyear == 9999 }">
		                                        					${careerList.get(t).syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${careerList.get(t).syear } ~ ${careerList.get(t).eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${careerList.get(t).content }
		                                        </div>
		                                    </div>
                                		</c:if>
                                	</c:forEach>
                                </div>
                            </div>
                            <div class="ct_section">
                                <div class="ct_tit">
                                    Music
                                </div>
                                <div class="ct_txt_wrap">
                                    <c:forEach var="t" begin="0" end="${careerList.size()-1 }">
                                   		<c:if test="${careerList.get(t).type == '음반' }">
		                                    <div class="ct_txt" id="ct_txt${careerList.get(t).auto }">
		                                    	<div class="img" onclick="career_minus(${careerList.get(t).auto })">
		                                            <img src="/img/admin/minus01.png">
		                                        </div>
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${careerList.get(t).syear == careerList.get(t).eyear }">
				                                            ${careerList.get(t).eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${careerList.get(t).eyear == 9999 }">
		                                        					${careerList.get(t).syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${careerList.get(t).syear } ~ ${careerList.get(t).eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${careerList.get(t).content }
		                                        </div>
		                                    </div>
                                		</c:if>
                                	</c:forEach>
                                </div>
                            </div>
                            <div class="ct_section">
                                <div class="ct_tit">
                                    M.V
                                </div>
                                <div class="ct_txt_wrap">
                                    <c:forEach var="t" begin="0" end="${careerList.size()-1 }">
                                   		<c:if test="${careerList.get(t).type == '뮤직비디오' }">
		                                    <div class="ct_txt" id="ct_txt${careerList.get(t).auto }">
		                                    	<div class="img" onclick="career_minus(${careerList.get(t).auto })">
		                                            <img src="/img/admin/minus01.png">
		                                        </div>
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${careerList.get(t).syear == careerList.get(t).eyear }">
				                                            ${careerList.get(t).eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${careerList.get(t).eyear == 9999 }">
		                                        					${careerList.get(t).syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${careerList.get(t).syear } ~ ${careerList.get(t).eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${careerList.get(t).content }
		                                        </div>
		                                    </div>
                                		</c:if>
                                	</c:forEach>
                                </div>
                            </div>
                            <div class="ct_section">
                                <div class="ct_tit">
                                    Ambassadors
                                </div>
                                <div class="ct_txt_wrap">
                                    <c:forEach var="t" begin="0" end="${careerList.size()-1 }">
                                   		<c:if test="${careerList.get(t).type == '홍보대사' }">
		                                    <div class="ct_txt" id="ct_txt${careerList.get(t).auto }">
		                                    	<div class="img" onclick="career_minus(${careerList.get(t).auto })">
		                                            <img src="/img/admin/minus01.png">
		                                        </div>
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${careerList.get(t).syear == careerList.get(t).eyear }">
				                                            ${careerList.get(t).eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${careerList.get(t).eyear == 9999 }">
		                                        					${careerList.get(t).syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${careerList.get(t).syear } ~ ${careerList.get(t).eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${careerList.get(t).content }
		                                        </div>
		                                    </div>
                                		</c:if>
                                	</c:forEach>
                                </div>
                            </div>
                            <div class="ct_section">
                                <div class="ct_tit">
                                    Book
                                </div>
                                <div class="ct_txt_wrap">
                                    <c:forEach var="t" begin="0" end="${careerList.size()-1 }">
                                   		<c:if test="${careerList.get(t).type == '저서' }">
		                                    <div class="ct_txt" id="ct_txt${careerList.get(t).auto }">
		                                    	<div class="img" onclick="career_minus(${careerList.get(t).auto })">
		                                            <img src="/img/admin/minus01.png">
		                                        </div>
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${careerList.get(t).syear == careerList.get(t).eyear }">
				                                            ${careerList.get(t).eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${careerList.get(t).eyear == 9999 }">
		                                        					${careerList.get(t).syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${careerList.get(t).syear } ~ ${careerList.get(t).eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${careerList.get(t).content }
		                                        </div>
		                                    </div>
                                		</c:if>
                                	</c:forEach>
                                </div>
                            </div>
                            <div class="ct_section">
                                <div class="ct_tit">
                                    Award
                                </div>
                                <div class="ct_txt_wrap">
                                    <c:forEach var="t" begin="0" end="${careerList.size()-1 }">
                                   		<c:if test="${careerList.get(t).type == '수상' }">
		                                    <div class="ct_txt" id="ct_txt${careerList.get(t).auto }">
		                                    	<div class="img" onclick="career_minus(${careerList.get(t).auto })">
		                                            <img src="/img/admin/minus01.png">
		                                        </div>
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${careerList.get(t).syear == careerList.get(t).eyear }">
				                                            ${careerList.get(t).eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${careerList.get(t).eyear == 9999 }">
		                                        					${careerList.get(t).syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${careerList.get(t).syear } ~ ${careerList.get(t).eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${careerList.get(t).content }
		                                        </div>
		                                    </div>
                                		</c:if>
                                	</c:forEach>
                                </div>
                            </div>
                        </div>
                    </section>
                    <div class="ac_btn_wrap">
                        <div class="ac_btn" onclick="history.back()">취소</div>
<!--                         <div class="ac_btn">변경</div> -->
                    </div>
                </div>
            </div>
            <footer class="sub_footer">
            	<c:import url="/WEB-INF/view/main/footer.jsp"/>
            </footer>
        </div>
    </body>
</html>