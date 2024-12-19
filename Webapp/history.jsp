<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calculation History</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2 class="text-center">Calculation History</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Expression</th>
                    <th>Result</th>
                    <th>Created At</th>
                </tr>
            </thead>
            <tbody>
                <%-- Retrieve and display calculation history from the database --%>
                <%
                    // Import necessary classes
                    import com.calculator.dao.CalculationDAO;
                    import com.calculator.model.Calculation;
                    import java.util.List;

                    // Fetch calculation history
                    CalculationDAO dao = new CalculationDAO();
                    List<Calculation> calculations = dao.getAllCalculations();

                    // Display calculations
                    for (Calculation calc : calculations) {
                %>
                <tr>
                    <td><%= calc.getId() %></td>
                    <td><%= calc.getExpression() %></td>
                    <td><%= calc.getResult() %></td>
                    <td><%= calc.getCreatedAt() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <a href="index.jsp" class="btn btn-primary">Back to Home</a>
    </div>
</body>
</html>
