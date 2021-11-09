<%--
  Created by IntelliJ IDEA.
  User: JimyungKoh
  Date: 2021-11-09
  Time: PM 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>onfocus와 onblur</title>
    <script>
        function checkFilled(obj) {
            obj.focus();
            if (obj.value == "") {
                alert("enter name!");
            }
            obj.focus(); // obj에 다시 포커스
        }
    </script>
</head>
<body onload="document.getElementById('name').focus();">
<h3>onfocus와 onblur</h3>
<hr>
<p>이름을 입력하지 않고 다른 창으로
    이동할 수 없습니다.</p>
<form>
    이름 <input type="text" id="name"
              onblur="checkFilled(this)">
    <p>
        학번 <input type="text">
</form>
</body>

</html>
