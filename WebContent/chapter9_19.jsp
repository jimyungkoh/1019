<%--
  Created by IntelliJ IDEA.
  User: JimyungKoh
  Date: 2021-11-09
  Time: PM 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>선택된 물품 계산하기</title>
    <script>
        var sum = 0;

        function calc(cBox) {
            if (cBox.checked)
                sum += parseInt(cBox.value);
            else
                sum -= parseInt(cBox.value);
            document.getElementById("sumtext").value = sum;
        }
    </script>
</head>
<body>
<h3>물품을 선택하면 금액이 자동 계산됩니다</h3>
<hr>
<form>
    <input type="checkbox" name="hap" value="10000"
           onclick="calc(this)">모자 1만원
    <input type="checkbox" name="shose" value="30000"
           onclick="calc(this)">구두 3만원
    <input type="checkbox" name="bag" value="80000"
           onclick="calc(this)">명품가방 8만원<br>
    지불하실 금액 <input type="text" id="sumtext" value="0">
</form>
</body>
</html>
