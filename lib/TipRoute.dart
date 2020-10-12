import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/**
 * 带参数的路由跳转示例
 */
class TipRoute extends StatelessWidget {
  TipRoute({
    Key key,
    @required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              Padding(
                padding: EdgeInsets.all(18),
              ),
              RaisedButton(
                onPressed: () => Navigator.pop(context, "这条是TipRoute里的返回值"),
                //可以通过pop方式向上个界面传值，相当天setResult
                child: Text("点击传值返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
