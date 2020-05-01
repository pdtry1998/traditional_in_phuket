import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traditional_in_phuket/pages/kathuphuket.dart';
import 'package:traditional_in_phuket/pages/muangphuket.dart';
import 'package:traditional_in_phuket/pages/thalangphuket.dart';

class MenuDistrict extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        appBar: AppBar(
//        title: Text('อำเภอในจังหวัดภูเก็ต'),
//      ),
      body: ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10), //
            elevation: 10, //แต่งเงา
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/1.jpg",
                  fit: BoxFit.cover,
                  height: 200,
                  width: 2300,
                ),
                RaisedButton(
                    child: Text('อำเภอเเมือง'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuangPhuket()));
                    })
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(10), //
            elevation: 10, //แต่งเงา
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/2.jpg",
                  fit: BoxFit.cover,
                  height: 200,
                  width: 2000,
                ),
                RaisedButton(
                    child: Text('อำเภอกะทู้'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => KathuPhuket()));
                    })
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(10), //
            elevation: 10, //แต่งเงา
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/3.jpg",
                  fit: BoxFit.cover,
                  height: 200,
                  width: 2300,
                ),
                RaisedButton(
                    child: Text('อำเภอถลาง'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThalangPhuket()));
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
