//package com.chunjae.pro05.persis;
//
//import com.chunjae.pro05.entity.User;
//import org.apache.ibatis.annotations.Mapper;
//import org.apache.ibatis.annotations.Select;
//import org.apache.ibatis.annotations.Update;
//import org.springframework.stereotype.Component;
//
//import java.util.List;
//
//@Component
//@Mapper
//public interface UserM {
//
//    @Select("select * from user order by id desc")
//    List<User> userList();
//
//    @Select("select * from user where id")
//    User userGet();
//
//    //  탈퇴하기 act:JOIN-활동중, DORMANT-휴면중, WITHDRAW-탈퇴중
//    @Update("update user set act='WITHDRAW' where id = #{id}")
//    User userGet();
//    @Select("select * from user order by id desc")
//    User userGet();
//    @Select("select * from user order by id desc")
//    User userGet();
//    @Select("select * from user order by id desc")
//    User userGet();
//    @Select("select * from user order by id desc")
//    User userGet();
//
//
//    <update id="getWithdraw">
//    update user set act='WITHDRAW' where id = #{id}
//    </update>
//    <!-- 계정 활성화 -->
//    <update id="getActivate">
//    update user set act='JOIN' where name = #{name}
//    </update>
//    <!-- 계정 휴면 -->
//    <update id="getDormant">
//    update user set act='DORMANT' where name = #{name}
//    </update>
//    <!-- 이메일 로그인 -->
//    <select id="getByEmail" resultType="com.chunjae.test06.entity.Euser">
//    select * from user where email = #{email}
//    </select>
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
//}
