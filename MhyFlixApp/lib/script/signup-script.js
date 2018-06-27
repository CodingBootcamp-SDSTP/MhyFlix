window.onload = () => {
	document.getElementById("create-account").onclick = () => {
		rq.onreadystatechange = () => {
			if(rq.readyState == 4) {
				alert("new Person added");
			}
		};
		rq.open("POST", "/MhyFlixApp/CreateAccount", true);
		rq.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		rq.send("firstname="+fname+"&lastname="+lname+"&age="+age+"&username="+un+"&password="+pw+"&email="+ email+"&location="+loc+"&food="+food+"&place="+en+"&usertype="+user);
		document.getElementById("loadingIcon").classList.add("fa", "fa-spin", "fa-spinner");
	};
};
