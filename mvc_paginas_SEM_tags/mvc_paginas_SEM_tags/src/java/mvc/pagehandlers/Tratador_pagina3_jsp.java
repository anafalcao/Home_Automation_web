package mvc.pagehandlers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mvc.IFTratadorDePaginas;

public class Tratador_pagina3_jsp implements IFTratadorDePaginas{
    public String processar(HttpServletRequest request, HttpServletResponse response){
        
        return "pagina1.jsp";
    }

    @Override
    public String processarDeNovo(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
