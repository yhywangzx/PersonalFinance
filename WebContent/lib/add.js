$("#classify").change(function() {
		$("form").attr("action", "sortlist");
		$("form").submit();
	});