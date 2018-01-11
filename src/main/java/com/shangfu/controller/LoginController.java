    package com.shangfu.controller;

    import com.shangfu.dao.UserDao;
    import com.shangfu.model.Student;
    import org.springframework.beans.factory.annotation.Autowired;
    import org.springframework.stereotype.Controller;
    import org.springframework.web.bind.annotation.RequestMapping;
    import org.springframework.web.bind.annotation.RequestMethod;
    import org.springframework.web.bind.annotation.RequestParam;
    import org.springframework.web.bind.annotation.ResponseBody;

    import javax.servlet.http.HttpServletResponse;
    import java.util.HashMap;
    import java.util.Map;

    @Controller
    public class LoginController {
        @Autowired
        private UserDao userDao;

        @RequestMapping(value="/login" , method= RequestMethod.POST , produces="application/json;charset=UTF-8")
        public @ResponseBody Map<String,String> test(@RequestParam("username") String username, @RequestParam("password") String password,HttpServletResponse response){
            Map<String,String> map = new HashMap<String, String>();
           // userDao.insert(new Student("xiao"));//这里只是为了测试数据库！
            if(username.equals("hyh")&&password.equals("123")) {
                map.put("status", "success");
                return map;
            }
            map.put("status", "error");
            return map;
        }
    }
