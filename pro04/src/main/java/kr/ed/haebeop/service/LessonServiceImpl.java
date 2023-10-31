package kr.ed.haebeop.service;


import kr.ed.haebeop.domain.Lesson;
import kr.ed.haebeop.domain.Notice;
import kr.ed.haebeop.persistence.LessonMapper;
import kr.ed.haebeop.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LessonServiceImpl implements LessonService{

    @Autowired
    private LessonMapper lessonmapper;

    @Override
    public List<Lesson> list()  {
        return lessonmapper.list();
    }

    @Override
    public Lesson getlast(int lsno) {
        return lessonmapper.getlast(lsno);
    }

    @Override
    public Lesson get(int lsno)  {
        return lessonmapper.get(lsno);
    }

    @Override
    public void insert(Lesson Lesson)  {
        lessonmapper.insert(Lesson);
    }

    @Override
    public void update(Lesson Lesson)  {
        lessonmapper.update(Lesson);
    }

    @Override
    public void delete(int lsno)  { lessonmapper.delete(lsno); }

    @Override
    public List<Lesson> listpro(Page page) {
        return lessonmapper.listpro(page);
    }

    @Override
    public List<Lesson> listForMain() {
        return lessonmapper.listForMain();
    }

    @Override
    public int count(Page page)  {
        return lessonmapper.count(page);
    }
}
