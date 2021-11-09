<%--
  Created by IntelliJ IDEA.
  User: JimyungKoh
  Date: 2021-11-09
  Time: PM 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>선택된 check box 알아내기</title>
    <script>
        function findChecked() {
            var found = "";
            var kcity = document.getElementsByName("city");
            for (var i = 0; i < kcity.length; i++) {
                if (kcity[i].checked == true)
                    found += (kcity[i].value + ":");
            }
            if (found != null)
                alert(found + "이 선택되었음");
            else
                alert("선택된 것이 없음");
        }
    </script>
</head>
<body>
<h3>버튼을 클릭하면 선택된 체크 박스의 value를 출력합니다.</h3>
<hr>
<form>
    <input type="checkbox" name="city" value="seoul" checked>서울
    <input type="checkbox" name="city" value="busan">부산
    <input type="checkbox" name="city" value="chunchen">춘천
    <input type="checkbox" name="city" value="siheung">시흥
    <input type="button" value="find checked" onclick="findChecked()">
</form>
</body>

</html>
