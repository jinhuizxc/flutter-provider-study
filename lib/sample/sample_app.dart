
import 'package:flutter/material.dart';
import 'package:flutter_provider_study/pages/first_page.dart';

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Provider",
      theme: ThemeData(primarySwatch: Colors.red),
      home: FirstScreen(),
    );
  }
}


