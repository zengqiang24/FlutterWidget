import 'package:flutter/material.dart';
import 'package:flutter_widget/activity_entity.dart';
import 'package:flutter_widget/new_activity_button.dart';

/**
 * 程序的入口
 */
void main() {
  runApp(MyApp()); //MyApp作为根widget
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget介绍',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '我的活动'),
    );
  }
}

class MyHomePage extends StatefulWidget {//StatefulWidget意味内部有个state对象，可以改变Widget的状态（外观和行为）。
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;//widget的属性总是final类型，即不可变的。因为每次build被调用的时候，将重建widget

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _items =
      List<ActivityEntity>.generate(5, (i) => ActivityEntity("活动 $i"));

  void _addActivity() {
    //调用此方法，通知系统，widget状态发生改变，那么build方法会被重新调用，那么widget会被重新构造出来。
    //如果我们改变_items的内容，而没有调用setState方法，build方法则不会被系统调用，UI也不会发生任何改变。
    setState(() {
      ActivityEntity entity =
          ActivityEntity("活动 ${DateTime.now().millisecondsSinceEpoch}");
      _items.add(entity);
    });
  }

  @override
  Widget build(BuildContext context) { //build方法定义根widget以及它下面的子树
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (BuildContext context, int index) {
            print(index);
            return ListTile(
              leading: Icon(Icons.ondemand_video),
              // leading: Image.network("https://img2.baidu.com/it/u=1106670559,3141264106&fm=26&fmt=auto"),
              title: Text(_items[index].name),
            );
          },
        ),
      ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _addActivity,
        //   tooltip: 'Increment',
        //   child: Icon(Icons.add),
        // ),
      floatingActionButton: _buildNewButton(),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _buildNewButton(){
    return NewActivityButton(
        onPressed: () {
      //添加一个活动，页面状态发生改变。
      _addActivity();
    });
  }
}
