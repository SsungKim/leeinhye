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
            <header class="main_header">
            	<c:import url="/WEB-INF/view/main/header.jsp"/>
            </header>
            <div class="admin_login">
                <div class="login_wrap">
                    <input type="text" placeholder="Id" class="id" id="login_id">
                    <input type="password" placeholder="Password" class="pw" id="login_pw">
                    <div class="login_btn" onclick="login()">Login</div>
                </div>
            </div>
            <footer class="main_footer">
            	<c:import url="/WEB-INF/view/main/footer.jsp"/>
            </footer>
        </div>
    </body>
</html>