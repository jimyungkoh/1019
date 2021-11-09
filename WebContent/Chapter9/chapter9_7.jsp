<%--
  Created by IntelliJ IDEA.
  User: JimyungKoh
  Date: 2021-11-03
  Time: PM 1:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>이벤트의 디폴트 행동 취소</title>
    <script>
        function query() {
            var ret = confirm("네이버로 이동하시겠습니까?");
            return ret; //confirm()의 리턴 값은 true 혹은 false
        }

        function noAction(e) {
            e.preventDefault(); //이벤트의 디폴트 행동 강제취소
        }
    </script>
</head>
<body>
<h3>이벤트의 디폴트 행동 취소</h3>
<hr>
<a href="http://www.naver.com" onclick="return query()">네이버로 이동할지 물어보는 링크</a>
<hr>
<form>
    <input type="checkbox" checked>빵(체크 됨)<br>
    <input type="checkbox"
           onclick="noAction(event)">술(체크 안됨)
</form>
</body>
</html>
