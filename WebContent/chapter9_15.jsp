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
    <title>new Image()로 이미지 로딩</title>
    <script>
        // 미리 로딩해둘 이미지 이름 배열
        var files = ["images/apple.jpg",
            "images/banana.jpg",
            "images/mango.jpg"];
        var imgs = new Array();
        for (var i = 0; i < files.length; i++) {
            imgs[i] = new Image(); // 이미지 객체 생성
            imgs[i].src = files[i]; // 이미지 로딩
        }
        // 다음 이미지 출력
        var next = 1;

        function change(img) {
            img.src = imgs[next].src; // 이미지 변경
            next++; // 다음 이미지
            next %= imgs.length; // 개수를 넘으면 처음으로
        }
    </script>
</head>
<body>
<h3>new Image()로 이미지 로딩</h3>
<hr>
이미지를 클릭하면 다음 이미지를 보여줍니다.<p>
    <img style="border:20px ridge wheat"
         src="images/apple.jpg" alt="." width="200" height="200"
         onclick="change(this)">

</body>
</html>
