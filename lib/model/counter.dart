import 'package:flutter/cupertino.dart';

// 第二步，创建Model
// 简单的一个Counter对象，里面只有一个字段_count

// 1. 这里需要混入ChangeNotifier
// 2. 写一个增加的方法，然后需要调用notifyListeners();这个方法是通知用到Counter对象的widget刷新用的。
// 3. get方法

class Counter with ChangeNotifier{  // 1

  int _count;

  Counter(this._count);

  void add(){
    _count++;
    notifyListeners();  // 2
  }

  get count => _count;  // 3


}