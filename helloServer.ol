include "string_utils.iol"
include "hellointerface.iol"

inputPort HelloService {
  Location: "socket://localhost:8000"
  Protocol: jsonrpc
  Interfaces: HelloInterface
}

execution{ concurrent }

main {
  hello (who) (response) {
    response = "Hello, " + who + "!"
  }
}
