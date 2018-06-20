window.onload = () => {
	document.getElementById("login").onclick = () => {
		alert("hello");
	};

	document.getElementById("signup").onclick = () => {
		console.log("Change");
		window.location = "/signup";
	};
};
