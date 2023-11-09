package com.chunjae.pro05.biz;

import com.chunjae.pro05.entity.Role;
import com.chunjae.pro05.entity.User;
import com.chunjae.pro05.entity.UserRole;
import com.chunjae.pro05.persis.RoleMapper;
import com.chunjae.pro05.persis.UserMapper;
import com.chunjae.pro05.persis.UserMapper2;
import com.chunjae.pro05.persis.UserRoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService implements UserDetailsService {
    @Autowired
    private UserMapper2 userMapper2;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private UserRoleMapper userRoleMapper;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
        User user = userMapper2.loginId(id);
        return user;
    }

    //    List<User> userList();
//    User userGet();
//    void userWith();
//    void userJoin();
//    void userDormant();
//    User login ();
//    int idCheck(String id) ;
//    void insert(User user) ;
//    public void userDel(String id);
//



//
//    public User findUserByLoginId(String loginId) {
//        return userMapper2.findUserByLoginId(loginId);
//    }
//

    public void UserInfo(User user) {
        user.setPw(bCryptPasswordEncoder.encode(user.getPw()));
        user.setGrade(2);
        userMapper2.UserInfo(user);
        Role role = roleMapper.getRoleInfo("USER");
        UserRole userRole = new UserRole();
        userRole.setRoleId(role.getId());
        userRole.setUserId(user.getNo());
        userRoleMapper.setUserRoleInfo(userRole);
    }



}
