package com.chunjae.pro05.ctrl;


import com.chunjae.pro05.biz.BoardSerivce;
import com.chunjae.pro05.biz.FilesService;
import com.chunjae.pro05.entity.Board;
import com.chunjae.pro05.entity.Files;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.*;


@Controller
@RequestMapping("/board/*")
public class boardController {

    @Autowired
    private BoardSerivce boardSerivce;

    @Autowired
    private FilesService filesService;


    @GetMapping("/List")
    public String boardList(Model model) {
        List<Board> boardList = boardSerivce.boardList();
        model.addAttribute("boardList", boardList);
        return "/board/boardList";
    }

    @GetMapping("/Get")
    public String boardget(Model model, @RequestParam int no) throws Exception{

        Board board = boardSerivce.boardGet(no);
        String par = board.getTitle();
        Files files = filesService.fileListByPar(par);

        model.addAttribute("board", board);
        model.addAttribute("files", files);
        return "board/boardGet";
    };

    @GetMapping("/Add")
    public String boardform(){
        return "/board/boardForm";
    };

    @PostMapping("/Add")
    public String boardAdd(Board board, MultipartFile uploadFiles, HttpServletRequest request, Model model) throws Exception {

            ServletContext application = request.getSession().getServletContext();
            String realPath = application.getRealPath("classpath:/static/images/");       // 운영 서버

                if(uploadFiles != null) {
                    String originaluploadFiles = uploadFiles.getOriginalFilename();
                    UUID uuid = UUID.randomUUID();
                    String uploaduploadFiles = uuid.toString() + "_" + originaluploadFiles;
                    uploadFiles.transferTo(new File(realPath, uploaduploadFiles));     //파일 등록
                    board.setBfile(uploaduploadFiles);
                }else{
                    System.out.println("nononono");
                }
                boardSerivce.boardAdd(board);

        return "redirect:/board/List";
    };

    @GetMapping("/Del")
    public String boardDel(int no){
        boardSerivce.boardDel(no);
        return "redirect:/board/List";
    };

}
