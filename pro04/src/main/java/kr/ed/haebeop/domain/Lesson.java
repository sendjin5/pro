package kr.ed.haebeop.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Lesson {
    private int lsno;
    private int category;
    private String title;
    private String content;
    private String teacher;
    private String img;
    private String video;
    private int price;
    private String regdate;


}