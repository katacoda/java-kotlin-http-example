package katacoda

import org.wasabifx.wasabi.app.AppServer
import java.net.InetAddress;


fun main(args: Array<String>) {
  val server = AppServer()
  val ip = InetAddress.getLocalHost()
  val hostname = ip.getHostName()

  server.get("/", {
    response.send("HTTP request processed by " + hostname + "\n") 
  })

  server.get("/machine", {
    response.send(hostname + "\n") 
  })

  server.get("/health", {
    response.send("OK" + "\n") 
  })
  server.start()
}
