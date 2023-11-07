package com.chunjae.pro05.ctrl;


import com.chunjae.pro05.biz.BoardServiceImpl;
import com.chunjae.pro05.biz.FilesServiceImpl;
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
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;


@Controller
@RequestMapping("/board/*")
public class boardCtrl {

    @Autowired
    private BoardServiceImpl boardServiceImpl;

    @Autowired
    private FilesServiceImpl filesServiceImpl;


    @GetMapping("/List")
    public String boardList(Model model) {
        List<Board> boardList = boardServiceImpl.boardList();
        model.addAttribute("boardList", boardList);
        return "/board/boardList";
    }

    @GetMapping("/Get")
    public String boardget(Model model, @RequestParam int no){

        Board board = boardServiceImpl.boardGet(no);
        String par = board.getTitle();
        List<Files> files = filesServiceImpl.fileListByPar(par);

        model.addAttribute("board", board);
        return "board/boardGet";
    };

    @GetMapping("/Add")
    public String boardform(){
        return "/board/boardForm";
    };


    @PostMapping("/Add")
    public String boardAdd(Board board, List<MultipartFile> uploadFiles, HttpServletRequest request, Model model) throws Exception {
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            board.setTitle(title);
            board.setContent(content);

           boardServiceImpl.boardAdd(board);


            if (uploadFiles != null) {
             ServletContext application = request.getSession().getServletContext();
                String realPath = application.getRealPath("/upload");
//                String realPath = "D:\\kyo\\pro\\pro05\\src\\main\\resources\\images";	      // 개발 서버
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
                Date date = new Date();
                String dateFolder = sdf.format(date);
                File uploadPath = new File(realPath, dateFolder);
                if (!uploadPath.exists()) {
                    uploadPath.mkdirs();
                }

                for (MultipartFile multipartFile : uploadFiles) {
                    if (multipartFile.isEmpty()) {
                        continue;
                    }
                    String originalFilename = multipartFile.getOriginalFilename();
                    UUID uuid = UUID.randomUUID();
                    String uploadFilename = uuid.toString() + "_" + originalFilename;

                    Files files = new Files();
                    files.setPar(title);
                    files.setSaveFolder(dateFolder);
                    String fileType = multipartFile.getContentType();
                    String[] fileTypeArr = fileType.split("/");
                    files.setFileType(fileTypeArr[0]);
                    files.setOriginNm(originalFilename);
                    files.setSaveNm(uploadFilename);

                    multipartFile.transferTo(new File(uploadPath, uploadFilename));     // 서버에 파일 업로드 수행
                    filesServiceImpl.FilesInsert(files);                            // DB 등록


                }
            }
        return "redirect:/board/List";
    };

    @GetMapping("/Del")
    public String boardDel(int no){
        boardServiceImpl.boardDel(no);
        return "redirect:/board/List";
    };

}
