import 'package:flutter/material.dart';
import 'package:traditional_in_phuket/pages/Choice_muang/Choicefood.dart';
import 'package:traditional_in_phuket/pages/Choice_muang/Food/Page_info/first.dart';
import 'package:traditional_in_phuket/pages/kathuphuket.dart';
import 'package:traditional_in_phuket/pages/muangphuket.dart';
import 'package:traditional_in_phuket/pages/thalangphuket.dart';

class General_food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ร้านอาหารทั่วไป'),
        backgroundColor: Colors.black,
      ),

       floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => MuangPhuket()));
        },
        child: Icon(Icons.apps ),
        backgroundColor: Colors.black,
      ),

     body: ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(20), //
            elevation: 10, //แต่งเงา
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/8.jpg",
                  fit: BoxFit.cover,
                  height: 180,
                  width: 2300,
                ),
                Text("หมี่สะปำคุณยายเจียร",style: new TextStyle(fontSize: 20.0)), 
                ListTile(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => FirstPages())),
                )
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(20), //
            elevation: 10, //แต่งเงา
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/2.jpg",
                  fit: BoxFit.cover,
                  height: 180,
                  width: 2000,
                ),
                Text("สถานที่ท่องเที่ยว",style: new TextStyle(fontSize: 20.0)), 
                ListTile(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => Choice_Food())),
                )
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(20), //
            elevation: 10, //แต่งเงา
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/3.jpg",
                  fit: BoxFit.cover,
                  height: 180,
                  width: 2300,
                ),
               Text("สถานที่ท่องเที่ยว",style: new TextStyle(fontSize: 20.0)), 
                ListTile(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => Choice_Food())),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
