import 'package:flutter/material.dart';
import 'package:traditional_in_phuket/pages/muangphuket.dart';

class Original_place extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text('สถานที่ท่องเที่ยวดั้งเดิม'),
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
          Menu('ร้านข้าวต้มดีบุก','ร้านข้าวต้มดีบุก','https://img.wongnai.com/p/800x0/2019/09/04/bf826500647f4dd8b8542320b1e14c9a.jpg'),
          Menu('dfsgbfg dfg','0000','https://img.wongnai.com/p/1920x0/2018/01/06/aee146f524cc4e04a12a0d374d42d5f6.jpg'),
          Menu('6666666','666666','https://img.wongnai.com/p/800x0/2019/09/04/bf826500647f4dd8b8542320b1e14c9a.jpg'),
          Menu('111111111111','7777777','https://img.wongnai.com/p/800x0/2019/09/04/bf826500647f4dd8b8542320b1e14c9a.jpg'),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  final String _text;
  final String _author;
  final String _imageUrl;

  const Menu (this._text,this._author,this._imageUrl,{
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15), //กำหนดขนาดขอบ
            child: Column(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),//กำหนดขอบมน
              image: DecorationImage(
               fit: BoxFit.cover, //จัดขนาดภาพ
               image: NetworkImage(
                _imageUrl)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              '"$_text" ',
            style: TextStyle(
              fontSize: 18,
            ),
            ),
          ),
           Container(
             alignment: Alignment(1, 0), //จัดข้อความยุชิดขวา
             padding: const EdgeInsets.all(8.0), 
             child: Text('$_author',
                 style: TextStyle(
                   fontStyle: FontStyle.italic, //ตัวอกษรเอียง
                 )
             ),
           ),
        ],
      ),
    );
  }
}