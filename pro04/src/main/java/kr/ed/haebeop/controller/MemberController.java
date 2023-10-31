package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.Member;
import kr.ed.haebeop.service.MemberService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/member/*")
public class MemberController {

    @Autowired
    private MemberService memberService;

    @Autowired
    HttpSession session;

    BCryptPasswordEncoder pwEncoder = new BCryptPasswordEncoder();



    @GetMapping("login")
    public String loginForm() { return "/member/login"; }

    @GetMapping("type")
    public String type(){ return "/member/type"; }

    @GetMapping("term")
    public String term(){ return "/member/term"; }

    @GetMapping("cart")
    public String cart(){ return "/member/cart"; }

    @PostMapping("join")
    public String insertForm(HttpServletRequest request, Model model) {
        int grade = Integer.parseInt(request.getParameter("grade"));
        model.addAttribute("grade", grade);
        return "/member/memberInsert";
    }

    @PostMapping(value="idcheck")
    public void idCheck(HttpServletResponse response, HttpServletRequest request) throws Exception {
        String id = request.getParameter("id");
        Member mem = memberService.memberGet(id);
        boolean result = false;
        if(mem!=null){
            result = false;
        } else {
            result = true;
        }
        JSONObject json = new JSONObject();
        json.put("result", result);
        PrintWriter out = response.getWriter();
        out.println(json.toString());
    }

    @PostMapping("insert")
    public String memberInsert(Member member,  Model model) throws Exception {
        String ppw = member.getPw();
        String pw = pwEncoder.encode(ppw);
        member.setPw(pw);
        memberService.insert(member);
        model.addAttribute("msg", "가족이 되신걸 환영합니다.");
        model.addAttribute("url", "/member/login");
        return "/member/alert";
    }

    @GetMapping("logout")
    public String logout(HttpServletRequest request, Model model) throws Exception {
        session.removeAttribute("sid");
        model.addAttribute("msg", "로그아웃 하셨습니다.");
        model.addAttribute("url", "/main");
        return "/member/alert";
    }

    @PostMapping("login")
    public String login(@RequestParam String id, @RequestParam String pw, Model model) {
        Member mem = memberService.login(id);
        if(mem != null) {
            boolean loginSuccess = pwEncoder.matches(pw, mem.getPw());
            if (loginSuccess) {
                session.setAttribute("sid", id);
                model.addAttribute("msg", "로그인을 성공하셨습니다.");
                model.addAttribute("url", "/main");
                return "/member/alert";
            } else {
                model.addAttribute("msg", "비밀번호가 일치하지 않습니다.");
                model.addAttribute("url", "/member/login");
                return "/member/alert";
            }
        } else {
        model.addAttribute("msg", "아이디가 없습니다.");
        model.addAttribute("url", "/member/login");
        return "/member/alert";
        }
    }

    @GetMapping("get")
    public String memberGet(Model model) throws Exception {
        String id = (String) session.getAttribute("sid");
        Member member = memberService.memberGet(id);
        model.addAttribute("member", member);
        return "/member/memberMypage";
    }





    @GetMapping("List")
    public String memberList(Model model) {
        List<Member> memberList = memberService.memberList();
        model.addAttribute("memberList", memberList);
        return "/member/memberList";
    }



    @GetMapping("delete")
    public String memberDelete(@RequestParam String id, HttpSession session, Model model) throws Exception {
        memberService.delete(id);
        session.invalidate();
        model.addAttribute("msg", "회원탈퇴가 정상적으로 진행되었습니다.");
        model.addAttribute("url", "/main");
        return "/member/alert";
    }

    @GetMapping("update")
    public String editForm(Model model) throws Exception {
        String id = (String) session.getAttribute("sid");
        Member member = memberService.memberGet(id);
        model.addAttribute("member", member);
        return "/member/memberUpdate";
    }

    @PostMapping("update")
    public String memberUpdate(HttpServletRequest request, Model model) throws Exception {
        String id = (String) session.getAttribute("sid");

        String oldPw = request.getParameter("oldPw");
        String pw = request.getParameter("pw");
        String pw2 = request.getParameter("pw2");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String tel = request.getParameter("tel");
        String addr1 = request.getParameter("addr1");
        String addr2 = request.getParameter("addr2");
        String postcode = request.getParameter("postcode");
        String birth = request.getParameter("birth");

        Member dto = new Member();
        dto.setId(id);
        if(pw!=null && pw2!=null && pw.equals(pw2)){
            dto.setPw(pw);
        } else{
            dto.setPw(oldPw);
        }
        dto.setName(name);
        dto.setEmail(email);
        dto.setTel(tel);
        dto.setAddr1(addr1);
        dto.setAddr2(addr2);
        dto.setPostcode(postcode);
        dto.setBirth(birth);

        memberService.update(dto);
        model.addAttribute("dto", dto);
        model.addAttribute("msg", "회원정보가 수정되었습니다.");
        model.addAttribute("url", "/member/get");
        return "/member/alert";
    }
//
//    @PostMapping("update")
//    public String memberUpdate(Member member, Model model) throws Exception {
//        String pw = pwEncoder.encode(member.getPw());
//        member.setPw(pw);
//        memberService.update(member);
//        model.addAttribute("msg", "회원정보가 수정되었습니다.");
//        model.addAttribute("url", "/member/get");
//        return "/member/alert";
//    }
}
