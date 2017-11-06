
/**
 * 日期选择
 */
(function defineDatePicker() {
	var DatePicker = function(dom, param) {
		this.$dom = $(dom);
		this.param = param;
		if (this.param.range !== 'month' && this.param.range !== 'year') {
			console.error('时间选择组件必须传range参数，值是month和year中的一个。');
			return;
		}
		this.state = {
			month: 0
		};
		this.parseValue();
		this.$picker = this.createPicker();
		this.renderHeader();
		this.renderTable();
		this.renderInput();
		this.addEvents();
	}
	
	/**
	 * uuid
	 */
	DatePicker.uuid = 0;
	
	/**
	 * 常量
	 */
	DatePicker.constant = {
		monthText: ['一月', '二月', '三月', '四月', '五月', '六月',
		            '七月', '八月', '九月', '十月', '十一月', '十二月'],	
        dayNumber:[31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
	};
	
	/**
	 * 模板
	 */
	DatePicker.template = {};
	DatePicker.template.container = 
		'<div class="calendar-picker">' +
			'<div class="calendar-panel">' +
				'<div class="calendar-input-wrap">' +
					'<div class="calendar-date-input-wrap">' +
						'<input class="calendar-input" placeholder="请选择日期" readonly="readonly">' +
					'</div>' +
				'</div>' +
				'<div class="calendar-date-panel">' +
					'<div class="calendar-body">' +
						'<table class="calendar-table" cellspacing="0">' +
							'<tbody>' +
							'</tbody>' +
						'</table>' +
					'</div>' +
				'</div>' +
			'</div>' +
		'</div>';
	DatePicker.template.header = 
		'<div class="calendar-header">' +
			'<a class="calendar-prev-month-btn"></a>' +
			'<span class="calendar-my-select">' +
			'	<a class="calendar-month-select">一月</a>' +
			'</span>' +
		'	<a class="calendar-next-month-btn"></a>' +
		'</div>';
	DatePicker.template.td = '<td class="calendar-cell {{selected}}"><div class="calendar-date">{{value}}</div></td>';
	DatePicker.cmpiled = {
		td: _.template(DatePicker.template.td)
	};
	
	/**
	 * 解析参数
	 * 如果范围是月，传一个数字即可。如果范围是年，要传月和日。
	 */
	DatePicker.prototype.parseValue = function() {
		var value = this.param.value;
		var range = this.param.range;
		if (value === undefined) {
			this.value = {
				month: undefined,
				day: undefined
			}
		} else if (range === 'year') {
			var ary = value.split(',');
			if (ary.length == 2) {
				this.value = {
					month: parseInt(ary[0]),
					day: parseInt(ary[1])
				}
			} else {
				this.value = {
					month: undefined,
					day: undefined
				}
			}
		} else if (range === 'month') {
			this.value = {
				day: parseInt(value)
			}
		}
		this.state.month = this.value.month || 0;
	}
	
	/**
	 *  创建选框dom
	 */
	DatePicker.prototype.createPicker = function() {
		var $picker = $(document.createElement('div'));
		$picker.addClass('calendar-picker-container calendar-picker-container-' + this.param.uuid);
		$picker.css({
			left: this.$dom.offset().left,
			top: this.$dom.offset().top
		});
		$picker.html(DatePicker.template.container);
		if (this.param.range === 'year') {
			$picker.find('.calendar-date-panel').prepend(DatePicker.template.header);
		}
		$(document.body).append($picker);
		return $picker;
	}
	
	/**
	 * 添加事件
	 */
	DatePicker.prototype.addEvents = function() {
		var context = this;
		this.$dom.on('click', this.open.bind(this));
		this.$picker.on('click', this.onPickerClick.bind(this));
	}
	
	/**
	 * 弹框点击全部委托在这个事件上
	 */
	DatePicker.prototype.onPickerClick = function(event) {
		event.stopPropagation();
		var $target = $(event.target);
		if ($target.hasClass('calendar-prev-month-btn')) {
			this.onPrevMonth.call(this);
		} else if ($target.hasClass('calendar-next-month-btn')) {
			this.onNextMonth.call(this);
		} else if ($target.hasClass('calendar-date')) {
			this.$picker.find('td').removeClass('calendar-selected-day');
			$target.parent().addClass('calendar-selected-day');
			var value = parseInt($target.html()) - 1;
			this.onValueClick.call(this, value);
		}
	}
	
	/**
	 * 日期点击事件
	 */
	DatePicker.prototype.onValueClick = function(value) {
		this.value.day = value;
		this.value.month = this.state.month;
		this.renderInput();
		var exportValue = '';
		if (this.param.range === 'year') {
			exportValue = this.value.month + ',' + this.value.day;
		} else if (this.param.range === 'month') {
			exportValue = this.value.day;
		}
		this.$dom.data('value', exportValue);
		if (this.param.onChange && _.isFunction(this.param.onChange)) {
			this.param.onChange(exportValue);
		}
		this.close();
	}
	
	/**
	 * 上一月事件
	 */
	DatePicker.prototype.onPrevMonth = function() {
		this.state.month -= 1;
		if (this.state.month <= -1) this.state.month = 11;
		this.renderHeader();
		this.renderTable();
	}
	
	/**
	 * 下一月事件
	 */
	DatePicker.prototype.onNextMonth = function() {
		this.state.month += 1;
		if (this.state.month >= 12) this.state.month = 0;
		this.renderHeader();
		this.renderTable();
	}
	
	/**
	 * 打开事件
	 */
	DatePicker.prototype.open = function(event) {
		event.stopPropagation();
		this.$picker.css({
			left: this.$dom.offset().left,
			top: this.$dom.offset().top
		});
		this.$picker.show();
		this.$picker.addClass('slide-up-enter slide-up-enter-active');
		var context = this;
		setTimeout(function() {
			context.$picker.removeClass('slide-up-enter slide-up-enter-active');
		}, 200);
		$(document).one('click', this.close.bind(this));
	}
	
	/**
	 * 关闭事件
	 */
	DatePicker.prototype.close = function(event) {
		this.$picker.addClass('slide-up-leave slide-up-leave-active');
		var context = this;
		setTimeout(function() {
			context.$picker.removeClass('slide-up-leave slide-up-leave-active');
			context.$picker.hide();
		}, 200);
	}
	
	/**
	 * 渲染表格
	 */
	DatePicker.prototype.renderTable = function() {
		var html = '';
		var dayNumber = this.getDayNumber();
		var weekNumber = Math.ceil((dayNumber - 1) / 7);
		var context = this;
		for (var week = 0; week < weekNumber; week += 1) {
			var days = [];
			for (var day = week * 7; day < Math.min((week + 1) * 7, dayNumber); day += 1) {
				days.push(day);
			}
			var daysHtml = days.map(function(day) {
				return DatePicker.cmpiled.td({
					value: day + 1,
					selected: (isSelected.call(context, day) ? 'calendar-selected-day' : '')
				})
			});
			var weekHtml = '<tr>' + daysHtml + '</tr>';
			html += weekHtml;
		}
		this.$picker.find('tbody').html(html);
		/**
		 * td是否选中
		 * 如果范围是年首先要判断月份是否一致
		 * 然后判断日期
		 */
		function isSelected(day) {
			if (this.param.range === 'year') {
				if ((this.value.month === undefined) || this.state.month !== this.value.month) {
					return false;
				}
			} 
			return (this.value.day !== undefined) && this.value.day === day;
		}
	}
	
	/**
	 * 渲染输入框
	 */
	DatePicker.prototype.renderInput = function() {
		var exportText = '';
		if (this.value.day !== undefined) {
			if (this.param.range === 'year') {
				exportText = '每年' + (this.value.month + 1) + '月' + (this.value.day + 1) + '日';
			} else if (this.param.range === 'month') {
				exportText = '每月' + (this.value.day + 1) + '日';
			}
		}
		this.$dom.find('.calendar-picker-input').val(exportText);
		this.$picker.find('.calendar-input').val(exportText);
	}
	
	/**
	 * 渲染选月栏
	 */
	DatePicker.prototype.renderHeader = function() {
		if (this.param.range !== 'year') return;
		var month = this.state.month;
		this.$picker.find(".calendar-month-select").html(DatePicker.constant.monthText[month]);
	}
	
	/**
	 * 获取表格渲染几天
	 */
	DatePicker.prototype.getDayNumber = function() {
		if (this.param.range === 'month') return 31;
		var month = this.state.month;
		return DatePicker.constant.dayNumber[month];
	}
	
	$.fn.datePicker = function(param) {
		param = param || {};
		this.each(function() {
			var inst = this.datePickerInst;
			if (!inst) {
				DatePicker.uuid += 1;
				param.uuid = DatePicker.uuid;
				inst = this.datePickerInst = new DatePicker(this, param);
			}
		});
	}
})();

/**
 * 模态框
 */
(function defineModal() {
	
	var Modal = function(dom) {
		this.$dom = $(dom);
		this.state = {
			open: false
		};
		this.onCloseHandler = this.close.bind(this);
	}
	
	Modal.prototype.open = function() {
		var context = this;
		this.state.open = true;
		showDom.call(this);
		showMask.call(this);
		this.addEvents();
		updateBodyHeight.call(this);
		function showDom() {
			this.$dom.show();
			this.$dom.addClass('zoom-enter zoom-enter-active');
			setTimeout(function() {
				context.$dom.removeClass('zoom-enter zoom-enter-active');
			}, 200);
		}
		function showMask() {
			if (!this.$mask) {
				this.$mask = this.getMask();
			}
			this.$mask.show();
			this.$mask.addClass('fade-enter fade-enter-active');
			setTimeout(function() {
				context.$mask.removeClass('fade-enter fade-enter-active');
			}, 200);
		}
		function updateBodyHeight() {
			var $doms = {
				dialog: this.$dom.find('.modal-dialog'),
				header: this.$dom.find('.modal-header'),
				body: this.$dom.find('.modal-body'),
				footer: this.$dom.find('.modal-footer')
			};
			$doms.body.height($doms.dialog.height() - $doms.header.height() - $doms.footer.height());
		}
	}
	
	Modal.prototype.close = function() {
		var context = this;
		this.state.open = false;
		hideDom.call(this);
		hideMask.call(this);
		this.removeEvents();
		function hideDom() {
			this.$dom.addClass('zoom-leave zoom-leave-active');
			setTimeout(function() {
				context.$dom.removeClass('zoom-leave zoom-leave-active');
				context.$dom.hide();
			}, 200);
		}
		function hideMask() {
			this.$mask.addClass('fade-leave fade-leave-active');
			setTimeout(function() {
				context.$mask.removeClass('fade-leave fade-leave-active');
				context.$mask.hide();
			}, 200);
		}
	}
	
	Modal.prototype.addEvents = function() {
		this.$mask.on('click', this.onCloseHandler);
		this.$dom.find('.modal-close').on('click', this.onCloseHandler);
	}
	
	Modal.prototype.removeEvents = function() {
		this.$mask.off('click', this.onCloseHandler);
		this.$dom.find('.modal-close').off('click', this.onCloseHandler);
	}
	
	Modal.prototype.toggle = function() {
		this.state.open = !this.state.open;
		this[this.state.open ? 'open' : 'close']();
	}
	
	Modal.prototype.getMask = function() {
		var $modalMask = $('.modalMask');
		if (!$modalMask.length) {
			$modalMask = $(document.createElement('div'));
			$modalMask.addClass('modalMask');
			$(document.body).append($modalMask);
		}
		return $modalMask;
	}
	
	$.fn.modal = function(action) {
		this.each(function() {
			var inst = this.modalInst;
			if (!inst) {
				inst = this.modalInst = new Modal(this);
			}
			if (!!action && inst[action]) {
				inst[action]();
			}
		});
	}
	
})();


/**
 * 表格
 * lianpen
 */
(function defineTable() {
	var Table = function(dom, param) {
		this.$dom = $(dom);
		this.param = Object.assign({}, Table.defaultOption, param);
		this.init();
	}
	
	Table.defaultOption = {
		data: [],
		checkable: true
	}
	
	Table.template = {
		head: '<thead><tr>{{checkbox}}{{list}}</tr></thead>',
		tr: '<tr>{{checkbox}}{{list}}</tr>',
		checkbox: '<div class="checkbox"><label><input type="checkbox"><i></i></label></div>'
	}
	
	Table.cmpiled = {
		head: _.template(Table.template.head),
		tr: _.template(Table.template.tr)
	}
	
	Table.prototype.init = function() {
		this.state = {
			checkedList: []
		};
		this.addEvents();
		this.render();
	}
	
	Table.prototype.render = function() {
		var context = this;
		var html = renderHead() + renderBody();
		this.$dom.html(html);
		function renderHead() {
			var checkbox = '';
			if (context.param.checkable) {
				checkbox = '<th>' + Table.template.checkbox + '</th>';
			}
			var list = context.param.columns.map(function(column) {
				return '<th>' + column.title + '</th>';
			});
			return Table.cmpiled.head({
				checkbox: checkbox,
				list: list
			});
		}
		function renderBody() {
			return '<tbody>' + context.param.data.map(function(el, index) {
				return renderLine(el, index);
			}) + '</tbody>';
		}
		function renderLine(data, index) {
			var checkbox = '';
			if (context.param.checkable) {
				checkbox = '<td>' + Table.template.checkbox + '</td>';
			}
			return '<tr data-index="' + index + '">' + checkbox + context.param.columns.map(function(column) {
				var content = column.content;
				var dummy = _.isFunction(content) ? content(data) : data[content];
				return '<td>' + dummy + '</td>';
			}) + '</tr>';
		}
	}
	
	Table.prototype.updateData = function(data) {
		this.param.data = data || [];
		this.render();
	}
	
	Table.prototype.addEvents = function() {
		var context = this;
		this.$dom.on('click', function(event) {
			var $target = $(event.target);
			var isCheckbox = !!$target.parents('.checkbox').length;
			var $tr = $target.parents('tr');
			if (!$tr.length) return;
			var index = parseInt($tr.data('index'));
			if (isCheckbox) {
				var isCheckAll = !!$target.parents('thead').length;
				event.preventDefault();
				context.onCheck.call(context, index, isCheckAll);
			} else {
				context.onRowClick.call(context, index);
			}
		});
	}
	
	Table.prototype.onCheck = function(index, isCheckAll) {
		var context = this;
		var $checkboxes = context.$dom.find('tbody input[type=checkbox]');
		var $checkboxBoss = context.$dom.find('thead input[type=checkbox]');
		if (isCheckAll) {
			var allChecked = isAllChecked();
			checkAll(!allChecked);
		} else {
			var checked = isChecked(index);
			check(index, !checked);
			$checkboxBoss[0].checked = isAllChecked();
		}
		if (_.isFunction(this.param.onCheck)) {
			var data = Array.prototype.map.call($checkboxes, function(checkbox, index) {
				return !!checkbox.checked ? index : 0;
			}).filter(function(el) {
				return !!el;
			}).map(function(index) {
				return context.param.data[index];
			});			
			this.param.onCheck(data);
		}
		function check(index, value) {
			if (value === undefined) value = true;
			var $checkbox = context.$dom.find('tbody input[type=checkbox]').eq(index);
			if (!$checkbox.length) return false;
			$checkbox[0].checked = value;
		}
		function checkAll(value) {
			if (value === undefined) value = true;
			Array.prototype.forEach.call($checkboxes, function(checkbox) {
				checkbox.checked = value;
			});
			$checkboxBoss[0].checked = value;
		}
		function isChecked(index) {
			var $checkbox = context.$dom.find('tbody input[type=checkbox]').eq(index);
			if (!$checkbox.length) return false;
			return $checkbox[0].checked;
		}
		function isAllChecked() {
			return Array.prototype.every.call($checkboxes, function(checkbox) {
				return !!checkbox.checked;
			});
		}
	}
	
	Table.prototype.onRowClick = function(index) {
		if (index >= this.param.data.length) return;
		var data = this.param.data[index];
		if (_.isFunction(this.param.onRowClick)) {
			this.param.onRowClick(this.param.data[index]);
		}
	}
	
	$.fn.table = function(param) {
		this.each(function() {
			if (param.action == 'updateData') {
				if (!this.tableInst) {
					console.error('表格尚未初始化，请先配置表规则');
				} else {
					this.tableInst.updateData(param.data);
				}
				return;
			}
			if (!this.tableInst) {
				this.tableInst = new Table(this, param);
			}
		});
	}
	
})();

/**
 * 分页栏
 */ 
(function definePagination() {
	var Pagination = function(dom, param) {
		this.$dom = $(dom);
		this.param = Object.assign({}, Pagination.defaultOption, param);
		this.init();
	}
	
	Pagination.defaultOption = {
		pageSize: 15,
		current: 1,
		jumpNumber: 5
	}
	
	Pagination.template = {
		prev: '<li class="previous {{disabled}}"><a><i class="icon icon-left"></i></a></li>',
		next: '<li class="next {{disabled}}"><a><i class="icon icon-right"></i></a></li>',
		pager: '<li class="item {{on}}" data-value={{value}}><a>{{value}}</a></li>',
		jumpPrev: '<li class="jump jump-prev"></li>',
		jumpNext: '<li class="jump jump-next"></li>'
	}
	
	Pagination.cmpiled = {
		prev: _.template(Pagination.template.prev),
		next: _.template(Pagination.template.next),
		pager: _.template(Pagination.template.pager)
	}
	
	Pagination.prototype.init = function(param) {
		this.state = {
			total: parseInt((this.param.total - 1) / this.param.pageSize) + 1,
			current: this.param.current
		};
		this.addEvents();
		this.render();
		
	}
	Pagination.prototype.render = function() {
		/*
		  <ul class="pagination">
		    <li class="previous">
		      <a>
		        <i class="icon icon-left"></i>
		      </a>
		    </li>
		    <li class='item'><a>1</a></li>
		    <li class="jump jump-prev"></li>
		    <li class='item'><a>3</a></li>
		    <li class='item'><a>4</a></li>
		    <li class='item on'><a>5</a></li>
		    <li class='item'><a>6</a></li>
		    <li class='item'><a>7</a></li>
		    <li class="jump jump-next"></li>
		    <li class='item'><a>11</a></li>
		    <li class="next">
		      <a>
		        <i class="icon icon-right"></i>
		      </a>
		    </li>
		  </ul>	
		*/
		var context = this;
		this.renderedPages = [];
		var html = renderPrev() + renderPages() + renderNext();
		this.$dom.html(html);
		function renderPrev() {
			return Pagination.cmpiled.prev({disabled: context.state.current == 1 ? 'disabled' : ''}); 
		}
		function renderNext() {
			return Pagination.cmpiled.next({disabled: context.state.current == context.state.total ? 'disabled' : ''}); 
		}
		function renderPages() {
			var result = '';
			if (context.state.total <= 9) {
				for (var i = 1; i <= context.state.total; i += 1) {
					result += getPage(i);
				}
			} else if (context.state.current <= 4) {
				for (i = 1; i <= Math.max(5, context.state.current + 2); i += 1) {
					result += getPage(i);
				}
				result += Pagination.template.jumpNext;
				result += getPage(context.state.total);
			} else if (context.state.current >= context.state.total - 3) {
				result += getPage(1);
				result += Pagination.template.jumpPrev;
				for (i = Math.min(context.state.current - 2, context.state.total - 4); i <= context.state.total; i += 1) {
					result += getPage(i);
				}
			} else {
				result += getPage(1);
				result += Pagination.template.jumpPrev;
				for (i = context.state.current - 2; i <= context.state.current + 2; i += 1) {
					result += getPage(i);
				}
				result += Pagination.template.jumpNext;
				result += getPage(context.state.total);
			}
			return result;
		}
		function getPage(value) {
			if (value <= 0) return;
			if (value > context.state.total) return;
			if (context.renderedPages.indexOf(value) > -1) return;
			context.renderedPages.push(value);
			return Pagination.cmpiled.pager({
				value: value,
				on: context.state.current == value ? 'on' : ''
			}); 
		}
	}
	
	Pagination.prototype.addEvents = function() {
		var context = this;
		this.$dom.on('click', function(event) {
			var target = event.target;
			if (target.tagName != "LI") {
				target = target.parentNode;
			}
			var $target = $(target);
			if ($target.hasClass('item')) {
				context.onItemClick.call(context, $target.data('value'));
			} else if ($target.hasClass('previous')) {
				context.onPrevClick.call(context);
			} else if ($target.hasClass('next')) {
				context.onNextClick.call(context);
			} else if ($target.hasClass('jump-prev')) {
				context.onJumpPrevClick.call(context);
			} if ($target.hasClass('jump-next')) {
				context.onJumpNextClick.call(context);
			}
		});
	}
	
	Pagination.prototype.onItemClick = function(value) {
		this.state.current = value;
		this.triggerHook();
		this.render();
	}
	
	Pagination.prototype.onPrevClick = function() {
		var value = this.state.current - 1;
		value = Math.max(1, value);
		if (value != this.state.current) {
			this.state.current = value;
			this.triggerHook();
			this.render();
		}
	}
	
	Pagination.prototype.onNextClick = function() {
		var value = this.state.current + 1;
		value = Math.min(this.state.total, value);
		if (value != this.state.current) {
			this.state.current = value;
			this.triggerHook();
			this.render();
		}
	}
	
	Pagination.prototype.onJumpPrevClick = function() {
		var value = this.state.current - this.param.jumpNumber;
		value = Math.max(1, value);
		if (value != this.state.current) {
			this.state.current = value;
			this.triggerHook();
			this.render();
		}
	}
	
	Pagination.prototype.onJumpNextClick = function() {
		var value = this.state.current + this.param.jumpNumber;
		value = Math.min(this.state.total, value);
		if (value != this.state.current) {
			this.state.current = value;
			this.triggerHook();
			this.render();
		}
	}
	
	Pagination.prototype.triggerHook = function() {
		if (this.param.onChange && _.isFunction(this.param.onChange)) {
			this.param.onChange(this.state.current);
		}
	}
	
	$.fn.pagination = function(param) {
		this.each(function() {
			if (!this.paginationInst) {
				this.paginationInst = new Pagination(this, param);
			}
		});
	}
	
})();

/**
 * 下拉框
 */
(function defineDropdown() {
	
	var Dropdown = function(dom, uuid) {
		this.param = {};
		this.uuid = uuid;
		this.$dom = $(dom);
		this.$button = this.$dom.find('button');
		this.$ul = this.$dom.find('ul');
		this.$necromancy = this.createNecromancy();
		var $firstLi = this.$ul.children().eq(0);
		if ($firstLi.length) {
			this.$dom.data('value', $firstLi.data('value'));
		}
		this.state = {
			open: false
		}
		this.addEvents();
	}
	
	Dropdown.uuid = 0;
	
	/**
	 *  通灵
	 */
	Dropdown.prototype.createNecromancy = function() {
		var $necromancy = $(document.createElement('div'));
		$necromancy.addClass('dropdown-necromancy dropdown-necromancy-' + this.uuid);
		var $cloneUl = this.$ul.clone();
		$necromancy.append($cloneUl);
		$(document.body).append($necromancy);
		return $necromancy;
	}
	
	Dropdown.prototype.open = function() {
		var context = this;
		setTimeout(function() {
			$(document).one('click', function() {
				context.close.call(context);
			});
		}, 100);
		this.state.open = true;
		this.$dom.addClass('open');
		this.$necromancy.css({
			width: this.$dom.width(),
			left: this.$dom.offset().left,
			top: this.$dom.offset().top + 32
		});
		this.$necromancy.show();
		this.$necromancy.addClass('slide-up-enter slide-up-enter-active');
		setTimeout(function() {
			context.$necromancy.removeClass('slide-up-enter slide-up-enter-active');
		}, 200);
	}
	
	Dropdown.prototype.close = function() {
		var context = this;
		this.state.open = false;
		this.$dom.removeClass('open');
		this.$necromancy.addClass('slide-up-leave slide-up-leave-active');
		setTimeout(function() {
			context.$necromancy.removeClass('slide-up-leave slide-up-enter-leave');
			context.$necromancy.hide();
		}, 200);
	}
	
	Dropdown.prototype.addEvents = function() {
		var context = this;
		this.$button.on('click', function() {
			context[context.state.open ? 'close' : 'open'].call(context);
		});
		this.$necromancy.on('click', 'li', function() {
			var value = $(this).attr('data-value');
			context.setValue.call(context, value);
			context.close.call(context);
			var onChange = context.param.onChange; //触发钩子
			if (onChange && _.isFunction(onChange)) {
				onChange(value);
			}
		});
	}
	
	Dropdown.prototype.setParam = function(param) {
		this.param = param;
		if (param.defaultValue) {
			this.setValue(param.defaultValue);
		}
	}
	
	Dropdown.prototype.setValue = function(value) {
		this.$dom.attr('data-value', value);
		var $li = this.$dom.find('li[data-value=' + value + ']');
		this.$button.find('label').html($li.html());
	}
	
	$.fn.dropdown = function(param) {
		this.each(function() {
			var inst = this.dropdownInst;
			if (!inst) {
				Dropdown.uuid += 1;
				inst = this.dropdownInst = new Dropdown(this, Dropdown.uuid);
			}
			if (param) {
				inst.setParam(param);
			}
		});
	}
	
	$(function() {
		$('.dropdown').dropdown();	
	});
})();
