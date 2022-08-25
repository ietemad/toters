import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:toters/task10.dart';

class t102 extends StatefulWidget {

  final String name0;
  final  String img0;
  final String loc0;
  final String dec0;
  final String comname0;
  final String com0;
  final String price0;
  final  String rate0;
  final String per0;
  final String time0;

  t102 ({
    required this.name0,
    required this.img0,
    required this.loc0,
    required this.dec0,
    required this.comname0,
    required this.com0,
    required this.price0,
    required this.rate0,
    required this.per0,
    required this.time0,
   });

  @override
  State<t102> createState() => _t102State();
}

class _t102State extends State<t102> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:ListView(
        scrollDirection: Axis.vertical,
        children: [

          CarouselSlider(
            items: [
              Container(
                height: 1500,
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 270,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(widget.img0),
                                fit: BoxFit.cover,
                              )
                          ),

                        ), //pic

                        Positioned(
                          top: 115,
                          child:
                          Container(
                            margin: EdgeInsets.fromLTRB(27, 130, 0, 0),
                            padding: EdgeInsets.only(top: 3),
                            width: 39, height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ]
                            ),
                            child: Column(
                              children: [
                                Text("1"),
                                Text("س",style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                          ),), //time
                        Positioned(
                          right: 17, top: 13,
                          child:
                          GestureDetector(
                            child:Container(
                                height: 30, width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.white.withOpacity(0.5)
                                ),
                                child: Center(
                                  child:  Icon(Icons.arrow_forward_outlined,
                                    color: Colors.black, ),
                                )
                            ),
                            onTap: (){
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder:(context) => t10( )));
                            },

                          ),
                          ),  //arrow back to previous page
                        Positioned(
                          left: 107, top: 13,
                          child:
                          Container(
                            height: 30, width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white.withOpacity(0.5)
                            ),

                            child: Icon(Icons.favorite_border,color: Colors.black,),
                          ),), //fav
                        Positioned(
                          left: 57, top: 13,
                          child:
                          Container(
                            height: 30, width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white.withOpacity(0.5)
                            ),

                            child: Icon(Icons.share_outlined,color: Colors.black,),
                          ),), //share
                        Positioned(
                          left: 13, top: 13,
                          child:
                          Container(
                            height: 30, width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white.withOpacity(0.5)
                            ),

                            child: Icon(Icons.search,color: Colors.black,),
                          ),), //search

                      ],
                    ),

                    Padding(padding: EdgeInsets.fromLTRB(0, 13, 13, 0),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text( widget.loc0 ,style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold, fontFamily: "almaria",
                          ),),
                          Text(" - ",style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold, fontFamily: "almaria",
                          ),),
                          Text(widget.name0 ,style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold, fontFamily: "almaria",
                          ),),
                        ],
                      )
                    ), // Restaurant name & loc

                    Padding(padding: EdgeInsets.fromLTRB(30, 11, 13, 17),
                      child: Text(widget.dec0,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 13,  fontFamily: "almaria",
                            fontWeight: FontWeight.bold,
                            color: Colors.grey, height: 1.5
                        ),
                      ),
                    ), // dec

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Container(
                          height: 30, width: 100,
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color:  Color(0xff2f8ce0).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(7)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("إكسب النقاط ", style: TextStyle(color:  Color(0xff2f8ce0),
                                  fontFamily: "amaria", fontWeight: FontWeight.bold, fontSize: 13 ),),
                              Image.asset("images/add_points.png",height: 17, width: 17,),

                            ],
                          ),
                        ), // points button

                        Container(
                          height: 30, width: 130,
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          decoration: BoxDecoration(
                              color:  Color(0xffe65419).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(7)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("اسعادة النقود", style: TextStyle(color: Color(0xffe65419),fontFamily: "amaria",
                                  fontWeight: FontWeight.bold, fontSize: 13 ),),
                              Text(widget.per0, style: TextStyle(color: Color(0xffe65419), fontFamily: "amaria",
                                  fontWeight: FontWeight.bold, fontSize: 13 ) ),
                              Text("\%", style: TextStyle(color: Color(0xffe65419), fontFamily: "amaria",
                                  fontWeight: FontWeight.bold, fontSize: 13 ) ),
                              Image.asset("images/money_back.png",height: 17, width: 17,),
                            ],
                          ),
                        ), //money back button

                      ],
                    ), //buttons

                    SizedBox(height: 13,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 13),
                          child:Icon(Icons.arrow_back_ios_new, color: Color(0xff00b290),) ,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Color(0xffe4e6e8),),
                                    Icon(Icons.star, color: Color(0xff00b290),),
                                    Icon(Icons.star, color: Color(0xff00b290),),
                                    Icon(Icons.star, color: Color(0xff00b290),),
                                    Icon(Icons.star, color: Color(0xff00b290),),
                                  ],
                                ), // the stars

                                Text("استنادا الى 1200 من التقييمات",
                                  style: TextStyle(
                                      fontSize: 7,  fontFamily: "almaria",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey, height: 1.5
                                  ),)
                              ],
                            ), //stars

                            Padding(padding: EdgeInsets.all(13),
                              child: Text(widget.rate0, style: TextStyle( fontSize: 30, ),),
                            ), //rating number
                          ],
                        ), //rate
                      ],
                    ), //rating row

                    SizedBox(height: 13,),

                    Container(
                      height: 1, color: Colors.grey.withOpacity(0.5),
                    ), //divider line

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Color(0xff00b290), size: 19,),
                            Icon(Icons.star, color: Color(0xff00b290), size: 19,),
                            Icon(Icons.star, color: Color(0xff00b290), size: 19,),
                            Icon(Icons.star, color: Color(0xff00b290), size: 19,),
                            Icon(Icons.star, color: Color(0xff00b290), size: 19,),
                          ],
                        ), // the stars
                        Padding(padding: EdgeInsets.fromLTRB(3, 13, 13, 13),
                          child:Text(widget.comname0),
                        ),
                      ],
                    ), // comment name

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(" اقرأ اكثر ",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 11,  fontFamily: "almaria",
                              fontWeight: FontWeight.bold,
                              color: Color(0xff00b290), height: 1.5
                          ),
                        ),

                        Padding(padding: EdgeInsets.only(right: 13),
                          child:  Text(widget.com0,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 11,  fontFamily: "almaria",
                                fontWeight: FontWeight.bold,
                                color: Colors.grey, height: 1.5
                            ),
                          ),
                        )
                      ],
                    ), // comment

                    Center(
                      child:
                      Container(
                        margin: EdgeInsets.only(top: 13),
                        padding: EdgeInsets.symmetric(horizontal: 17),
                        height: 1, width: 370, color: Colors.grey.withOpacity(0.5),
                      ),
                    ), //divider line

                    Container(
                      height: 9, color: Colors.grey.withOpacity(0.1),
                    ), //divider line

                    Padding(padding: EdgeInsets.fromLTRB(0, 17, 13, 27),
                      child: Text("شائع", style: TextStyle(fontSize: 19,
                          fontFamily: "almaria", fontWeight: FontWeight.bold ), ),

                    ),

                    CarouselSlider(
                      items: [
                        menu("https://modo3.com/thumbs/fit630x300/42841/1566906132/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9_%D8%B2%D9%86%D8%AC%D8%B1_%D8%A7%D9%84%D8%AF%D8%AC%D8%A7%D8%AC.jpg",
                            "كرسبي", 5000, 150)
                      ],
                      options:
                      CarouselOptions(
                        height: 250,

                      ),

                    )

                  ],
                )




                ,
              ), //main
              Container(
                height: 1500,
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 270,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://play-lh.googleusercontent.com/0XFj7B9f3pHJ5m0xbXurDeTVUM4PTN0aou7i9GAF3LlFgOmX4ucX54nmi9yOL53WefI"),
                                 fit: BoxFit.cover,
                           )
                            ),

                        ), //pic
                        Positioned(
                          top: 115,
                          child:
                          Container(
                            margin: EdgeInsets.fromLTRB(27, 130, 0, 0),
                            padding: EdgeInsets.only(top: 3),
                            width: 39, height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ]
                            ),
                            child: Column(
                              children: [
                                Text("1"),
                                Text("س",style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                          ),), //time
                        Positioned(
                          right: 17, top: 13,
                          child:
                          GestureDetector(
                            child:Container(
                                height: 30, width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.white.withOpacity(0.5)
                                ),
                                child: Center(
                                  child:  Icon(Icons.arrow_forward_outlined,
                                    color: Colors.black, ),
                                )
                            ),
                            onTap: (){
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder:(context) => t10( )));
                            },

                          ),
                        ),  //arrow
                        Positioned(
                          left: 107, top: 13,
                          child:
                          Container(
                            height: 30, width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white.withOpacity(0.5)
                            ),

                            child: Icon(Icons.favorite_border,color: Colors.black,),
                          ),), //fav
                        Positioned(
                          left: 57, top: 13,
                          child:
                          Container(
                            height: 30, width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white.withOpacity(0.5)
                            ),

                            child: Icon(Icons.share_outlined,color: Colors.black,),
                          ),), //share
                        Positioned(
                          left: 13, top: 13,
                          child:
                          Container(
                            height: 30, width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white.withOpacity(0.5)
                            ),

                            child: Icon(Icons.search,color: Colors.black,),
                          ),), //search
                      ],
                    ),

                    Padding(padding: EdgeInsets.fromLTRB(0, 13, 13, 0),
                      child: Text("سماش بركر",style: TextStyle(
                        fontSize: 23, fontWeight: FontWeight.bold, fontFamily: "almaria",
                      ),),
                    ), // Resturant name

                    Padding(padding: EdgeInsets.fromLTRB(30, 11, 13, 17),
                      child: Text(" بركر رائع بصلصات خاصة ",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 13,  fontFamily: "almaria",
                            fontWeight: FontWeight.bold,
                            color: Colors.grey, height: 1.5
                        ),
                      ),
                    ), // dec

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Container(
                          height: 30, width: 100,
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color:  Color(0xff2f8ce0).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(7)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("إكسب النقاط ", style: TextStyle(color:  Color(0xff2f8ce0),
                                  fontFamily: "amaria", fontWeight: FontWeight.bold, fontSize: 13 ),),
                              Image.asset("images/add_points.png",height: 17, width: 17,),

                            ],
                          ),
                        ), // points button

                        Container(
                          height: 30, width: 130,
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          decoration: BoxDecoration(
                              color:  Color(0xffe65419).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(7)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("اسعادة النقود", style: TextStyle(color: Color(0xffe65419),fontFamily: "amaria",
                                  fontWeight: FontWeight.bold, fontSize: 13 ),),
                              Text("10\%", style: TextStyle(color: Color(0xffe65419), fontFamily: "amaria",
                                  fontWeight: FontWeight.bold, fontSize: 13 ) ),
                              Image.asset("images/money_back.png",height: 17, width: 17,),
                            ],
                          ),
                        ), //money back button

                      ],
                    ), //buttons

                    SizedBox(height: 13,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 13),
                          child:Icon(Icons.arrow_back_ios_new, color: Color(0xff00b290),) ,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Color(0xffe4e6e8),),
                                    Icon(Icons.star, color: Color(0xff00b290),),
                                    Icon(Icons.star, color: Color(0xff00b290),),
                                    Icon(Icons.star, color: Color(0xff00b290),),
                                    Icon(Icons.star, color: Color(0xff00b290),),
                                  ],
                                ), // the stars

                                Text("استنادا الى 1700 من التقييمات",
                                  style: TextStyle(
                                      fontSize: 7,  fontFamily: "almaria",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey, height: 1.5
                                  ),)
                              ],
                            ), //stars

                            Padding(padding: EdgeInsets.all(13),
                              child: Text("4.3", style: TextStyle( fontSize: 30, ),),
                            ), //rating number





                          ],
                        ),
                      ],
                    ), //rating row

                    SizedBox(height: 13,),

                    Container(
                      height: 1, color: Colors.grey.withOpacity(0.5),
                    ), //divider line

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Color(0xff00b290), size: 19,),
                            Icon(Icons.star, color: Color(0xff00b290), size: 19,),
                            Icon(Icons.star, color: Color(0xff00b290), size: 19,),
                            Icon(Icons.star, color: Color(0xff00b290), size: 19,),
                            Icon(Icons.star, color: Color(0xff00b290), size: 19,),
                          ],
                        ), // the stars
                        Padding(padding: EdgeInsets.fromLTRB(3, 13, 13, 13),
                          child:Text(" Adnan "),
                        ),
                      ],
                    ), // comment name

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(" اقرأ اكثر ",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 11,  fontFamily: "almaria",
                              fontWeight: FontWeight.bold,
                              color: Color(0xff00b290), height: 1.5
                          ),
                        ),

                        Padding(padding: EdgeInsets.only(right: 13),
                          child:  Text(" ...\"  لك اويلي اطيب شي الصاج العئلي يموت ",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 11,  fontFamily: "almaria",
                                fontWeight: FontWeight.bold,
                                color: Colors.grey, height: 1.5
                            ),
                          ),
                        )


                      ],
                    ), // comment

                    Center(
                      child:
                      Container(
                        margin: EdgeInsets.only(top: 13),
                        padding: EdgeInsets.symmetric(horizontal: 17),
                        height: 1, width: 370, color: Colors.grey.withOpacity(0.5),
                      ),
                    ), //divider line

                    Container(
                      height: 9, color: Colors.grey.withOpacity(0.1),
                    ), //divider line

                    Padding(padding: EdgeInsets.fromLTRB(0, 17, 13, 27),
                      child: Text("شائع", style: TextStyle(fontSize: 19,
                          fontFamily: "almaria", fontWeight: FontWeight.bold ), ),

                    ),

                    CarouselSlider(
                      items: [
                        menu("https://fox8.com/wp-content/uploads/sites/12/2022/06/GettyImages-1215384689.jpg?w=724",
                            "كلاسك برغر", 5000, 150)
                      ],
                      options:
                      CarouselOptions(
                        height: 250,

                      ),

                    )

                  ],
                )




                ,
              ), //smash
              Container(
                height: 1500,
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                  height: 299, width: 900,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://scontent.fbgw41-1.fna.fbcdn.net/v/t1.6435-9/88445847_521158008538017_4229030885057363968_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=730e14&_nc_ohc=kiHvATeGd5oAX81Or4w&_nc_ht=scontent.fbgw41-1.fna&oh=00_AT_xEDY_bYDBfJPceGmj4Hty_ZyQktSXbgx6V59Y3l3dtA&oe=632CDB9E")
                      )
                  ),
                ), //pic


                        Positioned(
                          top: 115,
                          child:
                          Container(
                            margin: EdgeInsets.fromLTRB(27, 130, 0, 0),
                            padding: EdgeInsets.only(top: 3),
                            width: 39, height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ]
                            ),
                            child: Column(
                              children: [
                                Text("0.5"),
                                Text("س",style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                          ),), //time
                        Positioned(
                          right: 17, top: 13,
                          child:
                          GestureDetector(
                            child:Container(
                                height: 30, width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.white.withOpacity(0.5)
                                ),
                                child: Center(
                                  child:  Icon(Icons.arrow_forward_outlined,
                                    color: Colors.black, ),
                                )
                            ),
                            onTap: (){
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder:(context) => t10( )));
                            },

                          ),
                        ),  //arrow
                        Positioned(
                          left: 107, top: 13,
                          child:
                          Container(
                            height: 30, width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white.withOpacity(0.5)
                            ),

                            child: Icon(Icons.favorite_border,color: Colors.black,),
                          ),), //fav
                        Positioned(
                          left: 57, top: 13,
                          child:
                          Container(
                            height: 30, width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white.withOpacity(0.5)
                            ),

                            child: Icon(Icons.share_outlined,color: Colors.black,),
                          ),), //share
                        Positioned(
                          left: 13, top: 13,
                          child:
                          Container(
                            height: 30, width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white.withOpacity(0.5)
                            ),

                            child: Icon(Icons.search,color: Colors.black,),
                          ),), //search
                      ],
                    ),

                    Padding(padding: EdgeInsets.fromLTRB(0, 13, 13, 0),
                      child: Text("ونكز-حي الجامعة",style: TextStyle(
                        fontSize: 23, fontWeight: FontWeight.bold, fontFamily: "almaria",
                      ),),
                    ), // Restaurant name

                    Padding(padding: EdgeInsets.fromLTRB(30, 11, 13, 17),
                      child: Text("نقدم الذ الاطعمة الغريبة",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 13,  fontFamily: "almaria",
                            fontWeight: FontWeight.bold,
                            color: Colors.grey, height: 1.5
                        ),
                      ),
                    ), // dec

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Container(
                          height: 30, width: 100,
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color:  Color(0xff2f8ce0).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(7)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("إكسب النقاط ", style: TextStyle(color:  Color(0xff2f8ce0),
                                  fontFamily: "amaria", fontWeight: FontWeight.bold, fontSize: 13 ),),
                              Image.asset("images/add_points.png",height: 17, width: 17,),

                            ],
                          ),
                        ), // points button

                        Container(
                          height: 30, width: 130,
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          decoration: BoxDecoration(
                              color:  Color(0xffe65419).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(7)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("اسعادة النقود", style: TextStyle(color: Color(0xffe65419),fontFamily: "amaria",
                                  fontWeight: FontWeight.bold, fontSize: 13 ),),
                              Text("15\%", style: TextStyle(color: Color(0xffe65419), fontFamily: "amaria",
                                  fontWeight: FontWeight.bold, fontSize: 13 ) ),
                              Image.asset("images/money_back.png",height: 17, width: 17,),
                            ],
                          ),
                        ), //money back button

                      ],
                    ), //buttons

                    SizedBox(height: 13,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 13),
                          child:Icon(Icons.arrow_back_ios_new, color: Color(0xff00b290),) ,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Color(0xffe4e6e8),),
                                    Icon(Icons.star, color: Color(0xff00b290),),
                                    Icon(Icons.star, color: Color(0xff00b290),),
                                    Icon(Icons.star, color: Color(0xff00b290),),
                                    Icon(Icons.star, color: Color(0xff00b290),),
                                  ],
                                ), // the stars

                                Text("استنادا الى 3000 من التقييمات",
                                  style: TextStyle(
                                      fontSize: 7,  fontFamily: "almaria",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey, height: 1.5
                                  ),)
                              ],
                            ), //stars

                            Padding(padding: EdgeInsets.all(13),
                              child: Text("4.7", style: TextStyle( fontSize: 30, ),),
                            ), //rating number





                          ],
                        ),
                      ],
                    ), //rating row

                    SizedBox(height: 13,),

                    Container(
                      height: 1, color: Colors.grey.withOpacity(0.5),
                    ), //divider line

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Color(0xff00b290), size: 19,),
                            Icon(Icons.star, color: Color(0xff00b290), size: 19,),
                            Icon(Icons.star, color: Color(0xff00b290), size: 19,),
                            Icon(Icons.star, color: Color(0xff00b290), size: 19,),
                            Icon(Icons.star, color: Color(0xff00b290), size: 19,),
                          ],
                        ), // the stars
                        Padding(padding: EdgeInsets.fromLTRB(3, 13, 13, 13),
                          child:Text(" dana "),
                        ),
                      ],
                    ), // comment name

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(" اقرأ اكثر ",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 11,  fontFamily: "almaria",
                              fontWeight: FontWeight.bold,
                              color: Color(0xff00b290), height: 1.5
                          ),
                        ),

                        Padding(padding: EdgeInsets.only(right: 13),
                          child:  Text(" ...\"  اويلي يابه يخبل بس محوصي منكم لان احلى شي كعدة المطعم ",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 11,  fontFamily: "almaria",
                                fontWeight: FontWeight.bold,
                                color: Colors.grey, height: 1.5
                            ),
                          ),
                        )


                      ],
                    ), // comment

                    Center(
                      child:
                      Container(
                        margin: EdgeInsets.only(top: 13),
                        padding: EdgeInsets.symmetric(horizontal: 17),
                        height: 1, width: 370, color: Colors.grey.withOpacity(0.5),
                      ),
                    ), //divider line

                    Container(
                      height: 9, color: Colors.grey.withOpacity(0.1),
                    ), //divider line

                    Padding(padding: EdgeInsets.fromLTRB(0, 17, 13, 27),
                      child: Text("شائع", style: TextStyle(fontSize: 19,
                          fontFamily: "almaria", fontWeight: FontWeight.bold ), ),

                    ),

                    CarouselSlider(
                      items: [
                        menu("https://i.ytimg.com/vi/yR6XMD60iVA/maxresdefault.jpg",
                            "اجنحة حارة", 5000, 150),
                        menu("https://i.ytimg.com/vi/yR6XMD60iVA/maxresdefault.jpg",
                            "كلاسك برغر", 5000, 150),
                        menu("https://i.ytimg.com/vi/yR6XMD60iVA/maxresdefault.jpg",
                            "كلاسك برغر", 5000, 150)
                      ],
                      options:
                      CarouselOptions(
                        height: 250,

                      ),

                    )

                  ],
                )




                ,
              ), // wings





            ],
            options:
            CarouselOptions(
              height: 900,
              aspectRatio: 16/9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 7),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              scrollDirection: Axis.horizontal,

            ),

          )

        ],
      )
      ,
    );
  }

// the functions.......................................


  Container menu(
      String pic,
      String fname,
      int price,
      int weight,
      ){
    return
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 150, width: 270,
              margin: EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                image: DecorationImage(
                  image: NetworkImage(pic),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 9,),

            Text( "$fname" , style: TextStyle( fontSize: 17, fontWeight: FontWeight.bold,
                fontFamily: "almaria"),),
            SizedBox(height: 7,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(" غرام $weight / ",style: TextStyle(
                    fontSize: 15, fontFamily: "almaria"
                ),),
                Text(" $price  د.ع ",style: TextStyle(
                    fontSize: 15, color:  Color(0xff00b290), fontFamily: "almaria"
                ),)
              ],
            )



          ],
        ),
      )

    ;
  }


}
