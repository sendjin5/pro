<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>My Roo::인사말</title>
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


        .page .intro .intro_tit { font-family: SBAggroB; width: 800px; margin: 50px auto; text-align: center; }
        .page .intro .intro_con { font-family: HakgyoansimWoojuR; font-size: 20px; display: block; width: 800px; height: 300px; margin: 50px auto;  }
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
            <p><a href="/"> HOME </a> &gt; <a href="<%=headerPath%>/company01.jsp"> 회사소개 </a> &gt; <span> 인사말 </span></p>
        </div>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">인사말</h2>
            </div>
            <div class="intro">
                <h3 class="intro_tit"><img src="/image/common/logo01.png" alt="My Roo"></h3>
                <p class="intro_con">아이들의 꿈과 희망을 펼치는 My Roo는
                    부모의 마음으로 아이들을 가르치며, 함께 성장해 나가는 기업입니다. <br><br>

                My Roo는 학생들이 더 나은 사람으로 성장하도록 돕고, 동시에 지속적인 발전과 성장을 추구합니다.<br><br>
                My Roo는 학생들이 학습을 통해 새로운 경험과 지식을 얻는 동시에 즐거움을 느끼는 것을 강조합니다.<br>
            </div>

        </section>
    </div>
    <footer class="ft" id="ft">
        <%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>
