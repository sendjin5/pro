<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%-- 1. 필요한 라이브러리 가져오기 --%>
<%@ page import="java.sql.*" %>
<%@ page import="com.roo.db.*" %>
<%@ page import="com.roo.dto.*" %>
<%
    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    int bno = Integer.parseInt(request.getParameter("bno"));

    // 2. DB 연결하기
    DBC conn = new MariaDBCon();
    con = conn.connect();

    //3. SQL을 실행하여 Result(공지사항 한 레코드)을 가져오기
    String sql = "select * from book where bno=?";
    pstmt = con.prepareStatement(sql);
    pstmt.setInt(1, bno);
    rs = pstmt.executeQuery();

    //4. 가져온 한 레코드를 하나의 Board 객체에 담기
    Book bk  = new Book();
    if(rs.next()){
        bk.setBno(rs.getInt("bno"));
        bk.setTitle(rs.getString("title"));
        bk.setCompany(rs.getString("company"));
        bk.setAuthor(rs.getString("author"));
        bk.setDate(rs.getString("date"));
        bk.setPrice(rs.getInt("price"));
    }
    conn.close(rs, pstmt, con);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 수정하기</title>

    <%@ include file="../head.jsp" %>
    <!-- 스타일 초기화 : reset.css 또는 normalize.css -->
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">

    <!-- 필요한 폰트를 로딩 : 구글 웹 폰트에서 폰트를 선택하여 해당 내용을 붙여 넣기 -->
    <link rel="stylesheet" href="../google.css">
    <link rel="stylesheet" href="../fonts.css">

    <!-- 필요한 플러그인 연결 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="../common.css">
    <link rel="stylesheet" href="../hd.css">
    <style>
        /* 본문 영역 스타일 */
        .contents { clear:both; min-height:100vh;
            background-image: url("../images/bg_visual_overview.jpg");
            background-repeat: no-repeat; background-position:center -250px; }
        .contents::after { content:""; clear:both; display:block; width:100%; }

        .page { clear:both; width: 100vw; height: 100vh; position:relative; }
        .page::after { content:""; display:block; width: 100%; clear:both; }

        .page_wrap { clear:both; width: 1200px; height: auto; margin:0 auto; }
        .page_tit { font-size:48px; text-align: center; padding-top:1em; color:#fff;
            padding-bottom: 2.4rem; }

        .breadcrumb { clear:both;
            width:1200px; margin: 0 auto; text-align: right; color:#fff;
            padding-top: 28px; padding-bottom: 28px; }
        .breadcrumb a { color:#fff; }
        .frm { clear:both; width:1200px; margin:0 auto; padding-top: 80px; }

        .tb1 { width:800px; margin:50px auto; }
        .tb1 th { line-height:32px; padding-top:8px; padding-bottom:8px;
            border-top:1px solid #333; border-bottom:1px solid #333;
            background-color:deepskyblue; color:#fff; }
        .tb1 td {line-height:32px; padding-top:8px; padding-bottom:8px;
            border-bottom:1px solid #333;
            padding-left: 14px; border-top:1px solid #333; }

        .indata { display:inline-block; width:300px; height: 48px; line-height: 48px;
            text-indent:14px; font-size:18px; }
        .inbtn { display:block;  border-radius:100px;
            min-width:100px; padding-left: 24px; padding-right: 24px; text-align: center;
            line-height: 48px; background-color: #333; color:#fff; font-size: 18px;
            float:left; margin-right: 20px; }
        .inbtn:last-child { float:right; }
    </style>

    <link rel="stylesheet" href="../ft.css">
    <style>

    </style>
</head>
<body>
<div class="container">
    <header class="hd" id="hd">
        <%@ include file="../header.jsp" %>
    </header>
    <div class="contents" id="contents">
        <div class="breadcrumb">
            <p><a href="/">HOME</a> &gt; <a href="">온라인 서점</a> &gt; <span>온라인 서점 목록</span></p>
        </div>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">온라인 서점 목록 수정</h2>
                <hr>
                <form action="updateBookpro.jsp" method="post">
                    <table class="tb1">
                        <tbody>
                        <tr>
                            <th><label for="bno"></label>글 번호</th>
                            <td>
                                <input type="text" name="bno" id="bno" class="indata" value="<%=bk.getBno()%>" readonly>
                               
                            </td>
                        </tr>
                        <tr>
                            <th><label for="title"> 제목</label></th>
                            <td>
                                <input type="text" name="title" id="title" class="indata" required>
                            </td>
                        </tr>
                        <tr>
                            <th><label for="author">저자</label></th>
                            <td><input type="text" name="author" id="author" class="indata" required></td>
                        </tr>
                        <tr>
                            <th><label for="price">가격</label></th>
                            <td><input type="text" name="price" id="price" class="indata" required></td>
                        </tr>
                        <tr>
                            <th><label for="company">출판사</label></th>
                            <td><input type="text" name="company" id="company" class="indata" required></td>
                        </tr>
                        <tr>
                            <th><label for="date">출간일</label></th>
                            <td><input type="text" name="date" id="date" class="indata" required></td>
                        </tr>
                         <tr>
                            <td colspan="2">
                                <%-- 6. 수정하기(submit)을 누르면, 수정처리로 넘기기 --%>
                                <a href="/bookbook/Booklit.jsp" class="inbtn">글 목록</a>
                                <% if(sid.equals("admin") || sid.equals(bk.getAuthor())) { %>
                                <input type="submit" value="글수정" class="inbtn">
                                <a href="/bookbook/delBook.jsp?bno=<%=bk.getBno() %>" class="inbtn">글 삭제</a>
                                <% } %>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </section>
    </div>
    <footer class="ft" id="ft">
        <%@ include file="../footer.jsp" %>
    </footer>
</div>
</body>
</html>