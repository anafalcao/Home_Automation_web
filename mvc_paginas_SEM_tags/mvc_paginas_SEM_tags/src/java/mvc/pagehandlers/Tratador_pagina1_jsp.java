package mvc.pagehandlers;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import mvc.modelo.ConversorDeCambio;
import mvc.IFTratadorDePaginas;
import dto.Parametros;
import java.sql.SQLException;
import mvc.modelo.AcessoBD;

public class Tratador_pagina1_jsp implements IFTratadorDePaginas {

    @Override
    public String processar(HttpServletRequest request, HttpServletResponse response) {
        String jspURL = "pagina2.jsp";

        String medidor = request.getParameter("medidor");
        String periodo = request.getParameter("periodo");
        String data = request.getParameter("data");
        String nome = request.getParameter("nome");
        String tabela = request.getParameter("tabela");

        try {
   

            ArrayList<Parametros> resultado = new AcessoBD().getParametros(medidor, periodo, data);
            request.setAttribute("LISTA_DE_RECORDS",resultado);
            
            ArrayList<Parametros> resultado2 = new AcessoBD().getMedidores(nome, tabela);
            request.setAttribute("LISTA_DE_MEDIDORES",resultado2);

            
        } catch (SQLException e) {

        }

        return jspURL;
    }
    
    @Override
    public String processarDeNovo(HttpServletRequest request, HttpServletResponse response) {
        String jspURL3 = "pagina3_teste.jsp";
        //String serialno_medidores = request.getParameter("serialno_medidores");
        String nome = request.getParameter("nome");
        String tabela = request.getParameter("tabela");
        
        try {
   
                
            ArrayList<Parametros> resultado2 = new AcessoBD().getMedidores(nome, tabela);
            request.setAttribute("LISTA_DE_MEDIDORES",resultado2);

            
        } catch (SQLException e) {

        }
        
        
        return jspURL3;
}
}