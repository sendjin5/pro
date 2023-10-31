package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.Notice;
import kr.ed.haebeop.util.Page;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface NoticeMapper {
    public List<Notice> noticeList() ;
    public List<Notice> noticeListForMain() ;
    public Notice noticeGet(int no) ;
    public void insert(Notice notice) ;
    public void update(Notice notice) ;
    public void delete(int no) ;
    public List<Notice> noticeListPro(Page page) ;
    public int count(Page page) ;
}
