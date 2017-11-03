<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>modal</title>
	<link rel="stylesheet" href="../../resources/lib/bootstrap-qy-3.3.7/css/bootstrap.css" />
	<link rel="stylesheet" href="../../resources/lib/bootstrap-qy-3.3.7/css/bootstrap-theme.css" />
	<link rel="stylesheet" href="../../resources/lib/bootstrap-qy-3.3.7/css/iconfont.css" />
	<link rel="stylesheet" href="<spring:url value='/resources/css/pc/qy.css'/>" />
	
	<script src="../../resources/lib/jquery-3.2.1.js"></script>
	<script src="../../resources/lib/underscore.js"></script>
	<script src="../../resources/lib/bootstrap-3.3.7/js/bootstrap.js"></script>
	<script src="<spring:url value='/resources/js/pc/plugin.js'/>"></script>
	
	<style type="text/css">
		.icon-box{
			width: 22px;
			height: 22px;
			display: inline-block;
			border-radius: 50%;
			background-color: #fcd953;
			text-align: center;
			color: #fff;
			margin-right: 8px;
		}
		.icon-tag {
			font-size: 12px;
		}
		.listDetail .item {
			display: flex;
			font-size: 12px;
			margin-bottom: 4px;
		}
		.item-son-hd {
			width: 20%;
			font-weight: normal;
			color: #666;
			padding-left: 34px;
		}
		.item-son-bd {
			flex: 1;
		}
		.title {
			line-height: 24px;
			font-size: 12px;
		}
		.division {
			clear: both;
			height: 20px;
		}
		.item-son-bd>.col-sm-4 {
			padding-left: 0;
			padding-right: 0;
		}
		.division-line {
			margin: 0 -15px;
		}
		.text-red {
			color: #ff4141;
		}
		.modal-header {
			background-color: #f5f5f9;
		}
		.modal-footer.text-center {
			text-align: center;
		}
		.modal-body {
			overflow: hidden;
		}
		.dropdown {
			width: 100%;
		}
		.icon-closesquareo {
			color: #e9e9e9;
			font-size: 30px;
			position: absolute;
    		left: 0;
    		top: -7px;
    		cursor: pointer;
		}
		.icon-plussquareo {
			color: #e9e9e9;
			font-size: 30px;
			cursor: pointer;
		}
		.iblock {
			display: inline-block;
		}
		.form-label {
			font-size: 12px;
		    margin: 6px 0;
		    display: block;
		}
		.modal-body .row {
			/* overflow: hidden; */
			margin: 7px 10px 22px;
		}
		[class*="col-"] {
			padding-left: 5px;
			padding-right: 5px;
		}
		.text-primary {
			color: #4a7ec0;
		}
		.icon-infocirlceo {
			margin-left: 5px;
			font-size: 13px;
		}
		.checkbox {
			display: inline-block;
			float: right;
		}
		.points, 
		.award-points {
			position: relative;
			font-size: 12px;
		}
		.tip {
			position: absolute;
			left: 10px;
			top: 7px;
		}
		.company {
			position: absolute;
			right: 10px;
			top: 6px;
		}
		.points .form-control {
			padding-left: 35px;
			padding-right: 35px;
			text-align: right;
		}
		.award-points .form-control {
			padding-left: 50px;
			padding-right: 50px;
			text-align: right;
		}
		.addCatalogModal .item {
			display: flex;
		}
		.item-cell {
			flex: 1;
		}
		.item-cell .form-control {
			border-radius: 4px 0 0 4px;
		}
		.item-cell + .item-cell .form-control {
			border-radius: 0 4px 4px 0;
			border-left: 0;
		}
		.form-control.text-center {
			text-align: center;
		}
		.text-icon {
			padding: 2px 3px;
    		font-style: normal;
    		border-radius: 2px;
    		color: #fff;
		}
		.icon-default {
			background-color: #8292fa;
		}
		.icon-primary {
			background-color: #3eb1f7;
		}
		.icon-orange {
			background-color: #fc924c;
		}
		.text-green {
			color: #93cd30;
		}
	</style>
