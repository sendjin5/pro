package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.Lesson;
import kr.ed.haebeop.service.LessonService;
import kr.ed.haebeop.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/lesson/*")
public class LessonController {

    @Autowired
    private LessonService lessonService;

    @GetMapping(value = "list")
    public String lessonList(HttpServletRequest request, Model model) throws Exception{
        String type = request.getParameter("type");
        String keyword = request.getParameter("keyword");
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

        Page page = new Page();
        page.setSearchType(type);
        page.setSearchKeyword(keyword);
        int total = lessonService.count(page);

        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        List<Lesson> lessonList = lessonService.listpro(page);
        System.out.println("카운터 : " + lessonService.count(page));

        model.addAttribute("type", type);
        model.addAttribute("keyword", keyword);
        model.addAttribute("page", page);
        model.addAttribute("curPage", curPage);
        model.addAttribute("lessonList", lessonList);
        return "/lesson/lessonList";
    }

    @GetMapping("get")
    public String get(HttpServletRequest request, Model model) throws Exception{
        int lsno = Integer.parseInt(request.getParameter("lsno"));
        Lesson lesson = lessonService.get(lsno);
        model.addAttribute("lesson", lesson);
       return "/lesson/lessonGet";
    }

    @GetMapping("cart")
    public String cart(HttpServletRequest request, Model model) throws Exception{
        int lsno = Integer.parseInt(request.getParameter("lsno"));
        Lesson lesson = lessonService.get(lsno);
        model.addAttribute("lesson", lesson);
        return "/member/Mycart";
    }

    @GetMapping("insert")
    public String insert(HttpServletRequest request, Model model) throws Exception{
        return "/lesson/lessonInsert";
    }
    @PostMapping("insert")
    public String lessonInsertpro(HttpServletRequest request, Model model) throws Exception{
        Lesson lesson = new Lesson();
        lesson.setTitle(request.getParameter("title"));
        lesson.setContent(request.getParameter("content"));
        lessonService.insert(lesson);
        return "redirect: list";
    }

    @GetMapping("update")
    public String lessonUpdate(HttpServletRequest request, Model model) throws Exception{
        int lsno = Integer.parseInt(request.getParameter("lsno"));
        Lesson lesson = lessonService.get(lsno);
        model.addAttribute("lesson", lesson);
        return "/lesson/lessonUpdate";
    }

    @PostMapping("update")
    public String lessonUpdatepro(HttpServletRequest request, Model model) throws Exception{
        int lsno = Integer.parseInt(request.getParameter("lsno"));
        Lesson lesson = new Lesson();
        lesson.setLsno(lsno);
        lesson.setTitle(request.getParameter("title"));
        lesson.setContent(request.getParameter("content"));
        lessonService.update(lesson);
        return "redirect: list";
    }

    @GetMapping("delete")
    public String lessonDelete(HttpServletRequest request, Model model) throws Exception{
        int lsno = Integer.parseInt(request.getParameter("lsno"));
        lessonService.delete(lsno);
        return "redirect: list";
    }

}
