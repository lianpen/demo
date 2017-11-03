<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Expires" content="0">
<meta http-equiv="kiben" content="no-cache">
<title>添加项目</title>
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
	href="<spring:url value='/resources/css/pc/management/maintenance.css'/>" />

<script src="../../resources/lib/jquery-3.2.1.js"></script>
<script src="../../resources/lib/underscore.js"></script>
<script src="../../resources/lib/bootstrap-3.3.7/js/bootstrap.js"></script>
<script src="<spring:url value='/resources/js/pc/common.js'/>"></script>
<script src="<spring:url value='/resources/js/pc/plugin.js'/>"></script>
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
				<div class='qy-edit'>
					<div class='qy-edit-title'>
						<div class='wrapper'>新增项目</div>
					</div>
					<div class='qy-edit-category'>
						<div class='wrapper'>
							<h5>综合管理目录</h5>
							<div class='choose'>
								<button class="btn btn-default dropdown-toggle" type="button">
									<label>武汉电脑管理</label> <i class="icon icon-down"></i>
								</button>
								<div class='choices'>
									<ul class='left'>
										<li>日常事务类</li>
										<li>设备类</li>
										<li>耗材类</li>
										<li>财产类</li>
										<li>卫生类</li>
										<li>其他</li>
									</ul>
									<div class='right'>
										<div class='bar'>
											<div class='search'>
												<input type="text" class="form-control" placeholder="输入项目">
												<i class="icon icon-search"></i>
											</div>
										</div>
										<ul>
											<li>搜集员工建议、信息</li>
											<li>员工胸牌管理</li>
											<li>员工通讯录管理</li>
											<li>早会音乐及大厅音乐播放及管理</li>
											<li>公司大堂报纸，报夹和杂志管理</li>
											<li>员工工作服管理</li>
											<li>采购管理</li>
											<li>其他日常事务管理</li>
											<li>搜集员工建议、信息</li>
											<li>员工胸牌管理</li>
											<li>员工通讯录管理</li>
											<li>早会音乐及大厅音乐播放及管理</li>
											<li>公司大堂报纸，报夹和杂志管理</li>
											<li>员工工作服管理</li>
											<li>采购管理</li>
											<li>其他日常事务管理</li>
										</ul>
									</div>
								</div>
							</div>
							<script>
								$('.qy-edit-category .choose button').on('click', function() {
									$(this).parent().toggleClass('on');
								});
							</script>
							<div class='info'>
								<p>检查人：熊攀峰</p>
								<p>检查时间：每月8日</p>
								<a><i class='icon icon-infocircleo'></i>详情</a>
								<div class='detail'>
									<div class='topLine'>
										<div>
											<label>检查人：</label> <span>熊攀峰</span>
										</div>
										<div>
											<label>检查时间：</label> <span>每月8日</span>
										</div>
										<div></div>
										<div>
											<label>待遇提交：</label> <span>每月8日</span>
										</div>
										<div>
											<label>延期扣分：</label> <span>-50分/次</span>
										</div>
										<div></div>
										<div>
											<label>检查任务：</label> <span>每月12次</span>
										</div>
										<div>
											<label>检查奖分：</label> <span>2分/次</span>
										</div>
										<div>
											<label>未完成扣分：</label> <span>2分/次</span>
										</div>
									</div>
									<div class='centerLine'>
										<label>要求：</label>
										<p>
											1.每天用半干不湿的毛巾擦去电脑主机机显示器外壳的灰尘，同时清洁键盘及鼠标卫生；2.不得私自擦拭电脑显示屏，如果显示屏脏了，要通知设备部用专用的工具擦拭；3.电脑桌上的文件资料等要摆放整齐，桌面要保持干净；4.电脑桌下面的地面要时时清扫，做到卫生无死角；5.桌上客户未喝完的茶水要及时倒掉，防止不小心碰到，水泼到键盘上而损坏电脑；6.每天下班时，检查设备的状况，关闭电源；7.出差，休息，事假或病假，要安排好接替人员（可找管理人员安排），不得出现无人管理现象；8.工作变动，请主动办理正常交接。
										</p>
									</div>
									<div class='bottomLine'>
										<label>检查考核：</label>
										<div class='pojo'>
											<p>
												<span class='des'> 不符合要求 </span> <span class='n0'>
													B：10 </span> <span class='zhi'> 至 </span> <span class='n1'>
													B：20 </span>
											</p>
											<p>
												<span class='des'> 检查合格 </span> <span class='n0'>
													B：10 </span> <span class='zhi'> 至 </span> <span class='n1'>
													B：20 </span>
											</p>
											<p>
												<span class='des'> 表现优秀 </span> <span class='n0'>
													B：10 </span> <span class='zhi'> 至 </span> <span class='n1'>
													B：20 </span>
											</p>
										</div>
									</div>
								</div>
							</div>
							<script>
								$('.info > a').on('click', function() {
									$(this).parent().toggleClass('on');
								});
							</script>
						</div>
					</div>
					<div class='qy-edit-projects'>
						<h3>项目</h3>
						<div class='qy-edit-project'>
							<div class='wrapper'>
								<div class='action'>
									<i class='icon icon-copy'></i> <i class='icon icon-delete'></i>
								</div>
								<div class='form-group'>
									<label>1.项目名称：</label> <input type="text" class="form-control">
								</div>
								<div class='row'>
									<div class='col-xs-6'>
										<div class='form-group'>
											<label>部门：</label> <input type="text" class="form-control">
										</div>
									</div>
									<div class='col-xs-6'>
										<div class='form-group'>
											<label>设备编号：</label> <input type="text" class="form-control">
										</div>
									</div>
								</div>
								<div class='form-group'>
									<label>补充说明：</label>
									<textarea class="form-control" rows="4"></textarea>
								</div>
								<div class='qy-edit-persons'>
									<div class='line'>
										<div class='person'>
											<label>主负责人：</label>
											<button class='btn'>
												<label>刘丽娜</label>
											</button>
										</div>
										<div class='score'>
											<label>A分：</label>
											<div class='combobox'>
												<div class='plus'>
													<i class='icon icon-plus'></i>
												</div>
												<input type='text' class='form-control'>
											</div>
										</div>
										<div class='score'>
											<label>B分：</label>
											<div class='combobox'>
												<div class='plus'>
													<i class='icon icon-plus'></i>
												</div>
												<input type='text' class='form-control'>
											</div>
										</div>
										<div class='score score-ex'>
											<label>产值：</label>
											<div class='combobox'>
												<div class='plus'>
													<span>虚</span>
												</div>
												<input type='text' class='form-control'>
											</div>
										</div>
									</div>
									<div class='line'>
										<div class='person'>
											<label>次负责人：</label>
											<button class='btn'>
												<label>刘丽娜</label>
											</button>
										</div>
										<div class='score'>
											<label>A分：</label>
											<div class='combobox'>
												<div class='plus'>
													<i class='icon icon-plus'></i>
												</div>
												<input type='text' class='form-control'>
											</div>
										</div>
										<div class='score'>
											<label>B分：</label>
											<div class='combobox'>
												<div class='plus'>
													<i class='icon icon-plus'></i>
												</div>
												<input type='text' class='form-control'>
											</div>
										</div>
										<div class='score score-ex'>
											<label>产值：</label>
											<div class='combobox'>
												<div class='plus'>
													<span>虚</span>
												</div>
												<input type='text' class='form-control'>
											</div>
										</div>
									</div>
									<div class='line'>
										<div class='person'>
											<label>连带负责人：</label>
											<button class='btn'>
												<label>刘丽娜</label>
											</button>
										</div>
										<div class='score'>
											<label>A分：</label>
											<div class='combobox'>
												<div class='plus'>
													<i class='icon icon-plus'></i>
												</div>
												<input type='text' class='form-control'>
											</div>
										</div>
										<div class='score'>
											<label>B分：</label>
											<div class='combobox'>
												<div class='plus'>
													<i class='icon icon-plus'></i>
												</div>
												<input type='text' class='form-control'>
											</div>
										</div>
										<div class='score score-ex'>
											<label>产值：</label>
											<div class='combobox'>
												<div class='plus'>
													<span>虚</span>
												</div>
												<input type='text' class='form-control'>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<script>
						$('.qy-edit-projects').on('click', '.score.score-ex .plus', function() {
							var values = ['虚', '创', '实'];
							var $span = $(this).children().eq(0);
							var text = $span.html();
							var index = values.indexOf(text);
							index += 1;
							if (index >= 3) index = 0;
							$span.html(values[index]);
						})
					</script>
					<div class='qy-edit-addProject'>
						<div class='wrapper'>
							<button class='btn'>添加项目</button>
						</div>
					</div>
					<div class='qy-edit-submit'>
						<div class='wrapper'>
							<button class='btn'>返回</button>
							<button class='btn btn-primary'>提交</button>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>
	<script>
		(function projectsScript() {
			var projectList = [];

			var $firstDom = $('.qy-edit-project').eq(0);

			var $parent = $('.qy-edit-projects').eq(0);

			var Project = function($dom, param) {
				this.param = param || {};
				this.$dom = $dom;
				if (this.param.isFirstProject !== true) {
					$parent.append(this.$dom);
				}
				this.addEvents();
				projectList.push(this);
			}

			/**
			 * 注册事件
			 */
			Project.prototype.addEvents = function() {
				this.$dom.find('.action .icon-copy').on('click',
						this.clone.bind(this));
				this.$dom.find('.action .icon-delete').on('click',
						this.destroy.bind(this));
			}

			/**
			 * 拷贝一个项目到新项目
			 */
			Project.prototype.clone = function() {
				var $newDom = this.$dom.clone();
				var newProject = new Project($newDom);
				document.documentElement.scrollTop = document.body.clientHeight;
			}

			/**
			 * 删除这个项目
			 */
			Project.prototype.destroy = function() {
				var index = projectList.indexOf(this);
				projectList.splice(index, 1);
				this.$dom.remove();
			}

			/**
			 * 清空输入框的内容
			 */
			Project.prototype.clearInput = function() {
				this.$dom.find('input').val('');
				this.$dom.find('textarea').val('');
			}

			var firstProject = new Project($firstDom, {
				firstProject : true
			});

			/**
			 * 新增一个空的项目
			 */
			$('.qy-edit-addProject button').on('click', function() {
				var $newDom = $firstDom.clone();
				var newProject = new Project($newDom);
				newProject.clearInput();
			});

		})();
	</script>
</body>
</html>