</head>
<body>
	<button type="button" class='btn detail'>弹出详情</button>
	<button type="button" class='btn addCatalog'>新增目录</button>
	<script>
	  $('.detail').on('click', function() {
		  $('.listDetailModal').modal('toggle');
	  });
	  $('.addCatalog').on('click', function() {
		  $('.addCatalogModal').modal('toggle');
	  });
	</script>
	<!-- Modal -->
	<div class="modal listDetailModal">
		<div class="modal-dialog" role="document" style='width:600px; height:400px'>
			<div class="modal-content">
				<button class="modal-close"><span class="modal-close-x"></span></button>
				<div class="modal-header">
					<div class="modal-title">
						<button type="button" class="btn btn-default" data-dismiss="modal">编辑</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">删除</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">打印</button>
					</div>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-12 title">
							<span class="icon-box"><i class="icon icon-tag"></i></span>
							管理项目
						</div>
						<div class="division"></div>
						<div class="col-md-12 item">
							<label class="item-son-hd">项目名：</label>
							<div class="item-son-bd">SH-JS0001管理</div>
						</div>
						<div class="col-md-12 item">
							<label class="item-son-hd">设备编号：</label>
							<div class="item-son-bd">SH-JS0001</div>
						</div>
						<div class="col-md-12 item">
							<label class="item-son-hd">部门：</label>
							<div class="item-son-bd">软件开发部-上海分公司</div>
						</div>
						<div class="division"></div>
						<div class="col-md-12 item">
							<label class="item-son-hd">主负责人：</label>
							<div class="item-son-bd">
								<div class="col-sm-4">刘丽娜 <span class="text-red">已签名</span></div>
								<div class="col-sm-8">
									<div class="col-sm-4">B分：50</div>
									<div class="col-sm-4">A分：0</div>
									<div class="col-sm-4">产值：50 <i class="text-icon icon-default">虚</i></div>
								</div>
							</div>
						</div>
						<div class="col-md-12 item">
							<label class="item-son-hd">次负责人：</label>
							<div class="item-son-bd">
								<div class="col-sm-4">熊攀峰 <span class="text-green">待签名</span></div>
								<div class="col-sm-8">
									<div class="col-sm-4">B分：50</div>
									<div class="col-sm-4">A分：0</div>
									<div class="col-sm-4">产值：50 <i class="text-icon icon-primary">创</i></div>
								</div>
							</div>
						</div>
						<div class="col-md-12 item">
							<label class="item-son-hd">连带责任人：</label>
							<div class="item-son-bd">
								<div class="col-sm-4">陈岳麟</div>
								<div class="col-sm-8">
									<div class="col-sm-4">B分：50</div>
									<div class="col-sm-4">A分：0</div>
									<div class="col-sm-4">产值：50 <i class="text-icon icon-orange">实</i></div>
								</div>
							</div>
						</div>
					</div>
					<hr class="division-line" />
					<div class="division"></div>
					<div class="row">
						<div class="col-md-12 title">
							<span class="icon-box"><i class="icon icon-tag"></i></span>
							隶属管理目录
						</div>
						<div class="division"></div>
						<div class="col-md-12 item">
							<label class="item-son-hd">类型名：</label>
							<div class="item-son-bd">设备类-上海公司电脑管理</div>
						</div>
						<div class="col-md-12 item">
							<label class="item-son-hd">检查人：</label>
							<div class="item-son-bd">熊攀峰</div>
						</div>
						<div class="col-md-12 item">
							<label class="item-son-hd">初审人：</label>
							<div class="item-son-bd">熊攀峰</div>
						</div>
						<div class="col-md-12 item">
							<label class="item-son-hd">终审人：</label>
							<div class="item-son-bd">李格</div>
						</div>
						<div class="col-md-12 item">
							<label class="item-son-hd">待遇提交：</label>
							<div class="item-son-bd">每月8号</div>
						</div>
						<div class="division"></div>
						<div class="col-md-12 item">
							<label class="item-son-hd">延期扣分：</label>
							<div class="item-son-bd"><span class="text-red">-50</span>B分/天</div>
						</div>
						<div class="col-md-12 item">
							<label class="item-son-hd">奖扣任务：</label>
							<div class="item-son-bd">每月12次</div>
						</div>
						<div class="col-md-12 item">
							<label class="item-son-hd">奖扣奖分：</label>
							<div class="item-son-bd">2B分/次</div>
						</div>
						<div class="col-md-12 item">
							<label class="item-son-hd">未完成扣分：</label>
							<div class="item-son-bd"><span class="text-red">-2</span>B分/次</div>
						</div>
						<div class="division"></div>
						<div class="col-md-12 item">
							<label class="item-son-hd">要求：</label>
							<div class="item-son-bd">
								1:每天用半干不湿的毛巾擦去电脑主机及显示器外壳的灰尘，同时清洁键盘及鼠标卫生；2:不得私自擦拭电脑显示屏，如果显示屏脏了，要通知设备部用专用的工具擦拭；3:电脑桌上的文件资料等要摆放整齐，桌面要保持干净；4:电脑桌下面的地面要时时清扫，做到卫生无死角；5:桌上客户未喝完的茶水要及时倒掉，防止不小心碰倒，水泼到键盘上而损坏电脑；6:每天下班时，检查设备的状况，关闭电源；7:出差，休息，事假或病假，要安排好接替人员（可找管理人员安排），不得出现无人管理现象；8:工作变动，请主动办理正常交接。
							</div>
						</div>
						<div class="division"></div>
						<div class="col-md-12 item">
							<label class="item-son-hd">检查考核：</label>
							<div class="item-son-bd">
								<div class="col-sm-4">不符合要求</div>
								<div class="col-sm-8">
									<div class="col-sm-4">B：50</div>
									<div class="col-sm-4">至</div>
									<div class="col-sm-4 text-red">-50</div>
								</div>
								<div class="col-sm-4">检查合格</div>
								<div class="col-sm-8">
									<div class="col-sm-4">B：50</div>
									<div class="col-sm-4">至</div>
									<div class="col-sm-4 text-red">-50</div>
								</div>
								<div class="col-sm-4">表现优秀</div>
								<div class="col-sm-8">
									<div class="col-sm-4">B：50</div>
									<div class="col-sm-4">至</div>
									<div class="col-sm-4 text-red">-50</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal addCatalogModal">
		<div class="modal-dialog" role="document" style='width:600px; height: 400px'>
			<div class="modal-content">
				<button class="modal-close"><span class="modal-close-x"></span></button>
				<div class="modal-header">
					<div class="modal-title">新增目录</div>
				</div>
				<div class="modal-body">
					<form >
						<div class="row">
							<div class="col-sm-5">
								<label class="form-label"><span class="text-red">*</span> 目录分类：</label>
								<div class="dropdown" data-value="0">
								  <button class="btn btn-default dropdown-toggle" type="button">
								   	<label>设备类</label>
									<i class="icon icon-down"></i>
								  </button>
								  <ul class="dropdown-menu">
									  <li data-value="0">日常事务类</li>
									  <li data-value="1">设备类</li>
									  <li data-value="2">耗材类</li>
									  <li data-value="3">财产类</li>
									  <li data-value="4">卫生类</li>
									  <li data-value="4">其他类</li>
									  <li data-value="4">回收站</li>
								  </ul>
								</div>
							</div>
							<div class="col-sm-7">
								<label class="form-label"><span class="text-red">*</span> 目录名：</label>
								<input type="text" class="form-control" />
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<label class="form-label"><span class="text-red">*</span> 要求：</label>
								<textarea rows="7" cols="" class="form-control"></textarea>
							</div>
						</div>
						<div class="row">
							<label class="col-sm-12 form-label"><span class="text-red">*</span> 日常检查奖扣标准：</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" />
							</div>
							<div class="col-sm-1">
								<i class="icon icon-closesquareo"></i>
							</div>
							<div class="col-sm-7">
								<label>B分：</label>
								
							</div>
							<div class="col-sm-12">
								<i class="icon icon-plussquareo"></i>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-4">
								<label class="form-label">检查人：<i class="icon icon-infocirlceo text-primary"></i></label>
								<div class="dropdown" data-value="0">
								  <button class="btn btn-default dropdown-toggle" type="button">
								   	<label>熊攀峰</label>
									<i class="icon icon-down"></i>
								  </button>
								  <ul class="dropdown-menu">
									  <li data-value="0">陈岳麟</li>
									  <li data-value="1">熊攀峰</li>
									  <li data-value="2">余南山</li>
									  <li data-value="3">刘丽娜</li>
								  </ul>
								</div>
							</div>
							<div class="col-sm-4">
								<label class="form-label">初审人：<i class="icon icon-infocirlceo text-primary"></i></label>
								<div class="dropdown" data-value="0">
								  <button class="btn btn-default dropdown-toggle" type="button">
								   	<label>熊攀峰</label>
									<i class="icon icon-down"></i>
								  </button>
								  <ul class="dropdown-menu">
									  <li data-value="0">陈岳麟</li>
									  <li data-value="1">熊攀峰</li>
									  <li data-value="2">余南山</li>
									  <li data-value="3">刘丽娜</li>
								  </ul>
								</div>
							</div>
							<div class="col-sm-4">
								<label class="form-label">终审人：<i class="icon icon-infocirlceo text-primary"></i></label>
								<div class="dropdown" data-value="0">
								  <button class="btn btn-default dropdown-toggle" type="button">
								   	<label>李格</label>
									<i class="icon icon-down"></i>
								  </button>
								  <ul class="dropdown-menu">
									  <li data-value="0">李格</li>
								  </ul>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-sm-6">
								<label class="form-label">待遇提交时间：
									<span class="pull-right">
										<label class=""><input type="radio" name="date" /> 月</label>
										<label class=""><input type="radio" name="date" /> 年</label>
									</span>
								</label>
								<input type="date" class="form-control" />
							</div>
							<div class="col-sm-6">
								<label class="form-label">待遇延期扣分：
									<div class="checkbox">
									    <label>
									      <input type="checkbox"> 
										  <i></i>翻倍
									    </label>
									 </div>
								</label>
								<div class="points">
									<input type="text" class="form-control" />
									<span class="tip">每天</span>
									<span class="company">B分</span>
								</div>
								<div class="item">
									<div class="item-cell">
										<div class="points">
											<input type="text" class="form-control" />
											<span class="tip">每天</span>
											<span class="company">B分</span>
										</div>
									</div>
									<div class="item-cell">
										<div class="points">
											<input type="text" class="form-control" />
											<span class="tip">封顶</span>
											<span class="company">B分</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-4">
								<label class="form-label">检查任务：</label>
								<div class="points">
									<input type="text" class="form-control text-center" />
									<span class="tip">每月</span>
									<span class="company">次</span>
								</div>
							</div>
							<div class="col-sm-4">
								<label class="form-label">检查奖分：</label>
								<div class="award-points">
									<input type="text" class="form-control" />
									<span class="tip">项目</span>
									<span class="company">B分/次</span>
								</div>
							</div>
							<div class="col-sm-4">
								<label class="form-label">未完成扣分：</label>
								<div class="award-points">
									<input type="text" class="form-control" />
									<span class="tip">项目</span>
									<span class="company">B分/次</span>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer text-center">
					<button type="button" class="btn btn-default modal-close">取消</button>
        			<button type="button" class="btn btn-primary">确定</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>