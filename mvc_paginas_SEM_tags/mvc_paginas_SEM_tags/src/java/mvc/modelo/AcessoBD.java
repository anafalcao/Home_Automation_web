/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.modelo;

import dto.Parametros;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.util.ArrayList;

/**
 *
 * @author User
 */
public class AcessoBD {
    ResultSet resultSet;
    Statement stmt;
    Connection con;
    ArrayList<Parametros> parametros_lista;
    Parametros par = new Parametros();
    ArrayList<Parametros> medidores_lista;
    Parametros med = new Parametros();
    

    public ArrayList<Parametros> getParametros(String medidor, String periodo, String datahora) throws SQLException{
        
        con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/tempumidade", "tempumidade", "tempumidade");
        stmt=con.createStatement();
        
        String where = "";
        String ano = datahora.split("-")[0];
        String mes;
        String dia;
        
        switch(periodo) {
            case "ano":
                 where = "datahora >= '" + ano + "-01-01'::date " +
                          "AND datahora < ('" + ano +"-12-31 23:59:59') LIMIT 10;";
                 break;
            case "mes": 
                mes = datahora.split("-")[1];
                dia = datahora.split("-")[2];
                where = "datahora >= ('" + ano + "-"+ mes +"-"+ dia +"'::date - '1 month'::interval) " +
                        "AND datahora < ('" + ano +"-"+ mes +"-"+ dia +" 23:59:59') LIMIT 10;";
                break;
            case "dia": 
                mes = datahora.split("-")[1];
                dia = datahora.split("-")[2];
                where = "datahora >= '" + ano + "-"+ mes +"-"+ dia +"'::date " +
                          "AND datahora < ('" + ano +"-"+ mes +"-"+ dia +" 23:59:59') LIMIT 10;";
                break;
            case "semana": 
                mes = datahora.split("-")[1];
                dia = datahora.split("-")[2];
                where = "datahora >= ('" + ano + "-"+ mes +"-"+ dia +"'::date - '7 days'::interval) " +
                          "AND datahora < ('" + ano +"-"+ mes +"-"+ dia +" 23:59:59') LIMIT 10;";
                break;
        }
        
        String sql = "SELECT * FROM " + medidor + " where " + where;
        
        resultSet = stmt.executeQuery(sql);
        parametros_lista = new ArrayList();
            while(resultSet.next()){
                
            
            par = new Parametros();
                                
            par.setMedidor(resultSet.getString("medidor")); 
            par.setTemperatura(resultSet.getString("temperatura")); 
            par.setDataHora(resultSet.getString("datahora")); 
            par.setUmidade(resultSet.getString("umidade")); 
            parametros_lista.add(par);
            }
    return parametros_lista;
    }   
    
    public ArrayList<Parametros> getMedidores(String nome, String tabela) throws SQLException{
    
    con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/tempumidade", "tempumidade", "tempumidade");
    stmt=con.createStatement();
    
    String sql = "SELECT * FROM medidores";
        
        resultSet = stmt.executeQuery(sql);
        medidores_lista = new ArrayList();
            while(resultSet.next()){
                
            
            med = new Parametros();
            med.setNome(resultSet.getString("nome")); 
            med.setTabela(resultSet.getString("tabela")); 
          
            medidores_lista.add(med);
            }
    return medidores_lista; 
    }
  
    
    
    public void criarNovoMedidor(String nome) throws SQLException{
        con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/tempumidade", "tempumidade", "tempumidade");
        stmt=con.createStatement();
      
        String sql = "CREATE TABLE "+ nome+ " AS medidor001; ";
        
        resultSet = stmt.executeQuery(sql);
        
    }
   
}


