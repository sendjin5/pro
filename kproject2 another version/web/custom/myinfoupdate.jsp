<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내정보수정</title>
    <c:set var="path" value="<%=request.getContextPath() %>" />
    <%@ include file="/common.jsp"%>
    <style>
    #tb1 { width:960px; margin:40px auto; }
    #tb1 th { background-color: #111; color:#fff; }
    td { margin-left: 50%; }
    .item1 { width:10%; }
    .item2 { width:70%; }
    .item3 { width:10%; }
    .item4 { width:10%; }
    #page-nation1 { width: 960px; margin:20px auto; }
    </style>
</head>
<body>
<div class="container-fluid">
    <%@ include file="/header.jsp"%>
    <div class="contents" style="min-height:100vh">
        <nav aria-label="breadcrumb container-fluid" style="padding-top:28px; border-bottom:2px solid #666;">
            <div class="container">
                <ol class="breadcrumb justify-content-end">
                    <li class="breadcrumb-item"><a href="${path }">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Custom</a></li>
                    <li class="breadcrumb-item active" aria-current="page">MyInfo Edit</li>
                </ol>
            </div>
        </nav>
        <h2 class="title">내 정보수정</h2>
        <div class="container">
            <div class="box_wrap">
                <form name="frm1" id="frm1" action="${path }/myinfoupdatepro.do" method="post" onsubmit="return joinCheck(this)">
                <table class="table table-secondary" id="tb1">
                    <tbody>
                    <tr>
                        <th>아이디</th>
                        <td>${cus.id }</td>
                    </tr>
                    <tr>
                        <th>비밀번호</th>
                        <td><input type="password" name="pw" id="pw" placeholder="비밀번호 입력" class="form-control" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$" maxlength="16" required /></td>
                    </tr>
                    <tr>
                        <th>비밀번호 확인
                        <td><input type="password" name="pw2" id="pw2" placeholder="비밀번호 확인 입력" class="form-control" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$" maxlength="16" required /></td>
                    </tr>
                    <tr>
                        <th>이름</th>
                        <td>${cus.name }</td>
                    </tr>
                    <tr>
                        <th>가입일시</th>
                        <td>${cus.regdate }</td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td>${cus.email }</td>
                        <td><input type="email" name="email" id="email" placeholder="이메일 입력" class="form-control" required></td>
                    </tr>
                    <tr>
                        <th>연락처</th>
                        <td>${cus.tel } </td>
                        <td><input type="tel" name="tel" id="tel" maxlength="11" placeholder="전화번호 숫자만 입력 00000000000" class="form-control" required></td>
                    </tr>
                    <tr>
                        <th>포인트</th>
                        <td>${cus.point }</td>
                    </tr>
                    <tr>
                        <th>주소</th>
                        <td>${cus.addr }</td>
                        <td><input type="text" name="address1" id="address1" placeholder="기본 주소 입력" class="form-control" required /><br>
                            <input type="text" name="address2" id="address2" placeholder="상세 주소 입력" class="form-control" required /><br>
                            <input type="text" name="postcode" id="postcode" style="width:160px;float:left;margin-right:20px;" placeholder="우편번호" class="form-control">
                            <button type="button" id="post_btn" onclick="findAddr()" class="btn btn-primary">우편번호 검색</button>
                        </td>
                    </tr>
                    </tbody>
                </table>
                    <div class="btn-group">
                        <input type="submit" name="submit-btn" class="btn btn-primary" value="회원정보수정">
                        <input type="reset" name="reset-btn" class="btn btn-primary" value="취소">
                    </div>
                    </form>
                <script>
                    function joinCheck(f){
                        if(f.pw.value!=f.pw2.value){
                            alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
                            f.pw.focus();
                            return false;
                        }
                    }
                    function findAddr(){
                        new daum.Postcode({
                            oncomplete:function(data){
                                console.log(data);
                                var roadAddr = data.roadAddress;
                                var jibunAddr = data.jibunAddress;
                                document.getElementById("postcode").value = data.zonecode;
                                if(roadAddr !== ''){
                                    document.getElementById("address1").value = roadAddr;
                                } else if(jibunAddr !== ''){
                                    document.getElementById("address1").value = jibunAddr;
                                }
                                document.getElementById("address2").focus();
                            }
                        }).open();
                    }
                </script>
                <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
            </div>
        </div>
    </div>
    <%@ include file="/footer.jsp" %>
</div>
</body>
</html>
