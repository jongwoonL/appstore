<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="appstore.developer.DeveloperDBBean"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<%
request.setCharacterEncoding("utf-8");
%>    
    
    
<jsp:useBean id="dev" scope="page"
	class="appstore.developer.DeveloperDataBean">
</jsp:useBean>

<%
String dev_id = request.getParameter("dev_id");
String dev_pw = request.getParameter("dev_pw");
String dev_name = request.getParameter("dev_name");

dev.setDev_id(dev_id);
dev.setDev_pw(dev_pw);
dev.setDev_name(dev_name);

DeveloperDBBean devProcess = DeveloperDBBean.getInstance();
devProcess.updateDeveloper(dev, dev_id);

%>

<script>
	alert("회원정보수정이 완료되었습니다. 다시 로그인하세요.");
	location.href = "developerLoginForm.jsp";
</script>