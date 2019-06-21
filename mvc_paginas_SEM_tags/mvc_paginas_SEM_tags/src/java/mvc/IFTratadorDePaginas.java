package mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IFTratadorDePaginas {
    public String processar(HttpServletRequest request,
                            HttpServletResponse response);
    
    public String processarDeNovo(HttpServletRequest request,
                            HttpServletResponse response);
}
