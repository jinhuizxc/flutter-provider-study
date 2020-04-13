import 'package:flutter/material.dart';
import 'package:flutter_provider_study/model/counter.dart';
import 'package:provider/provider.dart';

/***********************************参考示例*************************************/

class ReferenceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider',
      home: HomePage(),
    );
  }
}

// 第四步，使用Provider获取Counter的值
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          FlatButton(
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return SecondPage();
                  })),
              child: Text(
                '下一页',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Center(
        child: Text("${Provider.of<CountModel>(context).count}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
//          Provider.of<Counter>(context).add();//2
          Provider.of<CountModel>(context, listen: false).add();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondPage"),
      ),
      body: Center(
        child: Text('${Provider.of<CountModel>(context).count}'), // 1
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>  Provider.of<CountModel>(context, listen: false).add(),  // 2
//          Provider.of<Counter>(context).add(); // 2


        child: Icon(Icons.add),
      ),
    );
  }
}