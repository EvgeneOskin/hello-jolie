include "console.iol"
include "hellointerface.iol"

outputPort HelloService {
  Location: "socket://localhost:8000"
  Protocol: jsonrpc
  Interfaces: HelloInterface
}

main {
  hello@HelloService ("world") (response);
  println@Console(response)()
}
