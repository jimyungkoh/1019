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
    <title>이벤트 객체 전달받기</title>

</head>
<body>
<h3>이밴트 객체 전달받기</h3>
<hr>
<p id="p">마우스를 올려 보세요</p>
<button onclick="f(event)">클릭하세요</button>
<script>
    function f(e) { //e는 현재 발생한 이벤트 객체
        alert(e.type) //이벤트 종류 출력
    }

    document.getElementById("p").onmouseover = f;
</script>
</body>
</html>
