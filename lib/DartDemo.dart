// 智能类型变量
var num1 = 1;
int num2 = 2;
late double num3;
// num类型 抽象类，子类有int、double
num num4 = 4;
const num5 = 5;
String? str1 = 'Hello';
String str2 = 'Dart';
//不指定类型集合
var list1 = ['鐘嵐珠', 16, true];
//指定类型集合
const list2 = <dynamic>[];
final List<int>? list3 = [];
//固定长度的集合，第一个参数是长度，第二个是元素，元素集合就是 ["鐘嵐珠"，"鐘嵐珠"]
List list4 = List.filled(2, "鐘嵐珠");

void main() {
  //final 运行时常量
  final myDartClass = MyDartClass();
  const int? cddd = 4;
  print(cddd);
  //const 编译时常量
  const num = 1;
  print('$str1 $str2 $num ${myDartClass.num5} ${MyDartClass.num6}');
  doSomeChange(list1, str1, myDartClass);
  list3?.add(0);
  list3?[0] = 1;
  print(list1);
  print(list3);
  print(list4);
}

void doSomeChange(List list, String? str, MyDartClass myDartClass) {
  list.add('如果list1是const常量，则无法增删修改元素');
  print(list == list1);
  str1 = null;
  print("是否empty = ${str1?.trim().isEmpty}");
  str = 'NO';
  myDartClass.num7 = 8;
  print("$str $str1 ${str == str1} ${myDartClass.num7}");
}

class MyDartClass {
  final num5 = 4;
  static const num6 = 5;
  num num7 = 7;
}
