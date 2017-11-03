<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Expires" content="0">
<meta http-equiv="kiben" content="no-cache">
<title>上传文件</title>
<link rel="stylesheet"
	href="../../resources/lib/bootstrap-qy-3.3.7/css/bootstrap.css" />
<link rel="stylesheet"
	href="../../resources/lib/bootstrap-qy-3.3.7/css/bootstrap-theme.css" />
<link rel="stylesheet"
	href="../../resources/lib/bootstrap-qy-3.3.7/css/iconfont.css" />
<link rel="stylesheet"
	href="<spring:url value='/resources/css/pc/qy.css'/>" />
<link rel="stylesheet"
	href="<spring:url value='/resources/svg/icomoon/style.css'/>" />
<link rel="stylesheet"
	href="<spring:url value='/resources/css/pc/management/uploadFile.css'/>" />

<script src="../../resources/lib/jquery-3.2.1.js"></script>
<script src="../../resources/lib/underscore.js"></script>
<script src="../../resources/lib/bootstrap-3.3.7/js/bootstrap.js"></script>
<script src="<spring:url value='/resources/js/pc/common.js'/>"></script>
<script src="<spring:url value='/resources/js/pc/plugin.js'/>"></script>
<script
	src="<spring:url value='/resources/js/pc/management/uploadFile.js'/>"></script>
</head>
<body>
	<div class="frame">
		<div class="frame-header">
			<%@include file="../common/head.jsp"%>
		</div>
		<div class="frame-body">
			<div class="frame-aside">
				<%@include file="../common/navigation.jsp"%>
			</div>
			<div class="frame-main qy">
				<div class="qy-aside">
					<div class="qy-aside-tool">
						<div class='search'>
							<input type="text" class="form-control" placeholder="输入项目">
							<i class="icon icon-search"></i>
						</div>
						<a> <i class="icon icon-plus"></i>
						</a>
					</div>
					<div class="qy-aside-menu">
						<h3>综合管理目录</h3>
						<ul>
							<li>
								<div>
									<i class="icon icon-down"></i> <a href="javascript:;">日常事务类(20)</a>
								</div>
								<ul>
									<li><label>月</label><a href="javascript:;">打扫卫生</a></li>
									<li><label>月</label><a href="javascript:;">东方格调</a></li>
								</ul>
							</li>
							<li class='on'>
								<div>
									<i class="icon icon-down"></i> <a href="javascript:;">设备类(20)</a>
								</div>
								<ul>
									<li><label>月</label><a href="javascript:;">打扫卫生</a></li>
									<li><label>月</label><a href="javascript:;">东方格调</a></li>
								</ul>
							</li>
							<li>
								<div>
									<i class="icon icon-down"></i> <a href="javascript:;">耗材类(20)</a>
								</div>
								<ul>
									<li><label>月</label><a href="javascript:;">打扫卫生</a></li>
									<li><label>月</label><a href="javascript:;">东方格调</a></li>
								</ul>
							</li>
							<li>
								<div>
									<i class="icon icon-down"></i> <a href="javascript:;">财产类(20)</a>
								</div>
								<ul>
									<li><label>月</label><a href="javascript:;">打扫卫生</a></li>
									<li><label>月</label><a href="javascript:;">东方格调</a></li>
								</ul>
							</li>
							<li>
								<div>
									<i class="icon icon-down"></i> <a href="javascript:;">卫生类(20)</a>
								</div>
								<ul>
									<li><label>月</label><a href="javascript:;">打扫卫生</a></li>
									<li><label>月</label><a href="javascript:;">东方格调</a></li>
								</ul>
							</li>
							<li>
								<div>
									<i class="icon icon-down"></i> <a href="javascript:;">其他类(20)</a>
								</div>
								<ul>
									<li><label>月</label><a href="javascript:;">打扫卫生</a></li>
									<li><label>月</label><a href="javascript:;">东方格调</a></li>
								</ul>
							</li>
							<li>
								<div>
									<i class="icon icon-down"></i> <a href="javascript:;">回收站(20)</a>
								</div>
								<ul>
									<li><label>月</label><a href="javascript:;">打扫卫生</a></li>
									<li><label>月</label><a href="javascript:;">东方格调</a></li>
								</ul>
							</li>
						</ul>
					</div>

				</div>
				<div class="qy-container-file">
					<div class="file-title">
						<div class="wrapper">项目批量导入</div>
					</div>
					<!-- 					第一步 -->
					<div class="flie-content firstStep">
						<div class="qy-progress-show">
							<div class="common-progress first-block">
								<span class="num-order"> 01 </span> <span class="progress-tips ">上传文件</span>
							</div>
							<div class="common-progress second-block">
								<span class="num-order"> 02 </span> <span class="progress-tips ">执行导入</span>
							</div>
							<div class="common-progress three-block">
								<span class="num-order"> 03 </span> <span class="progress-tips">完成</span>
							</div>

						</div>
						<div class="qy-important-content">
							<div class="media">
								<div class="media-left">
									<a href="javascript:void(0)"> <i class="icon-xue down-icon"></i>
									</a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">填写导入项目信息</h4>
									<a href="javascript:void(0)">下载模板</a>
								</div>

							</div>
							<div class="media">
								<div class="media-left">
									<a href="javascript:void(0)"> <i class="icon-xue up-icon"></i>
									</a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">上传项目列表（仅支持.xls/.xlsx格式，且文件大小不超过2M）</h4>
									<a href="javascript:void(0)">上传文件</a>
								</div>

							</div>

						</div>

						<div class="qy-handle-btn">
							<div class="common-btn go-back">
								<a href="javascript:void(0)">返回</a>

							</div>
							<div class="common-btn next-step">
								<a href="javascript:void(0)">下一步</a>

							</div>



						</div>


					</div>
					<!-- 					第二步 -->
					<div class="flie-content seconedStep" style="display:none">
						<div class="qy-progress-show">
							<div class="common-progress first-block">
								<span class="num-order"> 01 </span> <span class="progress-tips ">上传文件</span>
							</div>
							<div class="common-progress second-block">
								<span class="num-order"> 02 </span> <span class="progress-tips ">执行导入</span>
							</div>
							<div class="common-progress three-block">
								<span class="num-order"> 03 </span> <span class="progress-tips">完成</span>
							</div>

						</div>
						<div class="qy-important-content">
							<div class="media">
								<div class="media-left">
									<a href="javascript:void(0)"> <i
										class='icon icon-checkcircleo'></i>
									</a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">格式正确：18条</h4>
								</div>

							</div>
							<div class="media">
								<div class="media-left">
									<a href="javascript:void(0)"> <i
										class='icon icon-exclamationcircleo'></i>
									</a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">格式错误：4条</h4>
								</div>

							</div>

						</div>

						<div class="qy-handle-btn">
							<div class="common-btn go-back">
								<a href="javascript:void(0)">返回</a>

							</div>
							<div class="common-btn next-step">
								<a href="javascript:void(0)">下一步</a>

							</div>
							<a class="back-upload" href="javascript:void(0)">返回重新上传</a>



						</div>
						<!-- 						显示上传错误记录 -->
						<div class="error-record">
							<div class="media">
								<div class="media-left">
									<a href="javascript:void(0)"> <i
										class="icon icon-exclamationcircleo"></i>
									</a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">不可导入事件信息</h4>
								</div>

							</div>

							<div class='table'></div>

						</div>

					</div>
