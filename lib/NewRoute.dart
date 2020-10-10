import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("new page"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text("嘿，这是一个二级界面"),
        ));
  }
}
