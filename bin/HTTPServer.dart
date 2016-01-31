import 'dart:io';

main() async {
  HttpServer server = await HttpServer.bind('localhost', 3000);

  await for (HttpRequest req in server) {
    req.response.write('Hello, world');
    req.response.close();
  }
}