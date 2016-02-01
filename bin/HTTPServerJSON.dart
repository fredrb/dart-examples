import 'dart:io';
import 'dart:convert';

main() async {
  HttpServer server = await HttpServer.bind('localhost', 3000);

  await for (HttpRequest req in server) {
    req.response
      ..write(JSON.encode({
        "message" : "Request received"
      }))
      ..close();
  }
}