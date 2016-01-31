import 'dart:io';
import 'dart:async';

main() async {
  List result = [];
  int semicolon = ';'.codeUnitAt(0);

  Stream<List<int>> stream = new File(Platform.script.toFilePath()).openRead();

  await for(var data in stream) {
    for (int i = 0; i < data.length; i++) {
      result.add(data[i]);
      if (data[i] == semicolon) {
        print(new String.fromCharCodes(result));
        return;
      }
    }
  }
}