<!-- 					第三步 -->
					<div class="flie-content threeStep" style="display:none">
						<div class="qy-progress-show">
							<div class="common-progress first-block">
								<span class="num-order"> 01 </span> <span class="progress-tips ">上传文件</span>
							</div>
							<div class="common-progress second-block">
								<span class="num-order"> 02 </span> <span class="progress-tips ">执行导入</span>
							</div>
							<div class="common-progress three-block">
								<span class="num-order"> 03 </span> <span class="progress-tips">完成</span>
							</div>

						</div>
						<div class="qy-important-content">
						    <div class="time-out">页面将在 5 秒后自动关闭</div>
							<div class="media" style="line-height:40px">
								<div class="media-left">
									<a href="javascript:void(0)"> <i
										class="icon icon-checkcircleo"></i>
									</a>
								</div>
								<div class="media-body">
									<h4 class="media-heading">成功导入项目：18条</h4>
								</div>

							</div>

						</div>

						<div class="qy-handle-btn">
							<div class="common-btn go-back">
								<a href="javascript:void(0)">返回</a>

							</div>
							<div class="common-btn next-step">
								<a href="javascript:void(0)">关闭</a>

							</div>
							<a class="back-upload" href="javascript:void(0)">继续导入</a>



						</div>


					</div>

				</div>


			</div>
		</div>

	</div>
</body>
<script>
	(function pageScript() {
		var columns = [ {
			title : '编号',
			content : 'key1'
		}, {
			title : '项目名称',
			content : 'key2'
		}, {
			title : '错误提示',
			content : 'key3'
		} ];
		var d0 = {
			key1 : '1',
			key2 : 'SH-JS0002管理',
			key3 : '连带负责人格式错误',
		}
		var data = [ d0, _.deepClone(d0), _.deepClone(d0), _.deepClone(d0),
				_.deepClone(d0), _.deepClone(d0), _.deepClone(d0),
				_.deepClone(d0), _.deepClone(d0), _.deepClone(d0),
				_.deepClone(d0), _.deepClone(d0), _.deepClone(d0) ];
		$('.table').table({
			columns : columns,
			data : getTableData(1),
			checkable : false,
			onCheck : function(data) {
				console.log(data);
			},
			onRowClick : function(data) {
				console.log(data);
			}
		});
		function getTableData(page) {
			function getPojo(page, index) {
				var d1 = _.deepClone(d0);
				d1.key4 = '丽娜' + (page * 15 + index + 1);
				d1.key5 = '熊攀峰' + (page * 15 + index + 1);
				return d1;
			}
			var result = [];
			for (var i = 0; i < 15; i += 1) {
				result.push(getPojo(page - 1, i));
			}
			return result;
		}
		$('.pagination').pagination({
			total : 750,
			onChange : function(current) {
				$('.table').table({
					action : 'updateData',
					data : getTableData(current)
				});
			}
		});
		$('.qy-aside-menu > ul').on('click', 'li div', function() {
			$(this).parent().toggleClass('on');
		});
	})();
</script>
</html>