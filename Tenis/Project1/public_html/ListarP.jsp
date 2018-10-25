<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>
Hello World
</title>
</head>
<body>
<h2>
The current time is: 
</h2>

USUARIO:<%= session.getAttribute("ini.usu")%>

<table  cellspacing="2" cellpadding="1" border="1" width="100%">
  <tr>
      <td><b>PARTIDO</b></td>
      <td><b>FASE</b></td>
      <td><b>MODALIDAD</b></td>
      <td><b>ARBITRO</b></td>
      <td><b>GENERO</b></td>
      <td><b>LUGAR</b></td>
  </tr>

  <logic:iterate id="tabla" indexId="index" name="muestrapartido" property="tabla">
    <tr>
      <td>
        <bean:write name="tabla" property="id_partido" />
      </td>
    </tr>
  </logic:iterate>


  
</table></body>
</html>
