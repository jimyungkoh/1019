<%--
  Created by IntelliJ IDEA.
  User: JimyungKoh
  Date: 2021-11-09
  Time: PM 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> New Document </title>
    <script>
        function submitCheck() {
            //alert("안녕")
            if (document.f.id.value == "") {
                alert("id를 입력해주세요.");
                return false;
            } else {
                return true;
            }
        }

        function resetCheck() {
            alert("취소를 클릭하여 모든값들을 초기화 합니다.")
        }

        function btnCheck() {
            //alert("버튼클릭")
            if (document.f.id.value == "") {
                alert("id입력해!")
            } else {
                //폼을 전송한다.
                document.f.submit();
            }
        }

    </script>

</head>
<body>
<h2> onSubmit 과 onReset 이벤트 </h2>
<form name="f" action="formCheck.jsp" method="post"
      onsubmit="return submitCheck()" onreset="resetCheck()">
    아이디 : <input type="text" name="id"/> <br/>
    나이 : <input type="text" name="age"/> <br/>
    주소 : <input type="text" name="addr"/> <br/>

    <input type="submit" value="전송">
    <input type="reset" value="취소">

    <input type="button" value="button으로전송" onclick="btnCheck()">

</form>
</body>
</html>
