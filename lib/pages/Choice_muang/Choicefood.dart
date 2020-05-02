import 'package:flutter/material.dart';
import 'package:traditional_in_phuket/pages/Place_Kathu/info_2.dart';

class Choice_Food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('อำเภอเมือง'),backgroundColor: Colors.black,
      ),

   body: ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(40), //
            elevation: 10, //แต่งเงา
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/1.jpg",
                  fit: BoxFit.cover,
                  height: 150,
                  width: 1500,
                ),
                RaisedButton(
                    child: Text('ดั้งเดิม',style: new TextStyle(fontSize: 19.0)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Information_Two()));
                    })
              ],
            ),
          ),


          Card(
            margin: EdgeInsets.all(40), //
            elevation: 10, //แต่งเงา
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/1.jpg",
                  fit: BoxFit.cover,
                  height: 150,
                  width: 1500,
                ),
                RaisedButton(
                    child: Text('ทั่วไป',style: new TextStyle(fontSize: 19.0)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Information_Two()));
                    })
              ],
            ),
          ),
 ],
      ),
    );
  }
}

