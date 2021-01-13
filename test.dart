import 'dart:mirrors';

class Test {
  int a = 5;

  static int s = 5;

  final int _b = 6;

  int get b => _b;

  int get c => 0;
}

void main() {
  var t = new Test();
  var fields = reflect(t);
  var classMirror = fields.type;
  var list = classMirror.declarations.values;
  List lst = [];
  for (var i in list) {
    var name = MirrorSystem.getName(i.simpleName);
    lst.add(name);
  }
  print(lst);
}