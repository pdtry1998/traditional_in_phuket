import 'package:flutter/material.dart';

class About_Me extends StatelessWidget {

  final String pageText;
  About_Me(this.pageText);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('เกี่ยวกับ'),backgroundColor: Colors.black,),
//      body: Center(
//        child: Text(pageText),
//      ),
    );
  }
}
