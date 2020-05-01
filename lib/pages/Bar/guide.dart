import 'package:flutter/material.dart';

class Guide extends StatelessWidget {

  final String pageText;
  Guide(this.pageText);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('แนะนำ'),backgroundColor: Colors.black,),
//      body: Center(
//        child: Text(pageText),
//      ),
    );
  }
}
