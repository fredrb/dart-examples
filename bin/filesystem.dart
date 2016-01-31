import 'dart:io';
import 'dart:async';
import 'dart:convert';

main() async {
  File file = new File(Platform.script.toFilePath());
  print("${await (file.readAsString(encoding : ASCII))}");
}
