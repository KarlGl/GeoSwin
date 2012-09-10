var d;
d=calc(<%=@location.lat%>,<%=@location.long%>,<%=@slat%>,<%=@slong%>);
$('#calc').text("You are " + d + " km from Swinburne University.");

$('#first-row').after("<tr><td><%= @location.long %></td><td><%= @location.lat %></td><td><small><%= @location.created_at.created_at.ctime %></small></td>  </tr>");