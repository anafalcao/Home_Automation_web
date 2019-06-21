package mvc.pagehandlers;

import dto.Parametros;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mvc.IFTratadorDePaginas;

public abstract class TratPag3_teste implements IFTratadorDePaginas{
    @Override
    public String processarDeNovo(HttpServletRequest request, HttpServletResponse response){
        
        
        return "pagina1.jsp";
    }
   
   
    }

    
