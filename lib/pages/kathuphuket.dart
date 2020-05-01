import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traditional_in_phuket/pages/about.dart';
import 'package:traditional_in_phuket/pages/guide.dart';
import 'package:traditional_in_phuket/pages/info_1.dart';
import 'package:traditional_in_phuket/pages/info_2.dart';
import 'package:traditional_in_phuket/pages/new.dart';

class KathuPhuket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('อำเภอกะทู้'),
        backgroundColor: Colors.black,
      ),
      //  backgroundColor: Colors.black12,

      //ส่วนทำ เหลี่ยมแรก
      body: Container(
        padding: EdgeInsets.all(30), // ตัวขยายให้คอลัมไอค่อนโฮม
        child: GridView.count(crossAxisCount: 2,
        children: <Widget>[
            Card( //ไอค่อนแรก
            margin: EdgeInsets.all(8),
        child:InkWell (
          onTap:(){} ,
          splashColor: Colors.deepOrangeAccent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min, //ทำให้ไอคอนกับตัวอักษรมาอยู่ตรงกลางในคอลัมที่สร้าง

              children: <Widget>[
                Icon(Icons.home,size: 70.0,),  // ได้สร้างไว้แล้วจากตัวแปรด้านบน
                Text("HOME",style: new TextStyle(fontSize: 17.0)), // title ก็ได้สร้างไว่แล้วจากตัวแปรด้านบน
                ListTile(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => Information_One())),
                )
              ],
            ),
          ),
        ),
      ),

          Card(  //ไอค่อน2
            margin: EdgeInsets.all(8),
            child:InkWell (
              onTap:(){} ,
              splashColor: Colors.deepOrangeAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min, //ทำให้ไอคอนกับตัวอักษรมาอยู่ตรงกลางในคอลัมที่สร้าง

                  children: <Widget>[
                    Icon(Icons.person,size: 70.0,),  // ได้สร้างไว้แล้วจากตัวแปรด้านบน
                    Text("HOME",style: new TextStyle(fontSize: 17.0)), // title ก็ได้สร้างไว่แล้วจากตัวแปรด้านบน
                    ListTile(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => Information_Two())),
                    )
                  ],
                ),
              ),
            ),
          ),




        ],
        ),
      ),




//      // ส่วนสร้างปุ่มโฮมย้อนกลับไปหน้าเลือกอำเภอ
//      floatingActionButton: FloatingActionButton(
//        onPressed: (){
//          Navigator.push(context,MaterialPageRoute(builder: (context) => MenuDistrict()));
//        },
//        child: Icon(Icons.home),
//        backgroundColor: Colors.black,
//      ),
//


      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              // ทำ Header ในเมนู
              accountName: Text('Pond Teerayut'),
              accountEmail: Text('s6035512066@phuket.psu.ac.th'),

              currentAccountPicture: GestureDetector(
                //ส่วนทำรูปโปรไฟ
                child: CircleAvatar(
                  // ทำรูปโปรไฟให้เป็นวงกลม
                  backgroundImage: NetworkImage(
                      "https://scontent.furt2-1.fna.fbcdn.net/v/t1.0-9/20228762_803835879789911_2703040804293335225_n.jpg?_nc_cat=111&_nc_sid=7aed08&_nc_eui2=AeHAec-PoQ-JOK0LNITQHR8VgTvFml02gOaBO8WaXTaA5oG12KEIJfnQYQ9-D3GV56rZz3OQlIB3yYQ8bDbRm9Uj&_nc_ohc=V3jqArBbGjgAX8DBWDK&_nc_ht=scontent.furt2-1.fna&oh=9137c423addee2108d69498ef21c7125&oe=5EB1978E"),
                ),
              ),

              decoration: BoxDecoration(
                // สร้างbox
                image: DecorationImage(
                  //เป็น box ไว้ใส่รูป
                  fit: BoxFit.fill, // ขยายรูปเต็ฒBoxนี้
                  image: NetworkImage(
                      "https://www.phuketcity.go.th/tmp/b5d46df4ab8beeb34d28dd45007a3b52.jpg"),
                ),
              ),
            ),



            ListTile(//ทำเมนู 1
              leading: Icon(Icons.star),
              title: Text('แนะนำ'),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => Guide("แนะนำ"))),
            ),

            ListTile(
              //ทำเมนู 2
              leading: Icon(Icons.insert_drive_file),
              title: Text('ข่าวสาร'),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => New("ข่าวสาร"))),
            ),

            ListTile(
              //ทำเมนู 3
              leading: Icon(Icons.person),
              title: Text('เกี่ยวกับเรา'),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => About_Me("เกี่ยวกับ"))),
            )
          ],
        ),
      ),
    );
  }
}

//class MyMenu extends StatelessWidget {    // คลาสสร้างไอค่อน แบบลัดทำหลายๆไอค่อน
//  MyMenu({this.title, this.icon, this.warna, this.move});
//
//  final String title;
//  final IconData icon;
//  final MaterialColor warna;
//  final Navigator move;
//
//  @override
//  Widget build(BuildContext context) {
//    return  Card(
//      margin: EdgeInsets.all(8),
//      child:InkWell (
//        onTap:(){} ,
//        splashColor: Colors.deepOrangeAccent,
//        child: Center(
//          child: Column(
//            mainAxisSize: MainAxisSize.min, //ทำให้ไอคอนกับตัวอักษรมาอยู่ตรงกลางในคอลัมที่สร้าง
//
//            children: <Widget>[
//              Icon(
//                icon,  // ได้สร้างไว้แล้วจากตัวแปรด้านบน
//                size: 70,
//                color: warna, //warna ได้สร้างไว้แล้วจากตัวแปรด้านบน
//              ),
//              Text(title,style: new TextStyle(fontSize: 17.0)), // title ก็ได้สร้างไว่แล้วจากตัวแปรด้านบน
//              ListTile(
//                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => BeForeHome())),
//              )
//
//
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}

