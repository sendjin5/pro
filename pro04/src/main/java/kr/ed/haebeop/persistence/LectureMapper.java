package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.Lecture;
import kr.ed.haebeop.domain.LectureVO;
import kr.ed.haebeop.util.Page;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LectureMapper {

    public List<LectureVO> lectureList(Page page) throws Exception;
    public int lectureCount(Page page) throws Exception;
    public Lecture lectureGet(int lno) throws Exception;
    public Lecture lecturepay(int dno) throws Exception;

}