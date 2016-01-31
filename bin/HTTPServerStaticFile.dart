import 'dart:io';

_sendNotFound(HttpResponse res) {
  res.statusCode = HttpStatus.NOT_FOUND;
  res.close();
}

startServer(String basePath) async {
  HttpServer server  = await HttpServer.bind('localhost', 3000);

  await for (HttpRequest req in server ) {
    final String paht = req
  }
}
