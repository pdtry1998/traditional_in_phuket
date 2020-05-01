import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traditional_in_phuket/pages/menudistrict.dart';

class BeForeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: MediaQuery.of(context)
          .padding, //ปรับระยะขอบบนไม่ให้ล้ำไปที่ไอค่อนข้างบน
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/images/LOGO.png",
            height: 400,
            width: 400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // จัดปุ่มให้อยู่กึ่งกลาง
            children: <Widget>[
              RaisedButton(
                  child: Text('Enter'),
                  onPressed: () {
                    print('Welcome');
                    Navigator.push(    // ส่วนที่ทำให้กดลิ้งไปหน้า MenuDistrict
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MenuDistrict()));    // เป็นการลิ้งแบบที่ 2 ไปยังหน้า MenuDistrict
                  }),
            ],
          ),
        ],
      ),
    ));
  }
}
