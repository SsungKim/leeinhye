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
            <div class="contact_page">
	            <header class="sub_header">
	            	<c:import url="/WEB-INF/view/main/sub_header.jsp"/>
	            </header>
                <div class="title">
                    <div class="txt">
                        CONTACT
                    </div>
                </div>
                <div class="inner">
                    <div class="contents">
                        <div class="input_wrap">
                            <div class="tit">
                                Tel
                            </div>
                            <input type="tel" placeholder="전화번호를 입력하세요" id="contact_tel">
                            <div class="tit">
                                E-Mail
                            </div>
                            <input type="text" placeholder="name" id="contact_name">
                            <input type="email" placeholder="mail" id="contact_mail">
                            <input type="tel" placeholder="phone" id="contact_phone">
                            <textarea placeholder="message"></textarea>
                        </div>
                        <div class="sbtn" onclick="contact_send()">
                            send
                        </div>
                    </div>
                </div>
	            <footer class="main_footer">
	            	<c:import url="/WEB-INF/view/main/footer.jsp"/>
	            </footer>
            </div>
        </div>
    </body>
</html>