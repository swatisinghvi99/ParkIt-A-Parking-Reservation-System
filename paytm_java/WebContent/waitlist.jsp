<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*" %>

<!DOCTYPE html>
<html>

<body onload=myFunction()>

<script>

function myFunction() {
    var txt;

    if (confirm("Sorry all parkings are full! Would you like to be waitlisted?")) {
        window.location.href = "waitlist2.jsp";
    } 

    else {
        window.location.href = "book.jsp";
    }

}

</script>

</body>
</html>
