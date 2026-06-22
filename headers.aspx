<%@ Page Language="C#" %>

<!DOCTYPE html>
<html>
<head>
    <title>SSRF Header Logger</title>
</head>
<body>

<h1>SSRF Header Logger</h1>

<p><strong>Client IP:</strong> <%= Request.UserHostAddress %></p>

<h2>Request Headers</h2>

<pre>
<%
foreach (string key in Request.Headers.AllKeys)
{
    Response.Write(key + ": " + Request.Headers[key] + "\n");
}
%>
</pre>

</body>
</html>
