<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<<<<<<< HEAD
<%@ page import="com.chunjae.db.*" %>
<%@ page import="com.chunjae.dto.*" %>
<%@ page import="com.chunjae.db.DBC" %>
<%@ page import="com.chunjae.db.MariaDBCon" %>
=======
<%@ page import="com.roo.db.*" %>
<%@ page import="com.roo.dto.*" %>
<%@ page import="com.roo.db.DBC" %>
<%@ page import="com.roo.db.MariaDBCon" %>
<%@ page import="com.roo.util.AES256" %>
>>>>>>> 17e627e7ff88ff5ee9643e10943fa5265829343e
<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

<<<<<<< HEAD
=======
    pw = AES256.sha256(pw);

>>>>>>> 17e627e7ff88ff5ee9643e10943fa5265829343e
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    DBC con = new MariaDBCon();
    conn = con.connect();
    if(conn != null){
        System.out.println("DB 연결 성공");
    }

    try {
        String sql = "select * from member where id=? and pw=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, pw);
        rs = pstmt.executeQuery();
        if(rs.next()){
            session.setAttribute("id", id);
            session.setAttribute("name", rs.getString("name"));
            response.sendRedirect("/");
        } else {
<<<<<<< HEAD
            response.sendRedirect("/member/login.jsp");
=======
            out.println("<script>alert('아이디 또는 비밀번호를 잘못 입력하였습니다.');history.go(-1);</script>");
>>>>>>> 17e627e7ff88ff5ee9643e10943fa5265829343e
        }
    } catch(SQLException e) {
        System.out.println("SQL 구문이 처리되지 못했습니다.");
    } finally {
        con.close(rs, pstmt, conn);
    }
%>