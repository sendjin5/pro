package com.chunjae.pro05.persis;

import com.chunjae.pro05.entity.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface UserMapper {

    @Select("select * from user order by id desc")
    List<User> userList();

    @Select("select * from user where id")
    User userGet();

    //  탈퇴하기 act:JOIN-활동중, DORMANT-휴면중, WITHDRAW-탈퇴중
    @Update("update user set active='WITHDRAW' where no=#{no}")
    void userWith();
    @Update("update user set active='JOIN' where no=#{no}")
    void userJoin();
    @Update("update user set active='DORMANT' where no=#{no}")
    void userDormant();

    @Select("select * from user order by id desc")
    User login ();
    @Select("select * from user where id=#{id}")
    int idCheck(String id) ;

    @Insert("INSERT INTO user VALUES (DEFAULT, #{id}, #{pw}, #{name}, #{email}, #{tel}, #{addr1}, #{addr2}, #{postcode}, DEFAULT, #{birth}, DEFAULT, DEFAULT, DEFAULT, DEFAULT)")
    void insert(User user) ;

    @Select("select * from user where id=#{id}")
    public void userDel(String id);


//
//    public void updateMemberForTeacher(String id) throws Exception;
//    public void firepoint(Member member) throws Exception;
//    public void updateMember(Member member) throws Exception;
//    public void updatePw(Member member) throws Exception;
//
//    <!-- id 로그인 -->
//    <select id="getByName" resultType="com.chunjae.test06.entity.Euser">
//    select * from user where name = #{name}
//    </select>
//    <select id="getUserById" resultType="com.chunjae.test06.entity.Euser">
//    select * from user where id = #{id}
//    </select>
//    <!-- 아이디 찾기 -->
//    <select id="findById" resultType="com.chunjae.test06.entity.Euser">
//    select * from user where email = #{email} and tel = #{tel}
//    </select>
//    <!-- 비밀번호 찾기 -->
//    <select id="findByPw" resultType="com.chunjae.test06.entity.Euser">
//    select * from user where email = #{email} and tel = #{tel} and name = #{name}
//    </select>
//    <!-- 회원가입 -->
//    <insert id="userJoin">
//    INSERT INTO user VALUES (DEFAULT, #{name}, #{password}, #{username}, #{email}, #{address}, #{tel}, DEFAULT, DEFAULT, DEFAULT)
//    </insert>
//    <!-- 회원정보수정 -->
//    <update id="updateUser">
//    UPDATE user SET password=#{password}, username=#{username}, address=#{address}, tel=#{tel} WHERE name = #{name}
//    </update>
//    <update id="updatePasswordNoChange">
//    UPDATE user SET username=#{username}, address=#{address}, tel=#{tel} WHERE name = #{name}
//    </update>
//    <update id="updateLevel">
//    UPDATE user SET lev=#{lev} WHERE name = #{name}
//    </update>
//    <delete id="removeUser">
//    DELETE from user where name = #{name}
//    </delete>
}
