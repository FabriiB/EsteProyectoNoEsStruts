<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
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
Los jugadores registrados se muestran a continuacion
</h2>
USUARIO:<%= session.getAttribute("ini.usu")%>
<html:form action="/listaj">
<table  cellspacing="2" cellpadding="1" border="1" width="100%" >
<tr>
    <td align="center" >Codigo Jugador</td>
    <td>Codigo Equipo</td>
    <td>Codigo Entrenador</td>
    <td>Nombre Jugador</td>
    <td>Apellido Jugador</td>
    <td>Genero</td>
    <td>Ganacia</td>
</tr>
<logic:iterate id="tabla" indexId="index" name="muestraj" property="tabla">
<tr>
    <td><bean:write name="tabla" property="codigoj" /></td>
    <td><bean:write name="tabla" property="codigoeq" /></td>
    <td><bean:write name="tabla" property="codigoe" /></td>
    <td><bean:write name="tabla" property="nomj" /></td>
    <td><bean:write name="tabla" property="apj" /></td>
    <td><bean:write name="tabla" property="genj" /></td>
    <td><bean:write name="tabla" property="ganaj" /></td>
</tr>
</logic:iterate>
</table>
</html:form>
</body>
</html>
