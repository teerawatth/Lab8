<%-- 
    Document   : firebase
    Created on : 19 ส.ค. 2565, 20:57:56
    Author     : MY HP COM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Car"%>
<!DOCTYPE html>

<% Car car = (Car) session.getAttribute("car");%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab07</title>
        <script src="https://www.gstatic.com/firebasejs/8.0.0/firebase-app.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.0.0/firebase-database.js"></script>
        <script defer src="https://www.gstatic.com/firebasejs/8.10.1/firebase-firestore.js"></script>
        <style>
    a { text-decoration: none; }
  </style>
    </head>
    <body align="center">
        <p>
            <button value="Save" onclick="save_car();"><a href="addcarsuccess.jsp">Save and Back</a></button>
        </p>

        <script type="module">


            var firebaseConfig = {
                apiKey: "AIzaSyBbImP0lETSJfrlBUaY2mmnUtZp9DlwDa4",
                authDomain: "me01-cec98.firebaseapp.com",
                projectId: "me01-cec98",
                storageBucket: "me01-cec98.appspot.com",
                messagingSenderId: "1042020623137",
                appId: "1:1042020623137:web:5bb5a6eec4773771edd460"
            };


            firebase.initializeApp(firebaseConfig);


            var firebaseRef = firebase.database().ref('car');

            window.save_car = function () {
                var uid = firebase.database().ref().child('car').push().key;

                var data = {

                    car_brand: '<%= car.getBrand()%>',
                    car_model: '<%= car.getModel()%>',
                    car_maxspeed: '<%= car.getMaxspeed()%>',
                    car_year: '<%= car.getYear()%>'};



                var updates = {};
                updates['car' + uid] = data;
                firebase.database().ref().update(updates);

                alert('Car is created successfully!');
                window.location.reload();
            }


        </script>
    </body>
</html>
