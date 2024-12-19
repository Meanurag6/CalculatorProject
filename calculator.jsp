<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calculator</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .calculator {
            margin-top: 50px;
        }
        .calculator .form-control {
            font-size: 24px;
            text-align: right;
        }
        .calculator button {
            font-size: 24px;
        }
    </style>
</head>
<body>
    <div class="container calculator">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h2 class="text-center">Calculator</h2>
                <form action="calculate" method="post">
                    <div class="form-group">
                        <input type="text" id="num1" name="num1" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <select name="operation" class="form-control">
                            <option value="add">Add</option>
                            <option value="subtract">Subtract</option>
                            <option value="multiply">Multiply</option>
                            <option value="divide">Divide</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <input type="text" id="num2" name="num2" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-success btn-block">Calculate</button>
                    </div>
                </form>
                <% if (request.getAttribute("result") != null) { %>
                    <div class="alert alert-info">
                        Result: <%= request.getAttribute("result") %>
                    </div>
                <% } %>
                <% if (request.getAttribute("error") != null) { %>
                    <div class="alert alert-danger">
                        Error: <%= request.getAttribute("error") %>
                    </div>
                <% } %>
            </div>
        </div>
    </div>
</body>
</html>
