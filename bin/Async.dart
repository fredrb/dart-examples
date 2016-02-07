import 'dart:async';

foo() async => new Future(() => new Timer(new Duration(seconds: 2), () => print("Foo completed")));

main() async {
  foo();
  foo();
  foo();
}