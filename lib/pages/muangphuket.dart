import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traditional_in_phuket/pages/Bar/about.dart';
import 'package:traditional_in_phuket/pages/Bar/guide.dart';
import 'package:traditional_in_phuket/pages/Information_Kathu/info_1.dart';
import 'package:traditional_in_phuket/pages/menudistrict.dart';
import 'package:traditional_in_phuket/pages/Bar/new.dart';

class MuangPhuket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('อำเภอเมือง'),backgroundColor: Colors.black,
      ),

      // ส่วนสร้างปุ่มโฮมย้อนกลับไปหน้าเลือกอำเภอ
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => MenuDistrict()));
        },
        child: Icon(Icons.home),
        backgroundColor: Colors.black,
      ),

      body: Container(
        //padding: EdgeInsets.all(10),
        child: GridView.count(crossAxisCount: 1,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(70),
            child: InkWell(
              onTap: (){},
              splashColor: Colors.black,
              child: Center(
                child: ListView(
                 // mainAxisSize: MainAxisSize.min,

                  children: <Widget>[
                    //Icon(Icons.home,size: 80,),
                    Image.asset("assets/images/1.jpg",
                    ),
                    Text("home" ,style: new TextStyle(fontSize: 20)),
                    ListTile(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => Information_One())),
                    )
                  ],
                ),
              ),
            ),
          ),


        ],
        ),
      ) ,





      drawer:Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader( // ทำ Header ในเมนู
              accountName: Text('Pond Teerayut'),
              accountEmail: Text('s6035512066@phuket.psu.ac.th'),

              currentAccountPicture: GestureDetector( //ส่วนทำรูปโปรไฟ
                child: CircleAvatar( // ทำรูปโปรไฟให้เป็นวงกลม
                  backgroundImage: NetworkImage("https://scontent.furt2-1.fna.fbcdn.net/v/t1.0-9/20228762_803835879789911_2703040804293335225_n.jpg?_nc_cat=111&_nc_sid=7aed08&_nc_eui2=AeHAec-PoQ-JOK0LNITQHR8VgTvFml02gOaBO8WaXTaA5oG12KEIJfnQYQ9-D3GV56rZz3OQlIB3yYQ8bDbRm9Uj&_nc_ohc=V3jqArBbGjgAX8DBWDK&_nc_ht=scontent.furt2-1.fna&oh=9137c423addee2108d69498ef21c7125&oe=5EB1978E"),
                ),
              ),

              decoration: BoxDecoration(  // สร้างbox
                image: DecorationImage(   //เป็น box ไว้ใส่รูป
                  fit: BoxFit.fill,  // ขยายรูปเต็ฒBoxนี้
                  image: NetworkImage("https://www.phuketcity.go.th/tmp/b5d46df4ab8beeb34d28dd45007a3b52.jpg"),
                ),
              ),
            ),

//            Row(
//              children: <Widget>[
//                Icon(Icons.person),
//                Text('แนะนำ'),
//                Icon(Icons.arrow_right),
//              ],
//            ),


            ListTile( //ทำเมนู 1
              title: Text('แนะนำ'),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => Guide("แนะนำ"))),
            ),


            ListTile( //ทำเมนู 2
              title: Text('ข่าวสาร'),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => New("แนะนำ"))),
            ),


            ListTile( //ทำเมนู 3
              title: Text('เกี่ยวกับเรา'),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => About_Me("แนะนำ"))),
            )




          ],
        ),
      ) ,


    );
  }
}
