function validate(){
    var a= document.forms["Form"]["txt"].value;
    {
 	if(a==""){
      alert("Title is requried");
      document.Form.txt.focus();
      return false;	  
}
	if((a<=2) ||(a>=65)){
	  alert("Title should have 2 to 65 charecters");
	  document.Form.txt.focus();
	  return false;
}
}
	var b= document.forms["Form"]["price"].value;
	{
	if(b==""){
      alert("price  is requried");
      document.Form.price.focus();
      return false;
}
	var r=/[^0-9 /.]/
	if( r.test(b)){
	  alert("Price has to be a number");
	  document.Form.price.focus();
	  return false;
}
}
	var c= document.forms["Form"]["dol"].value;
    if(c==""){
	  alert("Date of launch is required");
	  document.Form.dol.focus;
	  return false;
	}
}	