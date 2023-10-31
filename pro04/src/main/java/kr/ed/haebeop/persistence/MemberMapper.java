package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.Member;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface MemberMapper {
    @Select("SELECT * FROM member")
    public List<Member> memberList();

    @Select("SELECT * FROM member WHERE id=#{id}")
    public Member memberGet(String id);

    @Select("SELECT * FROM member WHERE id=#{id}")
    public Member login(String id);

    @Insert("insert into member(id, pw, name, email, tel, addr1, addr2, postcode, birth, grade) values(#{id}, #{pw}, #{name},#{email},#{tel},#{addr1},#{addr2},#{postcode},#{birth}, #{grade})")
    @Options(useGeneratedKeys=true, keyProperty="no")
    public void insert(Member member);

    @Update("update member set pw=#{pw},email=#{email},tel=#{tel},addr1=#{addr1},addr2=#{addr2},postcode=#{postcode} where id=#{id}")
    public void update(Member member);

    @Delete("DELETE FROM member WHERE id=#{id}")
    public void delete(String id);
}