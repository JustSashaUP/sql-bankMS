  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
      pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
  <head>
    <title>Registration Form</title>
    <style>
      .container {
        max-width: 500px;
        padding: 20px;
        margin: auto;
        height: 225px;
        margin-top: 225px;
        background-color: rgb(63, 77, 136);
        border-radius: 5px;
        box-shadow: 0 5px 5px rgba(0, 0, 0, 0.1);
        justify-content: center;
        align-items: center;
      }
      form {
        font-family: system-ui;
        font-size: x-large;
      }
      input {
        padding: 10px;
        color: white;
        background-color: rgb(43, 60, 126);
        border: none;
        margin: 5px;
        border-radius: 7px;
      }
      table {
        width: 100%;
      }
      td {
        padding: 10px;
        color: aliceblue;
      }
      #login-button {
        background-color: rgb(252, 220, 9);
        padding: 25px;
        color:black;
        margin: 10px;
        width: 150px;
        border: none;
        font-size: large;
        font-family: system-ui;
      }
      #login-button:hover {
        background-color: rgb(247, 231, 128);
      }
    </style>
    </head>
    <body style="background-color: rgb(112, 167, 230)">
      <form class="container" action="loginServlet" method="post">
        <table>
          <tr>
            <td><label for="email">Email*</label></td>
            <td>
              <input id="email" name="email" type="email" required />
            </td>
          </tr>
          <tr>
            <td><label for="password">Password*</label></td>
            <td>
              <input id="password" name="password" type="password" required />
            </td>
          </tr>
        </table>
        <input type="submit" value="Login" id="login-button" />
      </form>
      <%
        String errorMessage = (String) request.getAttribute("ErrorMessage");
        if (errorMessage != null) {
      %>
              <script>
                alert("<%= errorMessage %>")
              </script>
              <% } %>
    </body>
</html>