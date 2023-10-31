<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>My Roo::연혁</title>
    <%@ include file="head.jsp" %>
    <link rel="stylesheet" href="<%=headPath%>/css/sub.css">
    <style>
        @font-face {
            font-family: 'HakgyoansimWoojuR';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }
        @font-face {
            font-family: 'SBAggroB';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroB.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
    .text-box {
    align-items: center;
    width: 1200px;
    padding: 20px;
    margin: 0 auto;
    border: 1px solid #ccc;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.8s, transform 0.4s;
    display: block;
    }
    .text-box:hover {
    background-color: #ffed88;
    transform: scale(1.05);
    }
    .text-box-content {
    margin-left: 20px;
    }
    .title {
    font-family: SBAggroB;
    font-size: 50px;
    font-weight: bold;
    }
    .content {
    font-family: HakgyoansimWoojuR;
    font-size: 20px;
    color: #555;
    margin-top: 5px;
    }
    .pic_com2 {  text-align: center; }
    </style>
</head>
<body>
<div class="wrap">
    <header class="hd" id="hd">
        <%@ include file="header.jsp" %>
    </header>
    <div  class="contents" id="contents">
        <div class="sub">
            <h2>회사소개</h2>
        </div>
        <div class="breadcrumb">
            <p><a href="/"> HOME </a> &gt; <a href="<%=headerPath%>/company01.jsp"> 회사소개 </a> &gt; <span> 연혁 </span></p>
        </div>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">연혁</h2>
            </div>
            <div class="pic_com2">
            <img src = /image/main/Yun.jpg>
            </div>
        </section>


    </div>
    <footer class="ft" id="ft">
        <%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>
