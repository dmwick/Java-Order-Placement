<%-- 
    Document   : newjsptest
    Created on : Jul 15, 2021, 10:49:45 AM
    Author     : dhanush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <form class="form-basic" method="post" action="MultipleForm">
            <div class="form-title-row">
                <label><span>
                        language
                    </span>
                    <input type="checkbox" name="chec" value="java">Java
                    <input type="checkbox" name="chec" value="php">PHP
                    <input type="checkbox" name="chec" value="asp">asp
                </label>
            </div>
            <div>
                <input type="submit" name="btn_submit" value="Submit">
            </div>
        </form>
    </body>
</html>
