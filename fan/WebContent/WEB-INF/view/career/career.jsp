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
            <div class="career_page">
                <div class="title">
                    <div class="txt">
                        CAREER
                    </div>
                </div>
                <div class="inner">
                    <section class="cheader">
                        <div class="tit">
                            CAREER
                        </div>
                        <div class="print" onclick="career_print()">
                            Print
                        </div>
                        <div class="career_btn" onclick="location.href='/admin/career'">
                            CAREER 사진 수정
                        </div>
                    </section>
                    <section class="contents">
                        <div class="cs_section">
                            <div class="cslider_container">
                                <div class="cslider_wrap">
                                    <div class="cslider_inner" id="cslide1">
                                    	<c:forEach var="t" items="${dramaList }">
	                                        <div class="cslide">
	                                            <img src="/file/career/${t }">
	                                        </div>
                                    	</c:forEach>
                                    </div>
                                </div>
                                <div class="cs_arrow cs_arrow_prev" id="cslide_prev1">
                                    <img src="/img/common/arrow_prev1.png">
                                </div>
                                <div class="cs_arrow cs_arrow_next" id="cslide_next1">
                                    <img src="/img/common/arrow_next1.png">
                                </div>
                            </div>
                        </div>
                        <div class="ct_section_wrap">
                            <div class="ct_section">
                                <div class="ct_tit">
                                    Drama
                                </div>
                                <div class="ct_txt_wrap">
                                	<c:forEach var="t" items="${careerList }">
                                		<c:if test="${t.type == '드라마' }">
		                                    <div class="ct_txt">
		                                        <div class="date">
		                                        	<c:choose>
		                                        		<c:when test="${t.syear == t.eyear }">
				                                            ${t.eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${t.eyear == 9999 }">
		                                        					${t.syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${t.syear } ~ ${t.eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${t.content }
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
                                <div class="cslider_wrap">
                                    <div class="cslider_inner" id="cslide2">
                                    	<c:forEach var="t" items="${movieList }">
	                                        <div class="cslide">
	                                            <img src="/file/career/${t }">
	                                        </div>
                                    	</c:forEach>
                                    </div>
                                </div>
                                <div class="cs_arrow cs_arrow_prev" id="cslide_prev2">
                                    <img src="/img/common/arrow_prev1.png">
                                </div>
                                <div class="cs_arrow cs_arrow_next" id="cslide_next2">
                                    <img src="/img/common/arrow_next1.png">
                                </div>
                            </div>
                        </div>
                        <div class="ct_section_wrap">
                            <div class="ct_section">
                                <div class="ct_tit">
                                    Movie
                                </div>
                                <div class="ct_txt_wrap">
                                    <c:forEach var="t" items="${careerList }">
                                		<c:if test="${t.type == '영화' }">
		                                    <div class="ct_txt">
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${t.syear == t.eyear }">
				                                            ${t.eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${t.eyear == 9999 }">
		                                        					${t.syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${t.syear } ~ ${t.eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${t.content }
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
                                	<c:forEach var="t" items="${careerList }">
                                		<c:if test="${t.type == '예능' }">
		                                    <div class="ct_txt">
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${t.syear == t.eyear }">
				                                            ${t.eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${t.eyear == 9999 }">
		                                        					${t.syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${t.syear } ~ ${t.eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${t.content }
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
                                <div class="cslider_wrap">
                                    <div class="cslider_inner" id="cslide3">
                                    	<c:forEach var="t" items="${cfList }">
	                                        <div class="cslide">
	                                            <img src="/file/career/${t }">
	                                        </div>
                                    	</c:forEach>
                                    </div>
                                </div>
                                <div class="cs_arrow cs_arrow_prev" id="cslide_prev3">
                                    <img src="/img/common/arrow_prev1.png">
                                </div>
                                <div class="cs_arrow cs_arrow_next" id="cslide_next3">
                                    <img src="/img/common/arrow_next1.png">
                                </div>
                            </div>
                        </div>
                        <div class="ct_section_wrap">
                            <div class="ct_section">
                                <div class="ct_tit">
                                    CF
                                </div>
                                <div class="ct_txt_wrap">
                                	<c:forEach var="t" items="${careerList }">
                                		<c:if test="${t.type == '광고' }">
		                                    <div class="ct_txt">
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${t.syear == t.eyear }">
				                                            ${t.eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${t.eyear == 9999 }">
		                                        					${t.syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${t.syear } ~ ${t.eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${t.content }
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
                                <div class="cslider_wrap">
                                    <div class="cslider_inner" id="cslide4">
                                    	<c:forEach var="t" items="${mvList }">
	                                        <div class="cslide">
	                                            <img src="/file/career/${t }">
	                                        </div>
                                    	</c:forEach>
                                    </div>
                                </div>
                                <div class="cs_arrow cs_arrow_prev" id="cslide_prev4">
                                    <img src="/img/common/arrow_prev1.png">
                                </div>
                                <div class="cs_arrow cs_arrow_next" id="cslide_next4">
                                    <img src="/img/common/arrow_next1.png">
                                </div>
                            </div>
                        </div>
                        <div class="ct_section_wrap">
                            <div class="ct_section">
                                <div class="ct_tit">
                                    Show
                                </div>
                                <div class="ct_txt_wrap">
                                	<c:forEach var="t" items="${careerList }">
                                   		<c:if test="${t.type == '공연' }">
		                                    <div class="ct_txt">
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${t.syear == t.eyear }">
				                                            ${t.eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${t.eyear == 9999 }">
		                                        					${t.syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${t.syear } ~ ${t.eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${t.content }
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
                                	<c:forEach var="t" items="${careerList }">
                                   		<c:if test="${t.type == '음반' }">
		                                    <div class="ct_txt">
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${t.syear == t.eyear }">
				                                            ${t.eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${t.eyear == 9999 }">
		                                        					${t.syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${t.syear } ~ ${t.eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${t.content }
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
                                	<c:forEach var="t" items="${careerList }">
                                   		<c:if test="${t.type == '뮤직비디오' }">
		                                    <div class="ct_txt">
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${t.syear == t.eyear }">
				                                            ${t.eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${t.eyear == 9999 }">
		                                        					${t.syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${t.syear } ~ ${t.eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${t.content }
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
                                	<c:forEach var="t" items="${careerList }">
                                   		<c:if test="${t.type == '홍보대사' }">
		                                    <div class="ct_txt">
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${t.syear == t.eyear }">
				                                            ${t.eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${t.eyear == 9999 }">
		                                        					${t.syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${t.syear } ~ ${t.eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${t.content }
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
                                	<c:forEach var="t" items="${careerList }">
                                   		<c:if test="${t.type == '저서' }">
		                                    <div class="ct_txt">
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${t.syear == t.eyear }">
				                                            ${t.eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${t.eyear == 9999 }">
		                                        					${t.syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${t.syear } ~ ${t.eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${t.content }
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
                                	<c:forEach var="t" items="${careerList }">
                                   		<c:if test="${t.type == '수상' }">
		                                    <div class="ct_txt">
		                                        <div class="date">
		                                            <c:choose>
		                                        		<c:when test="${t.syear == t.eyear }">
				                                            ${t.eyear }
		                                        		</c:when>
		                                        		<c:otherwise>
		                                        			<c:choose>
		                                        				<c:when test="${t.eyear == 9999 }">
		                                        					${t.syear } ~ 현재
		                                        				</c:when>
		                                        				<c:otherwise>
		                                        					${t.syear } ~ ${t.eyear }
		                                        				</c:otherwise>
		                                        			</c:choose>
		                                        		</c:otherwise>
		                                        	</c:choose>
		                                        </div>
		                                        <div class="txt">
		                                            ${t.content }
		                                        </div>
		                                    </div>
                                		</c:if>
                                	</c:forEach>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
            <footer class="sub_footer">
            	<c:import url="/WEB-INF/view/main/footer.jsp"/>
            </footer>
        </div>
    </body>
</html>