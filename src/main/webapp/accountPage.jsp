<%@ page language="java"
contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="account.database.Account, user.database.User"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
    <style>
        body {
            margin: 0;
            padding: 0;
        }

        .container {
            width: 65%;
            margin: 0 auto;
            padding: 20px;
            background-color: #f0f0f0;
        }

        .account-info {
            margin-bottom: 20px;
        }

        .navigation {
            text-align: center;
        }

        .navigation button {
            padding: 5px 10px;
            margin: 0 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<%
    request.getRequestDispatcher("/updateAccountServlet").include(request, response);
    User currentUser = (User) session.getAttribute("currentUserSession");

    if (currentUser.getAccounts() == null || currentUser.accountsCount() == 0) {
        response.sendRedirect("homepage.jsp");
    }

    int currentAccountIndex = 0;
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("currentAccountIndex")) {
                currentAccountIndex = Integer.parseInt(cookie.getValue());
                break;
            }
        }
    }
    Account currentAccount = currentUser.getAccounts().get(currentAccountIndex);
%>
<div class="container">
    <div class="account-info">
        <div>
            Title: <%= currentAccount.getTitle() %>
        </div>
        <div>
            Number: <%= currentAccount.getNumber() %>
        </div>
        <div>
            Balance: <%= currentAccount.getBalance() %>
        </div>
        <a href="homePage.jsp" style="text-decoration: none">Home</a>
    </div>
    <%-- Navigation if more than one account --%>
    <div class="navigation">
        <% if (currentUser.accountsCount() > 1) { %>
            <%
                for (int i = 0; i < currentUser.accountsCount(); i++) {
                    if (i != currentAccountIndex) {
            %>
                        <button onclick="changeAccount(<%= i %>)">Account <%= i + 1 %></button>
            <%
                    }
                }
            %>
        <% } %>
    </div>
</div>
<script>
    function changeAccount(index) {
        document.cookie = "currentAccountIndex=" + index;
        location.reload();
    }
</script>
</body>
</html>