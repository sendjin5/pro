package com.chunjae.pro05.persis;

import com.chunjae.pro05.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

@Component
@Mapper
public interface UserMapper2 {

    @Select("select * from user where id=#{id}")
    User loginId(@Param("id") String id);

    int UserInfo(@Param("param") User param);
}
