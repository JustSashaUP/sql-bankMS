<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="account.database.Account, user.database.User"
%> <%@ page import="java.util.Set" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <link rel="stylesheet" href="styles.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <title>Credit Form</title>
    <style>
      .container-credit {
        max-width: 500px;
        padding: 20px;
        margin: auto;
        height: 225px;
        margin-top: 250px;
        background-color: #A9F5A9;
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
        color: black;
        background-color: #CEF6CE;
        border: none;
        margin: 5px;
        border-radius: 7px;
      }
      table {
        width: 100%;
      }
      td {
        padding: 10px;
        color: black;
      }
      #create-button {
        background-color: rgb(252, 220, 9);
        padding: 25px;
        color:black;
        margin: 10px;
        width: 150px;
        border: none;
        font-size: large;
        font-family: system-ui;
      }
      #create-button:hover {
        background-color: rgb(247, 231, 128);
      }
    </style>
  </head>
  <body>
  <div class="main-container-low-nav">
      <header>
          <div class="container">
              <div class="logo-container">
                  <img src="sources/logo.png" alt="🏦" class="logo">
                  <h1>Bank</h1>
              </div>
              <nav>
                  <ul>
                      <li><a href="index.jsp">Main Page</a></li>
                      <li><a href="homePage.jsp">Home Page</a></li>
                      <li><a href="accountPage.jsp">Account Page</a></li>
                  </ul>
              </nav>
          </div>
      </header>
      </div>
      <form class="container-credit" action="createCreditServlet" method="post">
        <table>
          <tr>
            <td><label for="amount">Amount*</label></td>
            <td>
              <input id="amount" name="amount" type="amount" placeholder="max=1000000.00" required />
            </td>
          </tr>
          <tr>
            <td><label for="term">Term*</label></td>
            <td>
              <input id="term" name="term" type="text" placeholder="12" required />
            </td>
          </tr>
        </table>
        <input type="submit" value="Create" id="create-button" />
      </form>
  </body>
</html>