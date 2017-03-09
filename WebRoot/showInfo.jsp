<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<jsp:useBean id="user" scope="session" class="jsp.test.show"></jsp:useBean>
  	<jsp:setProperty property="*" name="user"/>
  	<%if(request.getParameter("name")==null) {%>
  	<form action="" name="Example" method="post">
  	<p>姓名：<input type="text" name="name" size="15" maxlength="15" > </p>
  	<p>密码：<input type="password" name="password" size="15" maxlength="15"> </p>
  	<p>性别：<input type="radio" name="sex" value="Male" checked>男
  	       <input type="radio" name="sex" value="Female">女
  	 </p>
  	 <p>年龄：
  	 	<select name="age" >
  	 	<option value="10">10~20</option>
  	 	<option value="20" checked >21~30</option>
  	 	<option value="30">31~40</option>
  	 	<option value="40">41~50</option>
  	 		
  	 	</select>
  	 </p>
  	 <p>兴趣：
  	 <input type="checkbox" name="habit" value="Read" >
  	 看书
  	 <input type="checkbox" name="habit" value="Football" >
  	 足球
  	 <input type="checkbox" name="habit" value="Travel" >
  	 旅游
  	 <input type="checkbox" name="habit" value="Music" >
  	 听音乐
  	 <input type="checkbox" name="habit" value="TV" >
  	 看电视
  	 </p>
  	 <p>
  	 <input type="submit" value="传送">
  	 <input type="reset" value="清除">
  	 </p>
  	
  	  	</form>
  	<%}else{ %>
  	姓名：<%=user.getName() %><br>
  	密码：<%=user.getPassword() %><br>
  	性别：<%=user.getSex() %><br>
  	年龄:<%=user.getAge() %><br>
  	爱好：<%=user.getHobby() %>
  	
  	<%} %>

  </body>
</html>
