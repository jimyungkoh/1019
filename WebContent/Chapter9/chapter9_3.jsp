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
    <title>addEventListener()를 이용한 리스너 등록</title>
    <script>
        var p;

        function init() { //문서가 완전히 로드되었을 때 호출
            p = document.getElementById("p");
            p.addEventListener("mouseover", over); //이벤트 리스너 등록
            p.addEventListener("mouseout", out); //이벤트 리스너 등록
        }

        function over() {
            p.style.backgroundColor = "orchid";
        }

        function out() {
            p.style.backgroundColor = "white";
        }
    </script>
</head>
<body onload="init()">
<h3>addEventListener()를 이용한 리스너 등록</h3>
<hr>
<p id="p">마우스 올리면 orchid 색으로 변경</p>
</body>
</html>
