package project.controller.custom;

import project.dto.Custom;
import project.model.CustomDAO;
import project.util.AES256;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static java.awt.SystemColor.info;

@WebServlet("/MyInfoUpdatePro.do")
public class MyInfoUpdateProCtrl extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        String addr1 = request.getParameter("address1");
        String addr2 = request.getParameter("address2");
        String email = request.getParameter("email");
        String tel = request.getParameter("tel");

        int suc = 0;
        String msg = "";
        request.setAttribute("msg", msg);

        CustomDAO dao = new CustomDAO();

        Custom info = new Custom();
        String key = "%02x";
        String encrypted = "";
        try {
            encrypted = AES256.encryptAES256(pw, key);
            System.out.println("비밀번호 암호화 : "+encrypted);
        } catch (Exception e) {
            e.printStackTrace();
        }

        info.setId(id);
        info.setPw(encrypted);
        info.setAddr(addr1 + "<br>" +addr2);
        info.setTel(tel);
        info.setEmail(email);
        suc = dao.addCustom(info);

        if(suc>0){
            response.sendRedirect("/myinfoupdate.jsp");
        } else {
            //response.sendRedirect("/custom/join.jsp?qid="+id);
            msg = "회원정보 수정에 실패했습니다.";
            response.sendRedirect("<script>history.go(-1)</script>");

        }
    }
}