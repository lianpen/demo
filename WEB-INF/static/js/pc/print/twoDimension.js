//二维码打印
$(function() {
	$(".qy-list-table .wait").on('mouseenter', function() {
		$(this).find('.waiting').addClass('waiting-border')
		$(this).find('.table-box').slideDown(1500)
		$(this).find('.waiting .checkbox').css('visibility', 'hidden')
	})
	$(".qy-list-table .wait").on('mouseleave', function() {
		$(this).find('.waiting').removeClass('waiting-border')
		$(this).find('.table-box').slideUp(1500)
		$(this).find('.waiting .checkbox').css('visibility', 'inherit')
	})
	$(".qy-list-table .print").on('mouseenter', function() {
		$(this).find('.printing').addClass('printing-border')
		$(this).find('.table-box').slideDown(1500)
		$(this).find('.printing .checkbox').css('visibility', 'hidden')
	})
	$(".qy-list-table .print").on('mouseleave', function() {
		$(this).find('.printing').removeClass('printing-border')
		$(this).find('.table-box').slideUp(1500)
		$(this).find('.printing .checkbox').css('visibility', 'inherit')

	})
	$(".qy-list-table .finish").on('mouseenter', function() {
		$(this).find('.finished').addClass('finished-border')
		$(this).find('.table-box').slideDown(1500)
		$(this).find('.finished .checkbox').css('visibility', 'hidden')

	})
	$(".qy-list-table .finish").on('mouseleave', function() {
		$(this).find('.finished').removeClass('finished-border')
		$(this).find('.table-box').slideUp(1500)
		$(this).find('.finished .checkbox').css('visibility', 'inherit')
	})

	if ($('.qy-list-table .table').css("display") == 'none') {
		$('.print-status .checkbox').css('visibility', 'inherit')
	} else {
		$('.print-status .checkbox').css('visibility', 'hidden')
	}
})