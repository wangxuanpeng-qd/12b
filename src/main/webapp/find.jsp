<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>
</head>
</head>
<body>
	<table>
		<tr>
			<th colspan="7">
				<form action="find" method="post">
					<input type="text" name="gname"> <input type="submit"
						value="查询">
				</form> <a href="toadd">添加</a> <input type="button" onclick="deleteAll()"
				value="批量删除">
			</th>
		</tr>
		<tr>
			<th><input type="checkbox" id="xz"></th>
			<th>编号</th>
			<th>品牌</th>
			<th>分类</th>
			<th>发布时间</th>
			<th>操作</th>


		</tr>
		<c:forEach items="${page.list }" var="u">
			<tr>
				<th><input type="checkbox" name="gid" value="${u.gid}">
				</th>
				<th>${u.gid}</th>
				<th>${u.gname}</th>
				<th>${u.tname}</th>
				<th><fmt:formatDate value="${u.datea}" pattern="YYYY-MM-dd" />
				</th>

				<th><a href="findOne?gid=${u.gid}">详情</a> <a
					href="toupate?gid=${u.gid}">编辑</a></th>

			</tr>
		</c:forEach>
		<tr>
			<th colspan="9"><a href="?pageNum=1">首页</a> <a
				href="?pageNum=${page.pageNum-1<0 ?page.pageNum:page.pageNum-1}">上一页</a>
				<a
				href="?pageNum=${page.pageNum+1>page.pages?page.pages:page.pageNum+1 }">下一页</a>
				<a href="?pageNum=${page.pages}">尾页</a> 当前页为
				${page.pageNum}/${page.total} 页</th>


		</tr>
	</table>
</body>
<script type="text/javascript">
	$("#xz").toggle(function() {
		$("[name='gid']").attr("checked", true);
	}, function() {
		$("[name='gid']").attr("checked", false);
	});
</script>
<script type="text/javascript">
	function deleteAll() {
		if (confirm("确定要删除么")) {
			
			var ids = "";
			$("[name='gid']:checked").each(function() {
				ids += "," + this.value;
			});
			ids = ids.substring(1);
			alert(ids);
			

			
		}
		
		$.post("deleteAll",{"ids":ids},function(data){
			
			if(data){
				alert("删除成功");
				location.href="http://localhost:8080/find"
			}else{
				alert("删除失败");
			}
			
			
		},"json")
		
		
		
	
		
	}
</script>


</html>