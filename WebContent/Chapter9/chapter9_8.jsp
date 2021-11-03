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
    <title>이벤트 흐름</title>
</head>
<body>
<p style="color: cornflowerblue">
    이것은 <span style="color: red">문장입니다.</span>
</p>
<form>
    <input type="text" name="s">
    <input type="button" value="테스트" id="button">
    <hr>
</form>
<div id="div" style="color: green"></div>
<script>
    var div = document.getElementById("div"); //이벤트 메시지 출력 공간
    var button = document.getElementById("button");

    //    body 객체에 캡쳐 리스너 등록
    document.body.addEventListener("click", capture, true); //캡쳐 단계(1)

    //    타깃 객체에 버블 리스너 등록
    button.addEventListener("click", bubble, false); //버블 단계(2)

    //    body 객체에 버블 리스너 등록
    document.body.addEventListener("click", bubble, false); //버블 단계(3)

    function capture(e) { // e는 이벤트 객체
        var obj = e.currentTarget; //현재 이벤트를 받은 DOM객체
        var tagName = obj.tagName; //태그 이름
        div.innerHTML += "<br>capture 단계: " + tagName + "태그" + e.type + "이벤트";
    }

    function bubble(e) { //e는 이벤트 객체
        var obj=e.currentTarget; // 현재 이벤트를 받은 DOM 객체
        var tagName=obj.tagName; // 태그 이름
        div.innerHTML+="<br>bubble 단계"+tagName+"태그"+e.type+"이벤트";
    }
</script>
</body>
</html>
