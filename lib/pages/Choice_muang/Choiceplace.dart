import 'package:flutter/material.dart';
import 'package:traditional_in_phuket/pages/Choice_muang/Place/General_place.dart';
import 'package:traditional_in_phuket/pages/Choice_muang/Place/Original_place.dart';


class Choice_Place extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text('ข่าวสาร'),backgroundColor: Colors.black,),
    body: ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(40), //
            elevation: 10, //แต่งเงา
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/4.jpg",
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
                              builder: (context) => Original_place()));
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
                  "assets/images/5.jpg",
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
                              builder: (context) => General_place()));
                    })
              ],
            ),
          ),
 ],
      ),
       );
  }
}
