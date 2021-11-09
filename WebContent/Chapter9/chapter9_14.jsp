<%--
  Created by IntelliJ IDEA.
  User: JimyungKoh
  Date: 2021-11-09
  Time: AM 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>onload로 이미지 크기 출력</title>
    <script>
        function changeImage() {
            var sel = document.getElementById("sel");
            var img = document.getElementById("myImg");
            img.onload = function () { // 이미지 크기 출력
                var mySpan = document.getElementById("mySpan");
                mySpan.innerHTML = img.width + "x" + img.height;
            }
            var index = sel.selectedIndex; // 선택된 옵션 인덱스
            img.src = sel.options[index].value; // <option>의 value 속성
        }
    </script>
</head>
<body onload="changeImage()">
<h3>onload로 이미지 크기 출력</h3>
<hr>
<form>
    <select id="sel" onchange="changeImage()">
        <option value="/images/apple.png">사과
        <option value="/images/banana.png">바나나
        <option value="/images/mango.png">망고
    </select>
    <span id="mySpan">이미지 크기</span>
</form>
<p><img id="myImg" src="/images/apple.png" alt="."></p>
</body>
</html>
