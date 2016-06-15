/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.airtrips.controllers;

import java.net.BindException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

@Controller
public class MainController extends AbstractController {

    /**
     * search controller
     *
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("search")
    protected ModelAndView search(
            HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        //product do search
        String search = request.getParameter("q");
        ModelAndView mv = new ModelAndView("search");
        return mv;
    }
    /**
     * search controller
     *
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("login")
    protected ModelAndView login(
            HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        ModelAndView mv = new ModelAndView("search");
        return mv;
    }

    /**
     * Redirect with request and response
     *
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @Override
    @RequestMapping("redirect")
    protected ModelAndView handleRequestInternal(
            HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        //page to redirec
        String redirectUrl = request.getParameter("page");
        String service = request.getParameter("service");
        String parametro = request.getParameter("classe");
        String acao = request.getParameter("acao");
  
        ModelAndView mv = new ModelAndView(redirectUrl);
        return mv;
    }

    /**
     * Redirect with request response and object received by forms using spring
     * bind.
     *
     * @param request
     * @param response
     * @param command
     * @param errors
     * @return
     * @throws Exception
     */
    protected ModelAndView handleRequestInternal(
            HttpServletRequest request,
            HttpServletResponse response,
            Object command,
            BindException errors) throws Exception {
        ModelAndView mv = new ModelAndView("");
        return mv;
    }

}
