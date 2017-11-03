<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Expires" content="0">
	<meta http-equiv="kiben" content="no-cache">
	<title>模态框</title>
	<link rel="stylesheet" href="../../resources/lib/bootstrap-qy-3.3.7/css/bootstrap.css" />
	<link rel="stylesheet" href="../../resources/lib/bootstrap-qy-3.3.7/css/bootstrap-theme.css" />
	<link rel="stylesheet" href="../../resources/lib/bootstrap-qy-3.3.7/css/iconfont.css" />
	<link rel="stylesheet" href="<spring:url value='/resources/css/pc/qy.css'/>" />
	<link rel="stylesheet" href="<spring:url value='/resources/svg/icomoon/style.css'/>" />
	<link rel="stylesheet" href="<spring:url value='/resources/css/pc/management/maintenance.css'/>" />
	
	<script src="../../resources/lib/jquery-3.2.1.js"></script>
	<script src="../../resources/lib/underscore.js"></script>
	<script src="../../resources/lib/bootstrap-3.3.7/js/bootstrap.js"></script>
	<script src="<spring:url value='/resources/js/pc/common.js'/>"></script>
	<script src="<spring:url value='/resources/js/pc/plugin.js'/>"></script>
</head>

<body>
	<div class="frame">
		<div class="frame-header">
			<%@include file="../common/head.jsp" %>
		</div>
		<div class="frame-body">
			<button class='btn' id='toggle'>打开</button>
			<div class="modal">
				<div role="document" class="modal-dialog" style="width: 520px; height: 400px;">
					<div class="modal-content">
						<button class="modal-close"><span class="modal-close-x"></span></button>
						<div class="modal-header">
							<div class="modal-title">模态框标题</div>
						</div>
						<div class="modal-body">
							<p>xiong</p><p>ling</p><p>yong</p><p>lina</p><p>diudiu</p>
							<p>xiong</p><p>ling</p><p>yong</p><p>lina</p><p>diudiu</p>
							<p>xiong</p><p>ling</p><p>yong</p><p>lina</p><p>diudiu</p>
							<p>xiong</p><p>ling</p><p>yong</p><p>lina</p><p>diudiu</p>
							<p>xiong</p><p>ling</p><p>yong</p><p>lina</p><p>diudiu</p>
							<p>xiong</p><p>ling</p><p>yong</p><p>lina</p><p>diudiu</p>
							<p>xiong</p><p>ling</p><p>yong</p><p>lina</p><p>diudiu</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn modal-close"><span>取消</span></button>
							<button type="button" class="btn btn-primary"><span>确定</span></button>
						</div>
					</div>
				</div>
			</div>			
		</div>
	</div>
	<script>
		$('#toggle').on('click', function() {
			$(".modal").modal('toggle');
		});
	</script>
</body>
</html>