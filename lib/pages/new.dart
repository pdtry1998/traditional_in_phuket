import 'package:flutter/material.dart';

class New extends StatelessWidget {

  final String pageText;
  New(this.pageText);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ข่าวสาร'),backgroundColor: Colors.black,),
//      body: Center(
//        child: Text(pageText),
//      ),
    );
  }
}
