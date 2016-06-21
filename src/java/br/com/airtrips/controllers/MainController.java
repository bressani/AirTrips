/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.airtrips.controllers;

import br.com.airtrips.database.dao.UserDAO;
import br.com.airtrips.database.objects.User;
import java.net.BindException;
import java.time.LocalDate;
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
        String parametro = request.getParameter("classe");
        String acao = request.getParameter("acao");

        if (parametro != null && acao != null) {
            if (parametro.equalsIgnoreCase("User")) {
                if (acao.equalsIgnoreCase("preenche")) {
                    User user = new User();
              
                    //data_nascimento`
                    user.setCpf(request.getParameter("cpf"));
                    user.setRg(request.getParameter("RG"));
                    user.setNome(request.getParameter("nome"));
                    if(Integer.parseInt(request.getParameter("radios"))==1){
                        user.setSexo(request.getParameter("M"));
                    }else{
                        user.setSexo(request.getParameter("F"));
                    }
                     user.setCep(request.getParameter("cep"));
                     user.setEndereco(request.getParameter("endereco"));
                     user.setTel(request.getParameter("telefone_contato"));
                     user.setCel(request.getParameter("celular"));
                     user.setCidade(request.getParameter("cidade"));
                     user.setEstado(request.getParameter("uf"));
                     
                     String dataNascimento = request.getParameter("data_nascimento");
                     String[] split = dataNascimento.split("-");
                      LocalDate of = LocalDate.of(Integer.parseInt(split[0]),
                       Integer.parseInt(split[1]), Integer.parseInt(split[2]));
                     user.setDatanascimento(of);
                     user.setSenha(request.getParameter("password"));
                     
                     UserDAO userDAO = new UserDAO();
                     userDAO.insert(user);
                    ModelAndView mv = new ModelAndView("signup-result");
                    return mv;

                } else if(acao.equalsIgnoreCase("login")) {

                }
            }
        }
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
