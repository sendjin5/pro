package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Member;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface MemberService {
    public List<Member> memberList();
    public Member memberGet(String id);
    public Member login(String id);
    public void insert(Member member);
    public void update(Member member);
    public void delete(String id);
}