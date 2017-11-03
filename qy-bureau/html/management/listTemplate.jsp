<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Expires" content="0">
	<meta http-equiv="kiben" content="no-cache">
	<title>列表</title>
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
			<div class="frame-aside">
				<%@include file="../common/navigation.jsp" %>
			</div>
			<div class="frame-main qy">
				<div class="qy-aside">
					<div class="qy-aside-tool">
						<div class='search'>
							<input type="text" class="form-control" placeholder="输入目录/检查人">
							<i class="icon icon-search"></i>
						</div>
						<a>
							<i class="icon icon-plus"></i>
						</a>
					</div>
					<div class="qy-aside-menu">
						<h3>综合管理目录</h3>
						<ul>
							<li>
								<div class="catalog">
									<i class="icon icon-down"></i>
									<a href="javascript:;">日常事务类(3)</a>
									<i class="icon icon-plus add-catalog"></i>
								</div>
								<ul class="menu-group">
									<li>
										<label>月</label>
										<a href="javascript:;">收集员工建议、信息(熊攀峰)</a>
										<span class="handle">
											<span class="edit">编辑</span>
											<span class="divide">|</span>
											<span class="cancel">删除</span>
										</span>
									</li>
									<li><label>年</label><a href="javascript:;">员工通讯录管理(陈岳麟)</a>
										<span class="handle">
											<span class="edit">编辑</span>
											<span class="divide">|</span>
											<span class="cancel">删除</span>
										</span>
									</li>
									<li><label>年</label><a href="javascript:;">公司大堂报纸、报夹和杂志管理(余南山)</a>
										<span class="handle">
											<span class="edit">编辑</span>
											<span class="divide">|</span>
											<span class="cancel">删除</span>
										</span>
									</li>
								</ul>
							</li>
							<li class='on'>
								<div class="catalog">
									<i class="icon icon-down"></i>
									<a href="javascript:;">设备类(2)</a>
									<i class="icon icon-plus add-catalog"></i>
								</div>
								<ul class="menu-group">
									<li><label>月</label><a href="javascript:;">电脑管理(刘丽娜)</a>
										<span class="handle">
											<span class="edit">编辑</span>
											<span class="divide">|</span>
											<span class="cancel">删除</span>
										</span>
									</li>
									<li><label>年</label><a href="javascript:;">公司复印机管理(惠连鹏)</a>
										<span class="handle">
											<span class="edit">编辑</span>
											<span class="divide">|</span>
											<span class="cancel">删除</span>
										</span>
									</li>
								</ul>
							</li>
							<li>
								<div class="catalog">
									<i class="icon icon-down"></i>
									<a href="javascript:;">耗材类(2)</a>
									<i class="icon icon-plus add-catalog"></i>
								</div>
								<ul class="menu-group">
									<li><label>月</label><a href="javascript:;">喷绘墨水、喷绘布的管理(缪剑雪)</a>
										<span class="handle">
											<span class="edit">编辑</span>
											<span class="divide">|</span>
											<span class="cancel">删除</span>
										</span>
									</li>
									<li><label>月</label><a href="javascript:;">光盘库存管理(何子嘉)</a>
										<span class="handle">
											<span class="edit">编辑</span>
											<span class="divide">|</span>
											<span class="cancel">删除</span>
										</span>
									</li>
								</ul>
							</li>
							<li>
								<div class="catalog">
									<i class="icon icon-down"></i>
									<a href="javascript:;">财产类(2)</a>
									<i class="icon icon-plus add-catalog"></i>
								</div>
								<ul class="menu-group">
									<li><label>月</label><a href="javascript:;">食堂餐具、炊具等管理(何勇)</a>
										<span class="handle">
											<span class="edit">编辑</span>
											<span class="divide">|</span>
											<span class="cancel">删除</span>
										</span>
									</li>
									<li><label>月</label><a href="javascript:;">锣鼓队乐器、服装管理(胡涵)</a>
										<span class="handle">
											<span class="edit">编辑</span>
											<span class="divide">|</span>
											<span class="cancel">删除</span>
										</span>
									</li>
								</ul>
							</li>
							<li>
								<div class="catalog">
									<i class="icon icon-down"></i>
									<a href="javascript:;">卫生类(2)</a>
									<i class="icon icon-plus add-catalog"></i>
								</div>
								<ul class="menu-group">
									<li><label>月</label><a href="javascript:;">橱窗玻璃卫生(惠连鹏)</a>
										<span class="handle">
											<span class="edit">编辑</span>
											<span class="divide">|</span>
											<span class="cancel">删除</span>
										</span>
									</li>
									<li><label>月</label><a href="javascript:;">电脑及电脑桌周边卫生管理(熊攀峰)</a>
										<span class="handle">
											<span class="edit">编辑</span>
											<span class="divide">|</span>
											<span class="cancel">删除</span>
										</span>
									</li>
								</ul>
							</li>
							<li>
								<div class="catalog">
									<i class="icon icon-down"></i>
									<a href="javascript:;">其他类(2)</a>
									<i class="icon icon-plus add-catalog"></i>
								</div>
								<ul class="menu-group">
									<li><label>月</label><a href="javascript:;">公司晨会音响(熊攀峰)</a>
										<span class="handle">
											<span class="edit">编辑</span>
											<span class="divide">|</span>
											<span class="cancel">删除</span>
										</span>
									</li>
									<li><label>月</label><a href="javascript:;">扶老奶奶过马路(熊攀峰)</a>
										<span class="handle">
											<span class="edit">编辑</span>
											<span class="divide">|</span>
											<span class="cancel">删除</span>
										</span>
									</li>
								</ul>
							</li>
							<li>
								<div class="catalog">
									<i class="icon icon-down"></i>
									<a href="javascript:;">回收站(2)</a>
									<i class="icon icon-plus add-catalog"></i>
								</div>
								<ul class="menu-group">
									<li><label>月</label><a href="javascript:;">废品的管理与销售(熊攀峰)</a>
										<span class="handle">
											<span class="edit">编辑</span>
											<span class="divide">|</span>
											<span class="cancel">删除</span>
										</span>
									</li>
									<li><label>月</label><a href="javascript:;">冲扩机耗材管理(熊攀峰)</a>
										<span class="handle">
											<span class="edit">编辑</span>
											<span class="divide">|</span>
											<span class="cancel">删除</span>
										</span>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				
				<div class="qy-list"> 
					<div class='qy-list-top-info'>
						<div class='left left-info'>
							<div class="left-info-title">
								<span class="subject-name">电脑管理</span>
								<i class="icon icon-edit"></i>
							</div>
							<div class="left-info-check">
								( 检查人：刘丽娜<span>日常奖扣任务：每月12次</span> )
							</div>
						</div>
						<div class='right'>
							<i class="icomoon-project2"></i>
							<span>项目数：200</span>
							<span>已签名：<label class="text-green">110</label></span>
							<span>待签名：<label class="text-red">40</label></span>
							<span>未绑定：<label class="text-orange">50</label></span>
						</div>
					</div>
					<div class="qy-list-action">
						<div class="btns">
							<button type="button" class="btn btn-primary">添加项目</button>
							<button type="button" class="btn">批量导入</button>
							<button type="button" class="btn btn-disabled" disabled="disabled">编辑项目</button>
							<button type="button" class="btn btn-disabled" disabled="disabled">删除项目</button>
						</div>
						<div class="filter">
							<div class="dropdown" data-value='0'>
							  <button class="btn btn-default dropdown-toggle" type="button">
							   	<label>检查人筛选</label>
								<i class="icon icon-down"></i>
							  </button>
							  <ul class="dropdown-menu">
								  <li data-value='0'>全部</li>
								  <li data-value='1'>熊攀峰</li>
								  <li data-value='2'>陈岳麟</li>
								  <li data-value='3'>余南山</li>
								  <li data-value='4'>刘丽娜</li>
							  </ul>
							</div>	
							<div class="dropdown" data-value='0'>
							  <button class="btn btn-default dropdown-toggle" type="button">
							    <label>负责人筛选</label>
								<i class="icon icon-down"></i>
							  </button>
							  <ul class="dropdown-menu">
								  <li data-value='0'>全部</li>
								  <li data-value='1'>熊攀峰</li>
								  <li data-value='2'>陈岳麟</li>
								  <li data-value='3'>余南山</li>
								  <li data-value='4'>刘丽娜</li>
							  </ul>
							</div>	
							<div class='search'>
								<input type="text" class="form-control" placeholder="输入项目">
								<i class="icon icon-search"></i>
							</div>
						</div>
					</div>
					<div class='qy-list-table'>
						<h3>全部数据100条，已选<span>0</span>条</h3>
						<table class="table"></table>
					</div>
					
					<div class="qy-list-pagination">
						<ul class="pagination"></ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		(function pageScript () {
			var columns = [{
				title: '管理目录',
				content: 'key1'
			}, {
				title: '管理项目',
				content: 'key2'
			}, {
				title: '补充说明',
				content: 'key3'
			}, {
				title: '负责人',
				content: 'key4'
			}, {
				title: '检查人',
				content: 'key5'
			}, {
				title: '绑定时间',
				content: 'key6'
			}, {
				title: '签名',
				content: 'key7'
			}];
			var d0 = {
			      key1: '日常事务类/员工建议、信息收集',
			      key2: '荆门公司收集录入',
			      key3: '--',
			      key4: '丽娜',
			      key5: '熊攀峰',
			      key6: '2017-10-27 17:08',
			      key7: '待签名'
			}
			var data = [d0, _.deepClone(d0), _.deepClone(d0), _.deepClone(d0), _.deepClone(d0), 
			            _.deepClone(d0), _.deepClone(d0), _.deepClone(d0), _.deepClone(d0),
			            _.deepClone(d0), _.deepClone(d0), _.deepClone(d0), _.deepClone(d0)];
			$('.table').table({
				columns: columns,
				data: getTableData(1),
				onCheck: function(data) {
					console.log(data);
				},
				onRowClick: function(data) {
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
				total: 750,
				onChange: function(current) {
					$('.table').table({
						action: 'updateData',
						data: getTableData(current)
					});
				}
			});
			$('.qy-aside-menu > ul').on('click', 'li div', function() {
				$(this).parent().toggleClass('on');
			});
			
			//列表点击编辑图标编辑目录名
			$('.qy-list-top-info').on('click','.icon-edit',function(){
				var $this = $(this);
				$this.siblings().prop('contenteditable',true);
			});
		})();
	</script>
</body>
</html>