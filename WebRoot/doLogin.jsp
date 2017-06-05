<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
 %>
<jsp:useBean id="User" class="com.po.Users" scope="page"></jsp:useBean>
<jsp:useBean id="userDao" class="com.dao.UserDao" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="User"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	if(userDao.usersLogin(User)){
		session.setAttribute("loginUser", User.getUsername());
		request.getRequestDispatcher("login_successful.jsp").forward(request, response);
	}else{
		response.sendRedirect("login_default.jsp");
	}
	
	
	
%>

