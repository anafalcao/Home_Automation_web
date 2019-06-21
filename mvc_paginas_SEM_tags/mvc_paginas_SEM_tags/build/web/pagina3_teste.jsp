<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="dto.Parametros"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Automation</title>
        <link rel="stylesheet" type ="text/css" media="all" href="CSS/newcss.css">
    </head>
<body onload="checkEdits()">
    <div class="header">
            <h1>Todos os medidores</h1>

        </div>
                   <input type="hidden"
                   name="nomeDoTratadorDePagina"
                   value="mvc.pagehandlers.TratPage3_teste" />
<table id="myTable">
    <form method="GET" action="controller">
<tr>

</tr>
<tr>
<td><b>Nome</b></td>
<td><b>Tabela</b></td>

</tr>
<%

Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/tempumidade", "tempumidade", "tempumidade");
Statement statement=connection.createStatement();
String sql ="SELECT * FROM medidores";

ResultSet resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

    <td><div id="edit" contenteditable><%=resultSet.getString("nome") %><div></td>
    <td><%=resultSet.getString("tabela") %></td>

<% } %>
      
</tr>

</table>

<input type="button" class="button" value="Voltar!" onclick="history.back()">
<input type="button" class= "button" value="Salvar Edições" onclick="saveEdits()"/> 

<button id ="add_btn" class ="button" onclick="addRow()">Adicionar novo medidor</button>
</form>
                        
</body>
</html>