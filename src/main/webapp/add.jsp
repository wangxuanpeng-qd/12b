<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<h3>新加页面</h3>
	<form>
		
		品牌<input type="text" name="gname"><br>
		分类<select name="tid">
			<option>请选择</option>
			<c:forEach items="${type}" var="t">
				<option value="${t.tid}">${t.tname }</option>
			
			</c:forEach>
		</select><br>
		价格<input type="text" name="price"><br>
		
		
	</form>
	<button id="bc">保存</button>
	<button id="qx">取消</button>
</body>
<script type="text/javascript">

	$("#bc").click(function(){
		alert("确定添加么?");
		$.post("add",$("form").serialize(),function(date){
			if(date){
				alert("保存成功");
				location.href="http://localhost:8080/find";
			}else{
				alert("保存失败");
			}
		});
	});
</script>
</html>