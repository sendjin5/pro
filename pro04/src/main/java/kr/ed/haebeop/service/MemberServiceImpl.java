package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Member;
import kr.ed.haebeop.persistence.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService{

    @Autowired
    private MemberMapper membermapper;

    @Override
    public List<Member> memberList() {
        return membermapper.memberList();
    }

    @Override
    public Member memberGet(String id) {
        return membermapper.memberGet(id);
    }

    @Override
    public Member login(String id) {
        return membermapper.login(id);
    }

    @Override
    public void insert(Member member) {
        membermapper.insert(member);

    }

    @Override
    public void update(Member member) {
        membermapper.update(member);

    }

    @Override
    public void delete(String id) {
        membermapper.delete(id);

    }
}
