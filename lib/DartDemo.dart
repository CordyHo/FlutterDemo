// 智能类型变量
var num1 = 1;
int num2 = 2;
double num3 = 3.0;
// num类型 抽象类，子类有int、double
num num4 = 4;
const num5 = 5;
String str1 = 'Hello';
String str2 = 'Dart';

main() {
  //final 运行时常量
  final myDartClass = MyDartClass();
  //const 编译时常量
  const num = 1;
  print('$str1 $str2 $num ${myDartClass.num5} ${MyDartClass.num6}');
}

class MyDartClass {
  final num5 = 4;
  static const num6 = 5;
}
