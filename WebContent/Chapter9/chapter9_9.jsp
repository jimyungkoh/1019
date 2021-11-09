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
    <title>onclick</title>
    <script>
        function calculate(){
            let exp=document.getElementById("exp");
            let result=document.getElementById("result");
            result.value=eval(exp.value);
        }
    </script>
</head>
<body>
<h3>onclick, 계산기 만들기</h3>
<hr>
<p>
계산하고자 하는 수식을 입력하고 계산 버튼을 눌러봐요.
</p>
<form>
    식 <input type="text" id="exp" value=""><br>
    값 <input type="text" id="result">
    <input type="button" value="계산" onclick="calculate()">
</form>
</body>
</html>
