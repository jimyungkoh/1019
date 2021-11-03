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
    <title>익명 함수로 이벤트 리스너 작성</title>
    <script>
        var p;

        function init() { //문서가 완전히 로드되었을 때 호출
            p= document.getElementById("p");
            p.onmouseover=function (){ //익명 함수
                this.style.backgroundColor="orchid";
            };
            p.addEventListener("mouseout",
                function () {this.style.backgroundColor="white";} // 익명 함수
            );
        }
    </script>
</head>
<body onload="init()">
<h3>익명 함수로 이벤트 리스너 작성</h3>
<hr>
<p id="p">마우스 올리면 orchid 색으로 변경</p>
</body>
</html>
