import 'dart:io';

main() async {
  ProcessResult results = await Process.run('ls', ['-l']);
  print(results.stdout);
}