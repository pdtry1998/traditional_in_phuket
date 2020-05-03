import 'package:flutter/material.dart';


class FirstPages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirst();
  }
}

class _MyFirst extends State<FirstPages> {
  String descriptionText =
      "หมี่สะปำคุณยายเจียร คนภูเก็ตทุกคนคงคุ้นกับชื่อร้านเด็ดภูเก็ตร้านนี้ดี เพราะเป็นร้านอาหารภูเก็ตที่เก่าแก่ อยู่คู่กับคนภูเก็ตมาร่วม 50 กว่าปี ด้วยการคงความนุ่มของเส้นฮกเกี้ยนในการปรุงและความสดของกุ้ง, หอย, และปลาหมึก เมื่อปรุงออกมาเป็น หมี่ฮกเกี้ยน แล้วรสชาติดีมาก อีกเมนูที่เด็ดไม่แพ้หมี่ฮกเกี้ยนคือ เมนูหอยทอด ที่ใช้หอยสด ๆ ทอดได้กรอบกินคู่กับน้ำจิ้มดียิ่งนัก กินอาหารอิ่มแล้ว ที่นี่ก็ยังมีของฝากให้เลือกซื้ออีกด้วย ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  automaticallyImplyLeading: true,
                  backgroundColor: Colors.transparent,
                  expandedHeight: 300.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      collapseMode: CollapseMode.pin,
                      background: Image.asset(
                         "assets/images/8.jpg",
                        fit: BoxFit.cover,
                      )),
                ),
              ];
            },
            body: Column(
              children: <Widget>[
                SizedBox(height: 10.0),
                new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                          ),
                          child: new Text(
                            "หมี่สะปำคุณยายเจียร",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 30.0,
                                ),
                          )),
                    ]
                ),
                SizedBox(height: 5.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text(
                        "ตั้งอยู่ที่ ถนน เทพกระษัตรี (ขาออกจากตัวเมือง อยู่ฝั่งเดียวกับ Toyota) เกาะแก้ว , เมืองภูเก็ต , ภูเก็ต ",
                        style: TextStyle(color: Colors.grey[600]),
                      )),
                ),

                SizedBox(
                  height: 20.0,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.call,size: 50.0,color: Colors.lightBlueAccent,),
                        Text(
                          "Call",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.location_on,size: 50.0,color: Colors.blue,),
                        Text(
                          "Location",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.thumb_up,size: 50.0,color: Colors.deepPurple,),
                        Text(
                          "Like",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.0),

              

                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    descriptionText,
                    style: TextStyle(
                        wordSpacing: 2.0,
                        textBaseline: TextBaseline.alphabetic),
                  ),
                )
              ],
            )));
  }
}

