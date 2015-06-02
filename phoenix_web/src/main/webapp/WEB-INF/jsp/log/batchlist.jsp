<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>日志批次列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/Css/style.css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/Js/jquery.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/Js/bootstrap.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/Js/ckform.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/Js/common.js"></script>

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }

    </style>
</head>
<body>
<form class="form-inline definewidth m20" action="index.jsp" method="get">  
    日志批次列表：<hr>
</form>
<table class="table table-bordered table-hover definewidth m10" >
    <thead>
    <tr>
        <th>批次编号</th>
        <th>批次值</th>
        <th>任务类型</th>
        <th>创建时间</th>
        <th>管理操作</th>
    </tr>
    </thead>
    <tbody>
       <c:forEach items="${datas.datas}" var="bs">
	     <tr>
            <td>${bs.id }</td>
            <td>${bs.batchId }
            <td>${bs.taskType }</td>
            <td><fmt:formatDate value="${bs.createDate }" pattern="yyyy-MM-dd HH:mm:ss" ></fmt:formatDate></td>
            <td>  
                  <a href="<%=request.getContextPath()%>/log/${bs.taskType}/${bs.id}">详细信息</a>&nbsp;&nbsp;
                  <a href="deletebatch/${bs.id}">删除批次</a>&nbsp;&nbsp;
                  <a href="<%=request.getContextPath()%>/chart/${f:split(bs.taskType,'_')[1]}/${bs.id}">统计图</a>&nbsp;&nbsp;
            </td>
        </tr>
        </c:forEach>
        </tbody>
     </table>
<div class="inline pull-right page">
		<jsp:include page="/jsp/pager.jsp">
			<jsp:param value="${datas.total }" name="totalRecord"/>
			<jsp:param value="batchlist" name="url"/>
		</jsp:include>
 </div>       
</body>
</html>
<script>
    $(function () {
		$('#addnew').click(function(){
			var scenarioId = $("#scenarioId").val();
			if(scenarioId == ""){
				window.location.href="add";
			}else{
				window.location.href="add/"+scenarioId;
			}
		 });
    });

</script>