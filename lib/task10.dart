import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:toters/t102.dart';
import 'data.dart';

class t10 extends StatefulWidget {
  const t10({Key? key}) : super(key: key);

  @override
  State<t10> createState() => _t10State();
}

class _t10State extends State<t10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        actions: [
          Column(
            children: [
              Text("توصيل الى",style:TextStyle(color: Colors.black ,
                  fontSize: 15, fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Text("المنزل",style:TextStyle(color: Colors.black ,
                      fontSize: 15, fontWeight: FontWeight.bold),),
                  Icon(Icons.keyboard_arrow_down,size: 30,color: Colors.grey)
                ],
              )
            ],
          )
        ],
        title:
        Icon(Icons.notifications_none_rounded,size: 30,color: Colors.grey),

        leading: Icon(Icons.filter_list,size: 30,color: Colors.grey,),
      ),

      body:
      Container(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(13),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("سجل الدخول باستخدام تطبيق توترز واستمتع بمزايا خاصة"),
                      Icon(Icons.login,color: Colors.cyan,),
                    ],
                  ),
                ),

                CarouselSlider(
                  items: [
                    slider("images/tper0.jpeg"),
                    slider("images/tper.jpeg"),
                    slider("images/tper.jpeg"),
                  ],
                  options:
                  CarouselOptions(
                    height: 200,
                    aspectRatio: 16/9,
                    viewportFraction: 0.9,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 7),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height:180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(17),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 7), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("images/shop.png",height: 100,width: 100,),
                          Text("البقالة")
                        ],
                      ),
                    ),
                    Container(
                      height:180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(17),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 7), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("images/ber.png",height: 100,width: 100,),
                          Text("مطاعم")
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 19,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height:110,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 7), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("images/wallet.png",height: 70,width: 70,),
                          Text("اضف رصيد")
                        ],
                      ),
                    ),
                    Container(
                      height:110,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.white,

                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 7), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("images/box.png",height: 70,width: 70,),
                          Text("المندوب")
                        ],
                      ),
                    ),
                    Container(
                      height:110,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 7), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("images/bag.png",height: 70,width: 70,),
                          Text("متاجر")
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 25,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("!جرب المطاعم الجديدة المميزة مع مجموعة وجبات رائعة",
                    style: TextStyle(fontSize: 17, color: Colors.grey
                    ),),
                    SizedBox(width: 13,),
                  ],
                ),

                Container(
                  height: 500,
                  child:
                  ListView(
                    scrollDirection: Axis.horizontal,

                    children: [
                      sliding(
                          "جايدة تمام",
                          "https://www.justfood.tv/nawa3emPics/zinger.jpg",
                          " ابو الطيارة",
                          "نقدم الذ الاطعمة على الاطلاق",
                          "اني",
                          " ...\" اموت عليهم من ايام معهد لسادس لهسه اطلي منهم ",
                          "300",
                          "5",
                          "13",
                          "0.5"),


                      sliding(
                          "فاير فاير",
                          "https://images.deliveryhero.io/image/fd-bd/LH/py6i-hero.jpg",
                          "السيدية",
                          " نقدم الذ سندويشات البركر المميزة مع الصلصات الامريكية و الغربية الخاصة",
                          "adnan",
                          " ...\"  الطعم رهيب حبيته كلش والتوصيل سررريع ان شاء الله مو اخر مرة كلش ",
                          "1200",
                          "4.3",
                          "15",
                          "3"
                      ),
                      sliding(
                          "ونكز",
                          "https://scontent.fbgw41-1.fna.fbcdn.net/v/t1.6435-9/88445847_521158008538017_4229030885057363968_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=730e14&_nc_ohc=kiHvATeGd5oAX81Or4w&_nc_ht=scontent.fbgw41-1.fna&oh=00_AT_xEDY_bYDBfJPceGmj4Hty_ZyQktSXbgx6V59Y3l3dtA&oe=632CDB9E",
                          "الدورة",
                          "نقدم الذ الوجبات السريعة",
                          "alaa",
                          " ...\"  اويلي يابه يخبل بس محوصي منكم لان احلى شي كعدة المطعم  ",
                          "3000",
                          "4.3",
                          "10",
                          "3"
                      )
                    ],
                  ),
                ),


              ],
            )
          ],
        ),
      )
      ,


    );
  }

  Container sliding(
      String name,
      String img,
      String loc,
      String dec,
      String comname,
      String com,
      String price,
      String rate,
      String per,
      String time,
      ){
    return
      Container(

          margin: EdgeInsets.fromLTRB(0, 7, 13, 0),
          child:
          GestureDetector(
            child:
            Stack(
              children: [
                Container(
                  height: 500,
                  width: 300,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Container(
                        height: 150, width: 350,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("$img",),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15)
                        ),
                      ), //img

                      SizedBox(height: 5,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("$name",style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold,
                                  fontFamily: "Cario",color: Colors.black),),
                              Text(" ا \$\$\$ $price  الفطور ",style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold,
                                  fontFamily: "Cario",color: Colors.black),),

                              Row(
                                children: [
                                  Container(
                                    height: 30 , width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("اكسب نقاط",style: TextStyle(
                                            color: Colors.blueAccent
                                        ),),
                                        Icon(Icons.add_alarm_outlined,color: Colors.blueAccent,),

                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 3,),
                                  Container(
                                    height: 30 , width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("$rate",),
                                        Icon(Icons.star,color: Colors.greenAccent,),

                                      ],
                                    ),
                                  ),

                                ],
                              )

                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(27, 130, 0, 0),
                  width: 30, height: 43,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13)
                  ),
                  child: Column(
                    children: [
                      Text("$time"),
                      Text("س")
                    ],
                  ),
                ),
                Positioned(
                  left: 28, top: 12,
                  child:
                  Container(
                    height: 35, width: 35,

                    child: Icon(Icons.favorite_border,color: Colors.white,),
                  ),),
              ],
            ),
            onTap: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder:(context) => t102(
                name0: name,
                img0: img,
                dec0: dec,
                comname0: comname,
                com0: com,
                price0: price,
                rate0: rate,
                per0: per,
                time0: time,
                loc0: loc,
              )));
            },

          )


      )




    ;
  }
}
