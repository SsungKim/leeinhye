<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach var="t" items="${galleryList }">
	<div class="item ${t.ran > 0.5 ? 'item2' : '' }" id="gallery_item${t.auto }"
			 style="background-image: url('/file/gallery/${t.img}'); background-size: cover; background-position: center center; ">
		<div class="item_cover" onclick="gallery_view('${t.img }')"></div>
	</div>
</c:forEach>