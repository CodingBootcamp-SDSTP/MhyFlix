const http = require("http");
const StaticServer = require("node-static").Server;
var file = new StaticServer("./public");
var handler = {};

handler["/"] = (req, res) => {
	file.serve(req, res)
};

handler["/signup"] = (req, res) => {
	file.serveFile("signup.html", 200, (err) => {
		if (err) throw err;
	}, req, res)
};

handler["/vid"] = (req, res) => {
	file.serveFile("video.html", 200, (err) => {
		if (err) throw err;
	}, req, res)
};

handler["/lib"] = (req,res) => {
	file.serveFile(req.url, 200, (err) => {
		if(err) throw err;
	}, req, res);
};

handler["/video"] = (req,res) => {
	file.serveFile(req.url, 200, (err) => {
		if(err) throw err;
	}, req, res);
};

handler["/login"] = (req, res) => {
	if(req.method == "POST") {

	}
	else if(req.method == "GET") {
		
	}
};

var serverFunction = (request, response) => {
	let link = request.url.match('^(\/login|\/)?([a-z0-9]*)')[0];
	if(handler[link]) {
		handler[link](request, response);
	}
	else {
		response.writeHead(404, {});
		response.end("Error 404: Page not found");
	}
};

http.createServer(serverFunction).listen(7200);
console.log("Node Server Running...");
