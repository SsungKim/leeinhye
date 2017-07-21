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
            	<c:import url="/WEB-INF/view/main/header.jsp"/>
            </header>
            <div class="admin_index">
                <div class="page_inner">
                    <div class="index_txt">
						※메인 슬라이더 사진은 총 7장까지 등록 가능합니다. <br>
						※사진 크기는 1920*1080사이즈로 편집해서 업로드 해주세요<br>
						※사진 삭제를 원할실때는 <span><img src="/img/admin/minus01.png"></span> 버튼을 클릭해 삭제해 주시면 됩니다.
                    </div>
                    <form action="/admin/upload" method="post" enctype="multipart/form-data" id="uploadForm">
	                    <div class="ms_img_wrap">
	                    	<c:choose>
	                    		<c:when test="${img.size() > 0 }">
			                    	<c:forEach var="t" begin="0" end="${img.size()-1 }">
		                   				<div class="ms ms_add" id="upload${t+1 }" style="background-image: url('/file/main/${img.get(t) }'); background-size: cover; background-position: center center; ">
				                            <label for="upload_file${t+1 }" id="upload_label${t+1 }" style="display: none; "></label>
				                            <input type="file" id="upload_file${t+1 }" class="upload_hidden" onchange="uploadPic(this)" name="upload_file${t+1 }" style="display: none; ">
				                        	<div class="minus_img" id="ms_minus${t+1 }" onclick="uploadMinus(this)" style="display: block; ">
				                                <img src="/img/admin/minus.png">
				                            </div>
				                        </div>
			                    	</c:forEach>
			                    	<c:forEach var="t" begin="${img.size() }" end="6">
			                    		<div class="ms ms_add" id="upload${t+1 }">
				                            <label for="upload_file${t+1 }" id="upload_label${t+1 }"></label>
				                            <input type="file" id="upload_file${t+1 }" class="upload_hidden" onchange="uploadPic(this)" name="upload_file${t+1 }">
				                        	<div class="minus_img" id="ms_minus${t+1 }" onclick="uploadMinus(this)">
				                                <img src="/img/admin/minus.png">
				                            </div>
				                        </div>
			                    	</c:forEach>
	                    		</c:when>
	                    		<c:otherwise>
	                    			<c:forEach var="t" begin="0" end="6">
			                    		<div class="ms ms_add" id="upload${t+1 }" style="background-image: url('/file/main/${img.get(t) }')">
				                            <label for="upload_file${t+1 }" id="upload_label${t+1 }"></label>
				                            <input type="file" id="upload_file${t+1 }" class="upload_hidden" onchange="uploadPic(this)" name="upload_file${t+1 }">
				                        	<div class="minus_img" id="ms_minus${t+1 }" onclick="uploadMinus(this)">
				                                <img src="/img/admin/minus.png">
				                            </div>
				                        </div>
			                    	</c:forEach>
	                    		</c:otherwise>
	                    	</c:choose>
	                    </div>
	                </form>
                    <div class="ms_btn_wrap">
                        <div class="ms_btn" onclick="history.back()">취소</div>
                        <div class="ms_btn" onclick="upload_save()">변경</div>
<!--                         <div class="ms_btn" onclick="$('#uploadForm').submit()">변경</div> -->
                    </div>
                </div>
            </div>
            <footer class="main_footer">
            	<c:import url="/WEB-INF/view/main/footer.jsp"/>
            </footer>
        </div>
    </body>
</html>