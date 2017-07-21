import * as http from "http"

const server = http.createServer(function (req, res) {
  console.log("got a request!")
  res.statusCode = 200
  res.setHeader("Content-Type", "text/plain")
  res.end("Hello Docker\n")
})

server.listen(8080, function () {
  console.log("running the server")
})
