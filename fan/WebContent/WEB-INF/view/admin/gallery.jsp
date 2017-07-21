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
            <div class="admin_gallery">
                <div class="page_inner">
                    <div class="index_txt">
						※사진 추가를 원할실때는 <span><img class="img1" src="/img/admin/plus.png"></span> 버튼을 클릭해 추가해 주시면 됩니다.<br>
						※사진 삭제를 원할실때는 <span><img src="/img/admin/minus01.png"></span> 버튼을 클릭해 삭제해 주시면 됩니다.<br>
						※사진은 최대 1000장까지 등록가능합니다.
                    </div>
                    <div class="add_remove_btn_wrap">
                    	<div class="btn" onclick="gallery_delete_btn()">삭제</div>
                    	<div class="btn" onclick="gallery_add_btn()">추가</div>
                    </div>
                    <div class="ag_img_wrap">
                        <div class="ag ag_add">
                            <label for="input_file"></label>
                            <input type="button" id="input_file" class="upload_hidden" onclick="galleryPic()">
                        </div>
                        <form action="/admin/galleryUpload" method="post" enctype="multipart/form-data" id="galleryForm">
	                        <div id="gallery_wrap">
	                        	<c:choose>
			                        <c:when test="${galleryList.size() > 0 }">
				                        <c:forEach var="t" begin="0" end="${galleryList.size()-1 }">
				                        	<div class="ag" id="gallery_div${galleryList.size()-t }" style="background-image: url('/file/gallery/${galleryList.get(t).img }'); background-size: cover; background-position: center center; ">
					                            <div class="minus_img" id="gallery_minus${galleryList.size()-t }" onclick="galleryMinus(this)">
					                                <img src="/img/admin/minus.png">
					                            </div>
					                        </div>
				                        </c:forEach>
				                        <c:forEach var="t" begin="${galleryList.size()+1 }" end="1000">
				                        	<input type="file" class="upload_hidden gallery_file" id="gallery_file${t }" name="galley_file${t }" onchange="galleryPic2(this)" style="display: none; ">
				                        </c:forEach>
			                        </c:when>
			                        <c:otherwise>
			                        	<c:forEach var="t" begin="1" end="1000">
				                        	<input type="file" class="upload_hidden gallery_file" id="gallery_file${t }" name="galley_file${t }" onchange="galleryPic2(this)" style="display: none; ">
				                        </c:forEach>
			                        </c:otherwise>
	                        	</c:choose>
	                        </div>
	                    </form>
                    </div>
                    <div class="ag_btn_wrap">
                        <div class="ag_btn" onclick="history.back()">취소</div>
                        <div class="ag_btn" onclick="gallery_save()">완료</div>
                    </div>
<!--                     <div class="page_select_wrap"> -->
<!--                         <div class="prev_pages_wrap pages_wrap"> -->
<!--                             <img src="/img/admin/arrow_prev.png"> -->
<!--                         </div> -->
<!--                         <div class="now_pages_wrap pages_wrap"> -->
<!--                             <div class="page"> -->
<!--                                 <span>1</span> -->
<!--                             </div> -->
<!--                             <div class="page"> -->
<!--                                 <span>2</span> -->
<!--                             </div> -->
<!--                             <div class="page"> -->
<!--                                 <span>3</span> -->
<!--                             </div> -->
<!--                             <div class="page"> -->
<!--                                 <span>4</span> -->
<!--                             </div> -->
<!--                             <div class="page"> -->
<!--                                 <span>5</span> -->
<!--                             </div> -->
<!--                             <div class="page"> -->
<!--                                 <span>6</span> -->
<!--                             </div> -->
<!--                             <div class="page"> -->
<!--                                 <span>7</span> -->
<!--                             </div> -->
<!--                             <div class="page"> -->
<!--                                 <span>8</span> -->
<!--                             </div> -->
<!--                             <div class="page"> -->
<!--                                 <span>9</span> -->
<!--                             </div> -->
<!--                             <div class="page"> -->
<!--                                 <span>10</span> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="next_pages_wrap pages_wrap"> -->
<!--                             <img src="/img/admin/arrow_next.png"> -->
<!--                         </div> -->
<!--                     </div> -->
                </div>
            </div>
            <footer class="main_footer">
            	<c:import url="/WEB-INF/view/main/footer.jsp"/>
            </footer>
        </div>
    </body>
</html>