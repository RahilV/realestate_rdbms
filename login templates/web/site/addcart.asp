<%@language="vbscript"%>
<%option explicit%>
<% dim pid,con,rs
        set con=nothing
        set con=Server.CreateObject("ADODB.Connection")
		     dim i
        for i=1 to Request.QueryString("id").Count
            pid=Request.QueryString("id")(i)
        next
        con.Open ("Provider=Microsoft.Jet.OLEDB.4.0;" & "Data Source=C:\\inetpub\wwwroot\Ibex\users.mdb")
        Set rs=Server.CreateObject("ADODB.RecordSet")
        dim sql
        sql="select * from cart where email='"&session("name")&"';"
        set rs=con.Execute(sql)
        do while not rs.EOF
            if (pid-rs("pid")=0) then        
                    response.redirect("cart.asp") 
            end if  
        rs.MoveNext
        loop 
        sql="insert into cart values("&pid&",1,'"&session("name")&"');"
        set rs=con.Execute(sql)
		Response.redirect("cart.asp")
%>