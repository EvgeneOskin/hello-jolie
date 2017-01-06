include "string_utils.iol"
include "hellointerface.iol"

inputPort HelloService {
  Location: "socket://localhost:8000"
  Protocol: jsonrpc
  Interfaces: HelloInterface
}

main {
  hello (who) (response) {
    response = "Hello, " + who + "!"
  }
}
