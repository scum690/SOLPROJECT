<%@page import="com.bc.mybatis.FreeBookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수 정</title>
<link href="./css/freebook.css" rel="stylesheet" type="text/css">
<script>
	function save_go(frm) {
		var pwd1 = frm.pwd.value;
		var pwd2 = "${FreeBookVO.getPwd() }";
		if (pwd1 != pwd2) {
			alert("암호가 일치하지 않는다.")
			frm.pwd.value = "";
			frm.pwd.focus();
			return false;
		}
		
		frm.action = "update_ok.jsp";
		frm.submit();
		
	}

</script>
</head>
<body>

<div id="container">
	<h2>게시판 : 수정화면</h2>
	<hr>
	<p><a href="list.jsp">[목록으로 이동]</a></p>
	<form method="post">
		<table>
		<tbody>
			<tr>
				<th>작성자</th>
				<td>
					<input type="text" name="name" value="${FreeBookVO.getName() }">
				</td>
			</tr>
			<tr>
				<th>제★목</th>
				<td>
					<input type="text" name="subject" value="${FreeBookVO.getSubject() }">
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" name="pwd"></td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea name="content"  rows="5" cols="70">${FreeBookVO.getContent() }</textarea>
				</td>
			</tr>
	 </tbody>
	 <tfoot>
	 	<tr>
	 		<td colspan="2">
	 			<input type="button" value="수 정"	
	 				onclick="save_go(this.form)">
	 			<input type="reset" value="초기화">
	 		</td>
	 	</tr>
	 	<input type="hidden" name="idx" value="${FreeBookVO.getIdx() }">	 
	</tfoot>
	 </table>
	</form>
</div>

</body>
</html>