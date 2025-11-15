<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원가입 결과</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="bg-light">

<div class="container my-5 p-4 bg-white shadow-sm rounded" style="max-width: 600px;">
  <h2 class="text-success border-bottom pb-2 mb-4 text-center">데이터 수신 성공 🎉</h2>

  <div class="alert alert-success text-center" role="alert">
    <h4 class="alert-heading">환영합니다!</h4>
    <p>회원가입 폼으로부터 데이터가 성공적으로 수신되었습니다. (실제 DB 저장 로직은 생략)</p>
  </div>

  <div class="p-3 border rounded bg-light my-4">
    <h4 class="text-primary mt-0">수신된 회원 정보:</h4>
    <p><strong>이름:</strong> <%= request.getParameter("username") %></p>
    <p><strong>이메일:</strong> <%= request.getParameter("email") %></p>
    <p><strong>성별:</strong> <%= request.getParameter("gender") %></p>
    <p><strong>국적:</strong> <%= request.getParameter("country") %></p>
    <p class="text-muted small">(비밀번호는 보안상 출력하지 않습니다.)</p>
  </div>

  <div class="text-center mt-4">
    <a href="list.jsp" class="btn btn-primary">게시판으로 돌아가기</a>
  </div>
</div>
</body>
</html>