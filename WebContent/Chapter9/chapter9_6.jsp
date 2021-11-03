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
    <title>이벤트 객체 프로퍼티</title>

</head>
<body>
<h3>이벤트 객체 프로퍼티 출력</h3>
<hr>
<p id="p">버튼을 클릭하면 이벤트 객체를 출력합니다.</p>
<button onclick="f(event)">클릭하세요</button>
<script>
    function f(e) { //e는 현재 발생한 이벤트 객체
        var text="type: "+e.type+"<br>"
        +"target: "+e.target+"<br>"
        +"currentTarget: "+e.currentTarget+"<br>"
        +"defaultPrevented: "+e.defaultPrevented;

        var p = document.getElementById("p");
        p.innerHTML=text; // 이벤트 객체의 프로퍼티 출력
    }
</script>
</body>
</html>
