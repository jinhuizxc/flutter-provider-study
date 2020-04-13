import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_provider_study/model/count_model.dart';
import 'package:flutter_provider_study/official/official.dart';
import 'package:flutter_provider_study/sample/sample_app.dart';
import 'package:flutter_provider_study/way3/switcher.dart';
import 'package:provide/provide.dart';


/// This is an example of a counter application using `provider` + [ChangeNotifier].
///
/// It builds a typical `+` button, with a twist: the texts using the counter
/// are built using the localization framework.
///
/// This shows how to bind our custom [ChangeNotifier] to things like [LocalizationsDelegate].

// Flutter | 状态管理特别篇——Provide
//https://www.jianshu.com/p/9c664a376e1b
void main(){
  var counter = Counter();
  var switcher = Switcher();

  var providers = Providers();

  providers
    ..provide(Provider<Counter>.value(counter))
    ..provide(Provider<Switcher>.value(switcher));

  runApp(ProviderNode(child: SampleApp(), providers: providers));
}

// 运行官方示例
//void main()=>runApp(OfficialApp());

// 运行参考示例1
/*void main() {
  runApp(ChangeNotifierProvider<Counter1>.value(
    // 1
    value: Counter1(1), //2
    child: ReferenceApp(),
  ));
}*/

