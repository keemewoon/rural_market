<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rural</title>

<style>

</style>

</head>
<body>
   <!-- login.jsp -->

   <section class="main-section">

      <h1>User</h1>

      <div class="user-list">
         <button type="button" class="btn btn-default" onclick="location.href='/rural/member/loginok.do?id=user&pw=1234';">홍길동</button>
         <button type="button" class="btn btn-default" onclick="location.href='/rural/member/loginok.do?id=farmer&pw=1234';">김농부</button>
         <button type="button" class="btn btn-default" onclick="location.href='/rural/member/loginok.do?id=admin&pw=1234';">관리자</button>
         <button type="button" class="btn btn-default" onclick="location.href='/rural/member/loginok.do?id=user1&pw=1234';">유저2</button>
            <button type="button" class="btn btn-default" onclick="location.href='/rural/member/loginok.do?id=user2&pw=1234';">유저3</button>
         <button type="button" class="btn btn-default" onclick="location.href='/rural/member/loginok.do?id=farmer1&pw=1234';">농부2</button>
      </div>

   </section>

   <script>

   </script>
</body>
</html>