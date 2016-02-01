import 'dart:convert';

class Structure {
  int a;
  String b;
  List<String> c;

  String toJson() {
    return JSON.encode({'a' : this.a, 'b' : this.b, 'c' : this.c});
  }

}

main() {
  var struct = new Structure();

  struct.a = 1;
  struct.b = "test";
  struct.c = ["a", "b"];

  print(struct.toJson());

}