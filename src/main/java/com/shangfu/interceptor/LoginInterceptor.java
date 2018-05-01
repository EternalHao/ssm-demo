package com.shangfu.interceptor;

import com.shangfu.utils.IPUtil;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.*;

import org.slf4j.Logger;

import java.util.Collection;
import java.util.Enumeration;

@Component
public class LoginInterceptor extends HandlerInterceptorAdapter {

    private  Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

    //在控制器方法调用前执行
    //返回值为是否中断，true,表示继续执行（下一个拦截器或处理器）
    //false则会中断后续的所有操作，所以我们需要使用response来响应请求
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String method = request.getMethod();    //获取客户端请求的方式
        String requestURI = request.getRequestURI();    //获取客户端请求地址
        String remoteAddr = IPUtil.getIPAddress(request);   //得到来访者的IP地址
        logger.debug("Requset For Handler Mapping : "+method+"　"+requestURI);

        //1、请求到登录页面 放行
        if(requestURI.equals("/login")) {
            return true;
        }

        //3、如果用户已经登录 放行
        if(request.getSession().getAttribute("username") != null) {
            return true;
        }

        //4、非法请求 即这些请求需要登录后才能访问
        //重定向到登录页面
        response.sendRedirect("/login.jsp");
//        request.getRequestDispatcher("/login.jsp").forward(request,response);
        return false;

//        StringBuffer requestURL = request.getRequestURL();  //获取请求完整的URL地址
//        String remoteHost = request.getRemoteHost();
//        int remotePort = request.getRemotePort();
//        String localAddr = request.getLocalAddr();  //获取WEB服务器的IP地址
//        String localName = request.getLocalName();  //获取WEB服务器的主机名
//        String authType = request.getAuthType();
//        String contextPath = request.getContextPath();
//        Cookie[] cookies = request.getCookies();    //获得所有的cookie
//        Enumeration<String> headerNames = request.getHeaderNames();　//详细的请求信息
//        String pathInfo = request.getPathInfo();
//        String pathTranslated = request.getPathTranslated();
//        String queryString = request.getQueryString();  //得到请求url地址中附带的参数
//        String remoteUser = request.getRemoteUser();
//        String requestedSessionId = request.getRequestedSessionId();//获取sessionId
    }


    //在控制器方法调用后，解析视图前调用，我们可以对视图和模型做进一步渲染或修改
    public void postHandle(HttpServletRequest request, HttpServletResponse response,
            Object handler, ModelAndView modelAndView)
            throws Exception{
        System.out.println("fang fa zhi xing wan le");

    }
    //整个请求完成，即视图渲染结束后调用，这个时候可以做些资源清理工作，或日志记录等
    //只有在preHandle返回true的情况下才会执行
    public void afterCompletion(
            HttpServletRequest request, HttpServletResponse response,
            Object handler, Exception ex)
            throws Exception{
        System.out.println("finally");
    }
}
