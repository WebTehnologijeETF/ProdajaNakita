function Sakrij()
{	
	var a=document.getElementById("KategorijeMeni");
	var b=document.getElementById("Nakit");
	console.log(a.style.visibility);
	if(a.classList.contains("hidden"))
	{
		a.style.visibility="visible";
		a.className="";
		
		b.innerHTML="▲ KATEGORIJE";
		

	}
	else{
		a.className="hidden";
	b.innerHTML="▼ KATEGORIJE";
	a.style.visibility="hidden";
	}
}

function Sakrijbizuterija()
{	
	var a=document.getElementById("NakitBizuterija");
	var b=document.getElementById("Nakit");
	console.log(a.style.visibility);
	if(a.classList.contains("hidden"))
	{
		a.style.visibility="visible";
		a.className="";
		
		b.innerHTML="▲ Bizuterija";
		

	}
	else{
		a.className="hidden";
	b.innerHTML="▼ Bizuterija";
	a.style.visibility="hidden";
	}
}