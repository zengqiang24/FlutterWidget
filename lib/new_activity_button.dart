import 'package:flutter/material.dart';

class NewActivityButton extends StatelessWidget {
  final GestureTapCallback onPressed; //点击事件的回调，一旦设置后就不可变

  NewActivityButton({required this.onPressed});

  ///build()函数：告诉系统，要绘制的Widget，挂载它的子控件
  // @override
  // Widget build(BuildContext context) { //?
  //   return null; //button上面的文字，一旦设置后就不可变
  // }

  ///   添加文字
  @override
  Widget build(BuildContext context) { //?
      return Text("新增活动"); //button上面的文字，一旦设置后就不可变
  }

  ///   添加button
  // @override
  // Widget build(BuildContext context) {
  //   return RawMaterialButton(
  //       // fillColor: Colors.deepOrange,
  //       // splashColor: Colors.orange,
  //       onPressed: onPressed,
  //       child: Text("新增活动")); //button上面的文字，一旦设置后就不可变
  // }

  ///   添加圆角
// @override
// Widget build(BuildContext context) {
//   return RawMaterialButton(
//     fillColor: Colors.deepOrange,
//     splashColor: Colors.orange,
//     child: Text("新增活动", style: TextStyle(color: Colors.white)),
//     shape: StadiumBorder(),
//     onPressed: onPressed,
//   );
// }
  /**
   * 添加加号图片
   */
// @override
// Widget build(BuildContext context) {
//   return  RawMaterialButton(
//     padding: EdgeInsets.only(left: 20,right: 20),
//     fillColor: Colors.deepOrange,
//     splashColor: Colors.orange,
//     child: Row(
//       mainAxisSize: MainAxisSize.min, //row的宽度最小化，包括子控件即可。
//       children: [
//         Icon(Icons.add,color:Colors.yellow),
//         Text("新增活动",
//           style: TextStyle(color: Colors.white),
//         )
//       ],
//     ),
//     shape: StadiumBorder(),
//     onPressed: onPressed,
//   );
// }

  ///sizeBox增加图片和文字的间距
  ///RawMaterialButton -> Row -> Icon & SizeBox & Text
  // @override
  // Widget build(BuildContext context) {
  //   return RawMaterialButton(
  //     fillColor: Colors.deepOrange,
  //     splashColor: Colors.orange,
  //     padding: EdgeInsets.only(left: 20, right: 20),
  //     child: Row(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         Icon(Icons.add, color: Colors.yellow),
  //         SizedBox(
  //           width: 10,
  //         ),
  //         Text(
  //           "新增活动",
  //           style: TextStyle(color: Colors.white),
  //         )
  //       ],
  //     ),
  //     shape: StadiumBorder(),
  //     onPressed: onPressed,
  //   );
  // }
}
