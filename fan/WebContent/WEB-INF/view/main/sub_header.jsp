<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="header_opa"></div>
<div class="inner">
	<div class="logo">
		<img src="/img/common/logo.png" onclick="location.href='/'">
	</div>
	<div class="gnb_wrap">
		<ul>
			<li class="gnb ${menu == 'about' ? 'sel' : '' }"><span
				onclick="location.href='/about'">About</span></li>
			<li class="gnb ${menu == 'career' ? 'sel' : '' }"><span
				onclick="location.href='/career'">Career</span></li>
			<li class="gnb ${menu == 'gallery' ? 'sel' : '' }"><span
				onclick="location.href='/gallery'">Galley</span></li>
<%-- 			<li class="gnb ${menu == 'sns' ? 'sel' : '' }"><span --%>
<!-- 				onclick="location.href='/sns'">Sns</span></li> -->
			<li class="gnb ${menu == 'contact' ? 'sel' : '' }"><span
				onclick="location.href='/contact'">Contact</span></li>
		</ul>
	</div>
</div>