import 'dart:async';

main() {
  new Timer(new Duration(seconds : 2), () => print('timer ended'));
  print('main ended');
}