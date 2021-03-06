<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
$(function(){
	//var _code = $("#secret_code").val();
	//var _code = $("#secret_code").find("option:selected").text();
	//alert(_code);
	/* if(_code == 0){
	var _code = ${log.isSecret};
		$(".selector").find("option:contains('所有人可见')").attr("selected",true);
	}
	if(_code == 5){
        $(".selector").find("option:contains('自己可见')").attr("selected",true);
    } */
	
	//$(".select2").select2();
	
});
</script>

<!-- <div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"
		aria-label="Close">
		<span aria-hidden="true">&times;</span>
	</button>
	<h4 class="modal-title" id="myModalLabel">加密</h4>
</div> -->

<form class="form" id="log_encrypt_form"  role="form"
	action="${pageContext.request.contextPath}/log/encrypt.action"
	method="post">

	<div class="modal-body">
		<input type="hidden" name="id" value="${log.id }" />

		<div class="form-group">
			<label class="control-label" for="secret_code">类型</label>
			<select class="form-control selector select2" id="secret_code" name="secretCode">
			   <option value="0" ${log.isSecret == 0 ? "selected" : ""}>所有人可见</option>
               <option value="5" ${log.isSecret == 5 ? "selected" : ""}>自己可见</option>
			</select>
		</div>
		
		<div class="form-group">
			<label class="control-label" for="secret">密码</label>
            <input class="form-control" id="secret" type="text" name="secret"></input>
		</div>
		<div class="form-group">
			<label class="control-label" for="secret_question">高级加密</label>
			<a class="btn btn-success form-control" id="secret_question">问题加密</a>
		</div>

	</div>
	
	<!-- <div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		<button type="submit" class="btn btn-primary">确认</button>
	</div> -->

</form>