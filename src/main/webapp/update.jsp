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
<form><br>
		
		品牌<input type="text" name="gname" value="${goods.gname }"><br>
		分类<select name="tid">
			<option>请选择</option>
			<c:forEach items="${type}" var="t">
				<option  value="${t.tid}"  <c:if test="${goods.tid==t.tid}">selected="selected"</c:if>  >${t.tname }</option>
			
			</c:forEach>
		</select><br>
		发布时间:<input type="date" name="datea" value="${goods.datea}">
	</form>
	<button id="xg">提交</button>
	
	
</body>
<script type="text/javascript">

$("#xg").click(function(){
	$.post("update?gid=${goods.gid}",$("form").serialize(),function(date){
		if(date){
			alert("修改成功");
			location.href="http://localhost:8080/find";
		}else{
			alert("修改失败");
		}
	});
});

</script>


</html>