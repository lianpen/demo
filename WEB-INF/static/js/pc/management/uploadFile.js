
$(function() {
	// 点击第一步
	$('.firstStep .next-step').on("click", function() {
		$('.firstStep').hide().next().show()

	})
	$('.seconedStep .next-step').on("click", function() {
		$('.seconedStep').hide().next().show()
		  //	第三步倒计时
		if($(".threeStep").css('display')=='block'){
			var selfItem =$(".threeStep .time-out-num");
			var timer = null;
			var countdown = 5;
			timer = setInterval(function() {
				if (countdown == 0) {
					countdown = 5;
					clearInterval(timer)
					return;
				} else {
					countdown--;
				}
				$(selfItem).html(countdown)
			}, 1000)
		}
		

	})
   //	返回重新上传
	$(".seconedStep .back-upload").on("click",function(){
		$('.seconedStep').hide().prev().show()
	})
   //	继续导入
	$(".threeStep .back-upload").on("click",function(){
		$('.threeStep').hide()
		$('.firstStep').show()
	})
//   点击第二步返回到第一步
	$(".seconedStep .go-back").on("click",function(){
		$('.seconedStep').hide().prev().show()
	})
//	 initFileInput("input-id");
//	 function initFileInput(ctrlName) {
//        var control = $('#' + ctrlName);
//        control.fileinput({
//            language: 'zh', //设置语言
//            uploadUrl: "upload/insert", //上传的地址
//            allowedFileExtensions: ['xls', 'xlsx'],//接收的文件后缀
//            //uploadExtraData:{"id": 1, "fileName":'123.mp3'},
//            uploadAsync: true, //默认异步上传
//            showUpload: true, //是否显示上传按钮
//            showRemove : true, //显示移除按钮
//            showPreview : true, //是否显示预览
//            showCaption: false,//是否显示标题
//            browseClass: "btn btn-primary", //按钮样式
//            //dropZoneEnabled: true,//是否显示拖拽区域
//            //minImageWidth: 50, //图片的最小宽度
//            //minImageHeight: 50,//图片的最小高度
//            //maxImageWidth: 1000,//图片的最大宽度
//            //maxImageHeight: 1000,//图片的最大高度
//            //maxFileSize: 0,//单位为kb，如果为0表示不限制文件大小
//            //minFileCount: 0,
//            //maxFileCount: 10, //表示允许同时上传的最大文件个数
//            enctype: 'multipart/form-data',
//            validateInitialCount:true,
//            previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
//            msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
//
//        }).on('filepreupload', function(event, data, previewId, index) {     //上传中
//            var form = data.form, files = data.files, extra = data.extra,
//            response = data.response, reader = data.reader;
//            console.log('文件正在上传');
//        }).on("fileuploaded", function (event, data, previewId, index) {    //一个文件上传成功
//            console.log('文件上传成功！'+data.id);
//
//        }).on('fileerror', function(event, data, msg) {  //一个文件上传失败
//            console.log('文件上传失败！'+data.id);
//
//
//        })
//    }
	
})

   
