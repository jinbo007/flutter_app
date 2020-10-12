import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/TipRoute.dart';

////测试接收下个界面的示例
class RouterTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>_RouterTestRoute();
}

class _RouterTestRoute extends State<RouterTestRoute> {
  String resultContent = "";

  void updateContent(String result) {
    setState(() {
      resultContent = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("路由示例界面$resultContent"),

        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () async {
                var result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TipRoute(text: "从上个界面传过来的数据");
                    },
                  ),
                );
                //输出下个界面返回的结果
                print("路由返回值为$result");
                updateContent(result);
              },
              child: Text("打开提示页"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 30, 40),
            ),
            Text("接收到来自下一个界面的值为:$resultContent"),
          ],
        )));
  }
}
