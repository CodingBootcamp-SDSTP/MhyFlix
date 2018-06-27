window.onload = () => {
	/* Login field */
	document.getElementById("login").onclick = () => {
		alert("hello");
	};

	document.getElementById("signup").onclick = () => {
		console.log("Change");
		window.location = "signup.html";
	};
};
