<%-- 
    Document   : addcarsuccess
    Created on : 19 ส.ค. 2565, 17:22:41
    Author     : MY HP COM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = 'model.Car'%>

<% Car car = (Car) session.getAttribute("car");%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab07</title>
        <style>
            a {
                text-decoration: none;
            }
        </style>
    </head>
    <body align="center">
        <div style="font-size: 32px">Add car success</div><br>

        Car Brand : <%= car.getBrand()%> <br>
        Car Model :<%= car.getModel()%> <br>
        Maxspeed : <%= car.getMaxspeed()%> <br>
        Year of manufacture : <%= car.getYear()%> <br><br>
        <button><a href="updatecar.jsp">Edit</a></button>
        <button><a href="addnewcar.html">Back to add car</a></button><br><br>
        <button><a href="firebase.jsp">Save to firebase and back to addcar</a></button>


</html>
