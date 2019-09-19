<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get방식 요청</title>
</head>
<body>
<form action = "TEST03" method ="get" >
	이름 <input type ="text" name = "name"/><br/>
	
	성별 <select name ="gender">
		<option value="남자">남자</option>
		<option value="여자">여자</option>
	</select><br/>
	아이디 <input type ="text" name="id"/><br/>
	비밀번호  <input type ="password" name = "password"/> <br/>
	비밀번호 확인 <input type ="password" name = "passwordCheck"/> <br/>
	주소 <input type ="text" name="add"/><br>
	전화번호 <input type="text" name="phone"/><br/>
	이메일주소 <input type ="text" name="Email"/><br/>
	취미
	축구<input type ="checkbox" name="hobby" value="축구">
	야구<input type ="checkbox" name="hobby" value="야구">
	농구<input type ="checkbox" name="hobby" value="농구">
	수영<input type ="checkbox" name="hobby" value="수영"><br/>
	게임<input type ="checkbox" name="hobby" value="게임">
	독서<input type ="checkbox" name="hobby" value="독서">
	음악<input type ="checkbox" name="hobby" value="음악">
	TV<input type ="checkbox" name="hobby" value="TV"><br/>
	영화<input type ="checkbox" name="hobby" value="영화">
	연극<input type ="checkbox" name="hobby" value="연극">
	뮤지컬<input type ="checkbox" name="hobby" value="뮤지컬">
	전시<input type ="checkbox" name="hobby" value="전시">
	<hr/><input type="submit" value="회원가입">
</form>
</body>
</html>