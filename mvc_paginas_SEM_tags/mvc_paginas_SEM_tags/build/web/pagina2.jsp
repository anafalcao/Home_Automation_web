<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="dto.Parametros"%>

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
 
</div>
    <center>
        <br>
        <br>
        
         <button id="myButton" class="button" >EDITAR MEDIDORES</button>

                    <script type="text/javascript">
                        document.getElementById("myButton").onclick = function () {
                            location.href = "pagina3_teste.jsp";
                        };
                    </script> 
         <form>
            <input type="button" value="Voltar!" onclick="history.back()">
        </form>
        <form method="GET" action="controller">
            <input type="hidden"
                   name="nomeDoTratadorDePagina"
                   value="mvc.pagehandlers.Tratador_pagina2_jsp" />

            <h2>Medidor 01 - Quarto da Ana</h2> 
            <br/>    
            <table align="center" cellpadding="5" cellspacing="5" border="1">
                <tr bgcolor="#1abc9c">
                <td><b>Data - Hora</b></td>
                <td><b>Umidade</b></td>
                <td><b>Temperatura </b></td>
                </tr>

                <%
                    ArrayList<Parametros> listaDeRecords = (ArrayList<Parametros>) request.getAttribute("LISTA_DE_RECORDS");
                    for (Parametros param : listaDeRecords) {
                %>    
                <tr>
                 
                     <td align="center" style="border:1px solid black;width:170px;border-collapse:collapse;">
                        <%= param.getDataHora()%>
                        
                    </td>
                    <td align="center" style="border:1px solid black;width:70px;border-collapse:collapse;">
                        <%= param.getUmidade()%>
                    </td>
                    <td align="center" style="border:1px solid black;width:70px;border-collapse:collapse;">
                        <%= param.getTemperatura()%>
                
                    </td>                       
                </tr>
                
                <% }%>
            </table>
            <br>    
            <br>    

        </form>

        <form>
            <input type="button" value="Voltar!" onclick="history.back()">
        </form>
    </center>
</body>
</html>
