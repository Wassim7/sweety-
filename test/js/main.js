document.addEventListener("scroll", function() 
{
	if(document.getElementById("thevoice").getBoundingClientRect().top <= 0 && document.getElementById("entete").getBoundingClientRect().bottom < 0)
	{
		document.getElementById("thevoice").classList.add("sticky");
	}
	else
	{
		document.getElementById("thevoice").classList.remove("sticky");
	}
	console.log(document.getElementById("thevoice").getBoundingClientRect().top);
	console.log("entete : ", document.getElementById("entete").getBoundingClientRect().top);

})
