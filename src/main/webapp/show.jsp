<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.ToDoList.model.Todo" %>
<html>
<head>
    <title>ToDo List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e6f2ff;
            color: #333;
            margin: 20px;
        }
        .container {
            max-width: 800px;
            margin: auto;
            background: #fff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #004d99;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #b3d9ff;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f0f8ff;
        }
        tr:hover {
            background-color: #b3d9ff;
        }
        </style>
</head>
<body>
    <h2>All ToDos</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Task</th>
            <th>Status</th>
        </tr>
        <%
            List<Todo> todos = (List<Todo>) request.getAttribute("todos");
            if (todos != null) {
                for (Todo todo : todos) {
        %>
        <tr>
            <td><%= todo.getTid() %></td>
            <td><%= todo.getTname() %></td>
            <td><%= todo.getTstatus() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="3">No todos found.</td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>