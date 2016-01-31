import 'dart:io';

_sendNotFound(HttpResponse res) {
  res.statusCode = HttpStatus.NOT_FOUND;
  res.close();
}

startServer(String basePath) async {
  HttpServer server  = await HttpServer.bind('localhost', 3000);

  await for (HttpRequest req in server ) {
    final String path = req.uri.toFilePath();

    // use regex
    final String resultPath = path == '/' ? '/index.html' : path;
    final File file = new File('${basePath}${resultPath}');

    if (await file.exists()) {
      try {
        await file.openRead().pipe(req.response);
      } catch(e) {
        print(e);
      }
    } else {
      _sendNotFound(req.response);
    }
  }
}

main() {
  File script = new File(Platform.script.toFilePath());
  startServer(script.parent.path);
}
