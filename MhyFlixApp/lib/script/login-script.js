window.onload = () => {
	/* Login field */
	// document.getElementById("login").onclick = () => {
	// 	alert("hello");
	// };

	// document.getElementById("signup").onclick = () => {
	// 	console.log("Change");
	// 	window.location = "signup.html";
	// };

	/* Create account field */
	document.getElementById("create-account").onclick = () => {
		document.getElementById("loadingIcon").classList.add("fa", "fa-spin", "fa-spinner");
		// rq.onreadystatechange = () => {
		// 	if (rq.readyState == 4) {
		// 		alert("new Person added");
		// 	}
		// };
		// rq.open("POST", "/budgetmealapp/addperson", true);
		// rq.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		// rq.send("firstname=" + fname + "&lastname=" + lname + "&age=" + age + "&username=" + un + "&password=" + pw + "&email=" +
		// 	email + "&location=" + loc + "&food=" + food + "&place=" + en + "&usertype=" + user);
	};
};
