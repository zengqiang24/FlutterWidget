import 'package:flutter/material.dart';

class NewActivityButton extends StatelessWidget {
  final GestureTapCallback onPressed; //点击事件的回调，一旦设置后就不可变

  NewActivityButton({required this.onPressed});

  @override
  Widget build(BuildContext context) { //?
    // return null;
    return _buildText(); //button上面的文字，一旦设置后就不可变
    // return _buildButtonWithIconAndPadding();
  }

  _buildText() {
    return Text("新增活动",
        style: TextStyle(color: Colors.white),
    );
  }

  _buildButtonWithText() {
    return RawMaterialButton(onPressed: onPressed, child: _buildText());
  }

  _buildButtonWithShape() {
    return RawMaterialButton(
      fillColor: Colors.deepOrange,
      splashColor: Colors.orange,
      child: Text("新增活动"),
      shape: StadiumBorder(),
      onPressed: onPressed,
    );
  }

  _buildButtonWithIcon(){
    return RawMaterialButton(
      fillColor: Colors.deepOrange,
      splashColor: Colors.orange,
      child: Row(
        children: [
          Icon(Icons.ondemand_video,color:Colors.red ),
          Text("新增活动",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
      shape: StadiumBorder(),
      onPressed: onPressed,
    );
  }

  _buildButtonWithIconAndPadding(){
    return RawMaterialButton(
      fillColor: Colors.deepOrange,
      splashColor: Colors.orange,
      padding: EdgeInsets.only(left: 50,right: 50),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.add,color:Colors.yellow),
          // SizedBox(width: 10,),
          Text("新增活动",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
      shape: StadiumBorder(),
      onPressed: onPressed,
    );
  }


}
