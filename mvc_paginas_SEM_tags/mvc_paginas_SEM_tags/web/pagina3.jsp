<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        
        <div class="container">
            <h2>Clique nos nomes para editá-los: </h2>  
  <table id="myTable">
    <thead>
      <tr>
        <th>NOME</th>
        <th>MEDIDOR</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><div id="edit" contenteditable>Quarto da Ana</div></td>
        <td>medidor001</td>
      </tr>
      <tr>
        <td><div id="edit" contenteditable>Sala de Jantar</div></td>
        <td>medidor002</td>
      </tr>
      <tr>
        <td><div id="edit" contenteditable>Cozinha</div></td>
        <td>medidor003</td>
      </tr>
    </tbody>
  </table>
  
            <input type="button" class="button" value="Voltar!" onclick="history.back()">
            <input type="button" class= "button" value="Salvar Edições" onclick="saveEdits()"/> 
            <button onclick="addRow()">Adicionar novo medidor</button>
            <script>
                function saveEdits() {
                        var editElem = document.getElementById("edit");
                        var userVersion = editElem.innerHTML;
                        localStorage.userEdits = userVersion;
                        }
                        
                        function checkEdits() {

                            //find out if the user has previously saved edits
                            if(localStorage.userEdits!==null)
                            document.getElementById("edit").innerHTML = localStorage.userEdits;
                            }
                            
                             
                    function addRow(){
                            
                            var table = document.getElementById("myTable");

                            var rowCount = table.rows.length;
                            var row = table.insertRow(rowCount);

                           var cell1 = row.insertCell(0);
                            var element1 = document.createElement("input");
                            element1.type = "text";
                            element1.name = "nome";
                            element1.id = "edit";
                            cell1.appendChild(element1);

                            var cell2 = row.insertCell(1);
                            cell2.name = "tabela";
                            cell2.innerHTML = "medidor00"+ rowCount;
                                }



                            document.getElementById('add_btn').onclick=addRow;
            
                </script>
  
</div>

                        
    </body>
</html>
