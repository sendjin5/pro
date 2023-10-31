package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.Lesson;
import kr.ed.haebeop.domain.Notice;
import kr.ed.haebeop.util.Page;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LessonMapper {
    public List<Lesson> listpro(Page page) ;
    public List<Lesson> listForMain() ;
    public List<Lesson> list() ;
    public Lesson getlast(int lsno);
    public Lesson get(int lsno) ;
    public void insert(Lesson lesson) ;
    public void update(Lesson lesson) ;
    public void delete(int lsno) ;
    public int count(Page page) ;
}
