<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Hello World JSP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e6f2ff;
            color: #333;
            margin: 20px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background: #fff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1, h2 {
            color: #004d99;
            text-align: center;
        }
        form {
            margin-bottom: 20px;
            padding: 15px;
            border: 1px solid #b3d9ff;
            border-radius: 5px;
            background-color: #f0f8ff;
        }
        th {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            font-weight: bold;
            color: #003366;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #66b3ff;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"], input[type="button"] {
            background-color: #007bff; /* Blue button */
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        input[type="submit"]:hover, input[type="button"]:hover {
            background-color: #0056b3;
        }
        </style>
  </head>
  <body>
    <h1>Add Task</h1>
    <form action="addTodo">
      <th>Enter the task Id</th>
      <input type="text" name="tid" /><br />
      <th>Enter the task Name</th>
      <input type="text" name="tname" /><br />
      <th>Enter the task Status-(completed/pending)</th>
      <input type="text" name="tstatus" /><br />
      <input type="submit" /><br />
    </form>

    <h1>Delete Task</h1>
    <form action="deleteTodo">
      <th>Enter the task Id to delete the task</th>
      <input type="text" name="tid" /><br />
      <input type="submit" value="Delete Task" /><br />
    </form>
    <h1>Update Task Status</h1>
    <form action="updateTodo">
      <th>Enter the task Id to update the task status</th>
      <input type="text" name="tid" /><br />
      <th>Enter the new status-(completed/pending)</th>
      <input type="text" name="tstatus" /><br />
      <input type="submit" value="Update Status" /><br />
    </form>
    <h1>View All Tasks</h1>
       <input type="button" value="Show All Tasks" onclick="window.location.href='showTodos'"/>
  </body>
</html>
