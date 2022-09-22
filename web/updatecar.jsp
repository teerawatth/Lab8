<%-- 
    Document   : updatecar
    Created on : 19 ส.ค. 2565, 19:27:30
    Author     : MY HP COM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = 'model.Car'%>
<% Car car = (Car) session.getAttribute("car"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab07</title>
    </head>
    <body align="center">
        <div style="font-size: 32px">Update car</div><br>
        <form action="addnewcar">
            Car Brand : <input type="text" name="brand" value="<%= car.getBrand() %>"><br>
            Car Model : <input type="text" name="model" value="<%= car.getModel() %>"><br>
            Maxspeed : <input type="text" name="maxspeed" value="<%= car.getMaxspeed() %>"><br>
            Year of manufacture <input type="text" name="year" value="<%= car.getYear() %>"><br><br>
            <input type="submit" value="Update"/>
        </form>
    </body>
</html>
