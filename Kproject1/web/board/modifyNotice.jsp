<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="com.roo.db.*" %>
<%@ page import="com.roo.vo.*" %>
<%@ page import="java.sql.*" %>
<%
    int bno = Integer.parseInt(request.getParameter("bno"));

    String sql = "";
    Board bd = new Board();

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    DBC con = new MariaDBCon();
    conn = con.connect();

    try {
        sql = "select * from boardList where bno = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, bno);
        rs = pstmt.executeQuery();
        if(rs.next()) {
            bd.setTitle(rs.getString("title"));
            bd.setContent(rs.getString("content"));
            bd.setAuthor(rs.getString("author"));
        }
    } catch (SQLException e) {
        System.out.println("sql 구문 오류");
    } finally {
        con.close(rs, pstmt, conn);
    }

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>My Roo::공지사항-수정하기</title>
    <%@ include file="../head.jsp" %>
    <link rel="stylesheet" href="<%=headPath%>/css/sub.css">
</head>
<body>
<div class="wrap">
    <header class="hd" id="hd">
        <%@ include file="../header.jsp" %>
    </header>
    <div  class="contents" id="contents">
        <div class="sub">
            <h2>공지사항</h2>
        </div>
        <div class="breadcrumb">
            <p><a href="/"> HOME </a> &gt; <a href="/board/listNotice.jsp"> 커뮤니티 </a> &gt; <span> 공지사항 </span></p>
        </div>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">공지사항 수정하기</h2>
                <form action="modifyBoardPro.jsp" method="post">
                    <input type="hidden" value="<%=bno %>" name="bno" id="bno">
                    <input type="hidden" value="1" name="type" id="type">
                    <input type="hidden" value="<%=bd.getAuthor() %>" name="author" id="author">
                    <table class="table tb2">
                        <tbody>
                        <tr>
                            <th><label for="title">공지 제목</label></th>
                            <td><input type="text" class="inData" name="title" id="title" value="<%=bd.getTitle() %>"></td>
                        </tr>
                        <tr>
                            <th><label for="content">공지 내용</label></th>
                            <td>
                                <textarea name="content" id="content" cols="80" rows="10" maxlength="990" class="inData">
                                    <%= bd.getContent()%>
                                </textarea>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="btn_group">
                        <button type="submit" class="inBtn inBtn1">수정하기</button>
                        <a href="getNotice.jsp?bno=<%=bno %>" class="inBtn inBtn2">취소하기</a>
                    </div>
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
