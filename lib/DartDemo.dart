/// 智能类型变量
var num1 = 1;

/// 私有变量
int _num2 = 2;
late double num3;

/// num类型 抽象类，子类有int、double
num num4 = 4;

///const 编译时常量
const num5 = 5;

String? str1 = 'Hello';
String str2 = 'Dart';

///不指定类型集合
var list1 = [45455, '鐘嵐珠', 16, true, if (num5 == num5) '表达式'];

///指定类型集合
const list2 = <dynamic>[];
List<int>? list3;

///固定长度的集合，第一个参数是长度，第二个是元素，元素集合就是 ["鐘嵐珠"，"鐘嵐珠"]
List list4 = List.filled(2, "鐘嵐珠");

var s = r''''在 raw 字'"dz符串中，转义字符串 \n 会直接输出 “\n” 而不是转义为换行。''';

/// MAP集合
Map schoolIdol = <String, Object>{
  'name': '鐘嵐珠',
  'age': 16,
};

void main() {
  //final 运行时常量
  final myDartClass = MyDartClass();
  print('$str1 $str2 ${myDartClass.num5} ${MyDartClass.num6}');
  doSomeChange(list1, str1, myDartClass, sum: 3, growable: true, news: 'new');
  list3?.add(0);
  list3?[0] = 1;
  print(list1);
  print(list3);
  print(list4);
  print(list3 ?? <MyDartClass>[myDartClass]);

  switch (str2) {
    case "Dart":
      //直接到case 3
      if (str1 == 'Hello') {
        continue title3;
      }
      break;

    case "2":
      break;

    title3:
    case '4':
      print(str2);
      break;

    default:
      print('');
  }
  Set set = {};
  set.addAll(list1);
  var name = set.lastWhere((element) => element.toString().contains('达'));
  print(schoolIdol.values
      .where((element) => element == 16)
      .toList(growable: false));
  List<int> list = [8, 12, 4, 3, 17, 33, 10];
  var res = set.lastWhere((element) => element is String, orElse: () => -1);
  list1.forEach((element) {
    print("33  =$element");
  });
  var newList = list.map((e) => e * 2).toList();
  var news2 = [];
  news2.addAll(newList);
  var boo = newList.any((element) => element > 11);
  print(news2);
  print(newList);
  Set set2 = {};
  set2.addAll({23, 23, 3, '33'});
  print(set2);
  customSort(list);
}

// [8, 12, 4, 1, 17, 33, 10]
void customSort(List<int> list) {
  print("排序前的结果$list");
  // for (int i = 1; i < list.length; i++) {
  //   int value = list[i];
  //   int j = i - 1;
  //   for (; j >= 0; j--) {
  //     if (list[j] > value) {
  //       list[j + 1] = list[j];
  //     } else {
  //       break;
  //     }
  //   }
  //   list[j + 1] = value;
  // }

  var a = 0;
  for (var i = 0; i < list.length; i++) {
    for (var j = 0; j < list.length - 1 - i; j++) {
      a++;
      print('内层循环第$a次 i=$i 第${i + 1}个和第${j + 1}个比较 ');
      if (list[j] > list[j + 1]) {
        int tmp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = tmp;
        print('交换位置$list');
      }
    }
    print('');
  }
  print("排序后的结果$a $list");
}

void doSomeChange(
  List list,
  String? str,
  MyDartClass myDartClass, {
  var growable = true,
  int? sum,
  required String? news,
}) {
  list.add('如果list1是const常量，则无法增删修改元素');
  print(list == list1);
  print("是否empty = ${str1?.trim().isEmpty}");
  str = 'NO';
  myDartClass.num7 = 8;
  print("$str $str1 ${str == str1} ${myDartClass.num7}");
  print('ollllllllll$growable');
}

class MyDartClass {
  final num5 = 4;
  static const num6 = 5;
  num? num7 = 7;
  String title;

  MyDartClass({this.num7, this.title = 'title'});
}
