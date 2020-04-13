import 'package:flutter/material.dart';
import 'package:flutter_provider_study/model/count_model.dart';
import 'package:flutter_provider_study/official/second_page.dart';
import 'package:flutter_provider_study/way3/switcher.dart';
import 'package:provide/provide.dart';


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Provide<Counter>(
              builder: (context, child, counter) {
                return Text(
                  '${counter.count}',
                  style: Theme.of(context).textTheme.display1,
                );
              },
            ),
            Provide<Switcher>(
              builder: (context, child, switcher) {
                return Switch(
                    value: switcher.status,
                    onChanged: (newValue) {
                      switcher.changeStatus();
                    });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SecondScreen()));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}