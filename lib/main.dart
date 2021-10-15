import 'package:flutter/material.dart';
import 'package:flutter_widget/activity_entity.dart';
import 'package:flutter_widget/new_activity_button.dart';

///程序的入口
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
/// 首页
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;


///  创建State, 监听Widget的生命周期，同时负责重新构建Widget
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ///定义listview的数据
  final _items =
      List<ActivityEntity>.generate(5, (i) => ActivityEntity("活动 $i"));


  ///这里发布活动， setState() 会触发widget刷新。
  ///
  void _addActivity() {
    //setState是系统函数， 调用此方法，系统会刷新UI，  通知系统，重建build()=>widget，
    //如果我们改变_items的内容，而没有调用setState方法，build方法则不会被系统调用，UI也不会发生任何改变。
    setState(() {
      ActivityEntity entity =
          ActivityEntity("活动 ${DateTime.now().millisecondsSinceEpoch}");
      _items.add(entity);//数据驱动页面刷新
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }


  /// setStated执行后， build方法将被系统调用。
  /// 定义根widget以及挂载它下面的子树
  @override
  Widget build(BuildContext context) {
    print("build~~~~~~~~~~~~~");
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
        floatingActionButton: FloatingActionButton(
          onPressed: _addActivity,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      // floatingActionButton: NewActivityButton(
      //   onPressed: _addActivity,
      // )
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
