<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
         <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath() %>/css/css.css" rel="stylesheet">
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery-1.8.2.min.js"></script>
</head>
</head>
<body>

<a href="http://localhost:8080/find">返回</a>
<table>

	<tr>
			<th>编号</th>
			<th>品牌</th>
			<th>分类</th>
			<th>发布时间</th>
			<th>价格</th>
		</tr>
	
		<tr>
			<th>${goods.gid }</th>
			<th>${goods.gname }</th>
			<th>${goods.tname }</th>
			<th>
				<fmt:formatDate value="${goods.datea}"
				pattern="YYYY-MM-dd"
				/>
			</th>
			<th>${goods.price}</th>
		
		
		</tr>
	
	
	


</table>
</body>
</html>