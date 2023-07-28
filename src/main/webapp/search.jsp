<%@ page import="java.util.ArrayList" %>
<%@ page import="com.primary.SearchResult" %>
<html>
<head>
    <title>Search Results</title>
    <link rel = "stylesheet" type="text/css" href="styles.css">
</head>
<body>
<h1>Simple Search Engine</h1>
<form action = "Search">
    <input type = "text" name = "keyword">
    <button type = "submit">search</button>
</form>
<form action = "History">
    <button type = "submit">history</button>
</form>
    <table border= 2 class="resultTable">
        <tr>
            <th>Title</th>
            <th>Link</th>
        </tr>
        <%
            ArrayList<SearchResult> results = (ArrayList<SearchResult>) request.getAttribute("results");
            for(SearchResult result: results){
        %>
        <tr>
            <td><% out.println(result.getTitle()); %></td>
            <td><a href="<% out.println(result.getLink()); %>"><% out.println(result.getLink()); %></a></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
