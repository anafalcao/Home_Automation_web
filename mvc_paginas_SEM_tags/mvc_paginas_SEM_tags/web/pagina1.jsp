<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Automation</title>
        <link rel="stylesheet" type ="text/css" media="all" href="CSS/newcss.css">
       </head>     
    <body>
        <div class="header">
  <h1>Home Automation</h1>
  <p>Escolha dentre as opções:</p>
</div>
        <center> 
        <br>
       
        <form method="GET" action="controller">
            
            <input type="hidden"
                   name="nomeDoTratadorDePagina"
                   value="mvc.pagehandlers.Tratador_pagina1_jsp" />
            <div class="centerDiv">
            
                <h2>    
             
                     <br>
                    Medidor: <select name="medidor">
                            <option value="medidor001" selected>Medidor 01</option> 
                    </select>
                     <br> <br>
 
                     Período:<select name="periodo">
                      <option value="dia" selected>Dia</option>
                      <option value="semana">Semana</option>
                      <option value="mes">Mês</option>
                      <option value="ano">Ano</option>
                    </select>
                     <br> <br>
                     Data Final: <input type="date" name="data" value="2019-05-13">
                     <br> <br>
                     Tabela/Gráfico:<select name="tabela">
                      <option value="tabela" selected>Tabela</option>
                    </select>
                     </tr>
                      
                    <br><br>
                    <input type="submit" class="button" name="botaoSubmit" value="ENVIAR">
                   
                    </h2>
                            
            
          
            </h2>
            
            
        </form>
        </div>
            
       <button id="myButton" class="button" >EDITAR MEDIDORES</button>

                    <script type="text/javascript">
                        document.getElementById("myButton").onclick = function () {
                            location.href = "pagina3.jsp";
                        };
                    </script> 
                    
        
       </center> 
    </body>
</html>


