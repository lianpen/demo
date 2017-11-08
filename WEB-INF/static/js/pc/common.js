
/**
 * 预定义公用模块
 */
(function defineModule() {
	
	/**
	 * 定义一些常量
	 */
	(function defineConstant() {
		window.constants = {
			//domain: 'http://1r8w465040.iask.in:9998/open-base-rest/'	
			domain: 'http://1r8w465040.iask.in:8180/jifenzhi'		
		}
	}());
	
	/**
	 * 定义配置
	 */
	(function defineConfig() {
		window.config = {
			/**
			 * 前端模拟请求配置
			 */
			feRequest: [{
				desc: '根据组织搜索人员',
				req: '/sys/newSysEmployee/findEmployeesListBySelector',
				resp: function(data) {
					var text = data.text;
					var result = [];
					for (var i = 0; i < 15; i += 1) {
						result.push({
							id: text + '_同学_' + i,
							name: text + '的同学' + i
						});
					}
					return result;
				}
			}, {
				desc: '根据关键字搜索人员',
				req: 'loadPerson',
				resp: function(data) {
					var word = data.word;
					var number = parseInt(Math.random() * 20);
					var result = [];
					for (var i = 0; i < number; i += 1) {
						result.push({ text: word + '_' + i });
					}
					return result;
				}
			}]
		}
	}());
	
	/**
	 * 全局数据
	 */
	(function defineRedux() {
		window.redux = {
			ppTree: [],
			cheatToken: {
		      "ClientId":"8177b949",
		      "AppKey":"8fe2a3625dcd4a349799e0ebbd6b6402"
			}
		}
	}());
	
	/**
	 * 工具及原型拓展
	 */
	(function definePrototype() {
		/**
		 * 空函数
		 */
		window.noop = function() {};
		/**
		 * 空promise
		 */
		window.noopPromise = new Promise(function(resolve, reject) {
			resolve();
		});	
		/**
		 * underscore使用mustacle语法解析模板
		 */
		_.templateSettings = {
		  interpolate: /\{\{(.+?)\}\}/g
		};
		/**
		 * 原型拓展 生成每项都相同的数组
		 */
		Array.repeatValue = function(value, times) {
			var result = [];
			for (var i = 0; i < times; i += 1) {
				result.push(value);
			}
			return result;
		};
		/**
		 * underscore工具拓展 深克隆
		 */
		function deepClone(data) {
		  var t = typeof(data), o, i, ni;
		  if( t === 'array') { o = []; } else if (t === 'object') { o = {}; } else { return data; }
		  if(t === 'array') {
			  for (i = 0, ni = data.length; i < ni; i++) {
				  o.push(deepClone(data[i]));
			  }
			  return o;
		  } else if (t === 'object') {
			  for( i in data) {
				  o[i] = deepClone(data[i]);
			  }
			  return o;
		  } 
		}
		_.deepClone = deepClone;
	}());
	
	/**
	 * 群艺ajax请求函数
	   参数和jquery请求方式一样
	   1.构造url
	   2.应对无法远程请求的情况 前端根据配置文件模拟一个返回
	   3.生成token防止csrf攻击
	   4.对用户输入做htmlEncode防止xss攻击
	   5.统一处理失败请求
	 */
	(function defineAjax() {
		$.qyAjax = function(param) {
			/**
			 * 构造url
			 */
			if (param.alien) {
				requestAlign(param);
				return;
			}
			/**
			 * 应对无法远程请求的情况 前端根据配置文件模拟一个返回
			 */
			if (param.imitate) {
				var imitateResult = _imitateResponse(param);
				if (imitateResult) {
					param.success && param.success(imitateResult);
				}	
				return;			
			}
			/**
			 * 生成token
			 */
			/**
			 * htmlEncode
			 */
			/**
			 * 发起请求
			 */
			var dummySuccess = param.success || window.noop;
			var dummyError = param.error || window.noop;
			param.success = function(resp) {
				//成功统计及通用处理
				dummySuccess(resp);
			}
			param.error = function(resp) {
				_handleError(resp);
				dummyError();
			}
			$.ajax(param);
		}		
		
		$.qyGet = function(param) {
			$.qyAjax(param);
		}
		
		$.qyPost = function(param) {
			param.method = 'post';
			$.qyAjax(param);
		}
		
		$.qyFetch = function(url, data) {
			return new Promise(function(resolve, reject) {
				$.qyAjax({
					url: url, 
					data: data,
					success: function(resp) {
						resolve(resp);
					},
					error: function(resp) {
						reject(resp);
					}
				});
			});
		}
		
		/**
		 * 构造url
		 */
		function _makeUrl(url) {
			if (/http/.test(url)) return url;
			return domain + url;
		}
		
		/**
		 * 模拟返回
		 */
		function _imitateResponse(param) {
			var feRequest = window.config.feRequest;
			var protocol = feRequest.find(function(el) {
				return (new RegExp(el.req)).test(param.url);
			});
			if (!protocol) return null;
			var resp = protocol.resp;
			return Object.prototype.toString.call(resp) == '[object Function]' ? resp(param.data) : resp;
		}
		
		/**
		 * 失败处理
		 */
		function _handleError(resp) {
			
		}

		/**
		 * 请求第三方服务
		 */
		function requestAlign(option) {
			option.method = option.method == 'get' ? 'get' : 'post';
	        var timestamp = new Date().getTime().toString()
	        timestamp = timestamp.substr(0,10);
	        var params = {}
	        params["access_token"] = window.redux.cheatToken.access_token;
	        params["client_id"] = window.redux.cheatToken.ClientId;
	        params["sign_method"] = "md5";
	        params["timestamp"] = timestamp;		
	        if (option.method != 'post') {
		        for(var key in option.data){
		        	params[key] = option.data[key]
		        }
	        }	
	        var appKey = window.redux.cheatToken.AppKey;
	        var keys = Object.getOwnPropertyNames(params);
	        keys.sort();
	        var sign = appKey;
	        keys.forEach(function(key) {
	          sign += key;
	          sign += params[key];
	        });
	        sign += appKey;
	        params['sign'] = hex_md5(sign).toLocaleUpperCase();

	        keys = Object.getOwnPropertyNames(params);
	        option.url = window.constants.domain + option.url + '?';
	        keys.forEach(function(key) {
	          option.url += (key + "=" + params[key] + "&");
	        });
	        var requestHeader = new Headers();
            requestHeader.append("Content-Type", "application/json");
            requestHeader.append("Access-Control-Allow-Origin", "*");
	        var requestBody = {
	        	method: option.method,
	        	headers: requestHeader
	        }
	        if (option.method == 'post') {
	        	option.data = option.data || {};
	        	requestBody.body = JSON.stringify(option.data);
	        }
	        fetch(option.url, requestBody).then(function(response) {
            	if(response.status == 200){
	                response.json().then(function(responseData) {
	                    option.success && option.success(responseData);
	                });
	            }    
	        });	
		}	


	}());
	
	/**
	 * 第三方登录
	 */
	function alienLogin(resolve) {
		return noopPromise;
		var data = JSON.stringify({
			code: 'test',
			password: '000000',
			username: '黄定泉'
		});
		return new Promise(function(resolve, reject) {
		    fetch(window.constants.domain + 'login/user?access_token=1', {
			    method: 'POST',
			    headers:{
			       "Content-Type":"application/json",
			    },
			    body:data
		    }).then(function(resp) { 
		    	return resp.json();
		    }).then(function(resp) {
		    	var access_token = resp.access_token;
		    	window.redux.cheatToken.access_token = access_token;
		    	resolve();
		    });
		});
	};

	/**
	 *  加载组织根
	 */
	function loadPpRootTree() {
		return noopPromise;
		return new Promise(function(resolve, reject) {
			$.qyAjax({
				url: 'selector/employee',
				success: function(data) {
					window.redux.ppTree = data.deptList;
					window.redux.ppTree.forEach(function(el) {
						el.text = el.orgName.slice(0, 8);
						el.isLeaf = !el.sumDeptChild;
						if (!el.isLeaf) {
							el.loaded = false;
							el.state = {
								expanded: false
							};
							el.nodes = [];
							for(var i = 0; i < el.sumDeptChild; i += 1) {
								el.nodes.push({ text: '1' });
							}
						}
					});
					resolve();
				},
				data: {
					parentId: '-1'
				},
				method: 'post',
				alien: true
			});
		});
	}

	/**
	 * 进入应用
	 */
	function appInit() {
		return new Promise(function(resolve, reject) {
			$(function() {
				var state = {
					value0: [],
					value1: []
				}
				$('#usePersonPicker0').on('click', function() {
					$(this).pickPerson({
						tree: tree,
						onChange: function(value) {
							state.value0 = value;
							render();
						},
						value: state.value0 
					});
				});
				$('#usePersonPicker1').on('click', function() {
					$(this).pickPerson({
						tree: tree,
						onChange: function(value) {
							state.value1 = value;
							render();
						},
						value: state.value1
					});
				});
				function render() {
					$('#result0').html(state.value0.map(function(el) {
						return el.name
					}).join(','));
					$('#result1').html(state.value1.map(function(el) {
						return el.name
					}).join(','));
				}		
				render();	
			});
		});	
	}

	//alienLogin().then(loadPpRootTree).then(appInit);

}());
















