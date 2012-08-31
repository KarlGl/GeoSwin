var d;
d=calc(<%=@location.lat%>,<%=@location.long%>,<%=@slat%>,<%=@slong%>);
//alert(d);
$('#calc').text("You are " + d + " km from Swinburne University.");