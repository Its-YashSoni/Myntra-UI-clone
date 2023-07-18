import 'package:flutter/material.dart';

import 'everydaypage.dart';
import 'homepage.dart';



class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {

  int currentindex = 2 ;
  List<Widget> pageList = [
    HomePage(), EveryDayPage(), ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
      ),

      bottomNavigationBar: Container(
        child: BottomNavigationBar(items: [

          BottomNavigationBarItem(icon: Image.asset('assets/images/bottomlogo.png', height: 25,), label: "Home"),

          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: "Everyday"),

          BottomNavigationBarItem(icon: Icon(Icons.person_3_outlined), label: "Profile"),

        ], selectedItemColor: Colors.pink, currentIndex: currentindex, onTap: (value) {
          setState(() {
            currentindex = value;
          });
          Navigator.push(context, MaterialPageRoute(builder: (context)=> pageList.elementAt(value)));
        },),

        decoration: BoxDecoration(border: Border(top: BorderSide(width: 1, color: Colors.grey,style: BorderStyle.values[0]))),
      ),


      body: SingleChildScrollView(child:

        Column(children: [

          Container(
            height: 190,
            child: Stack(
              children: [Column(children: [
                Container(
                  height: 190*0.58,
                  color: Colors.black54,
                ),
                Container(
                  height: 190*0.42,
                  color: Colors.white,
                )

              ],),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Container(
                    height: 120,
                    width: 120,
                    child: Icon(Icons.person_outline_outlined
                      , size: 75,),
                    // color: Colors.white,
                    decoration: BoxDecoration(border: Border.all(width: 0.15),color: Colors.white),
                  ),
                ),

                Positioned(
                  bottom: 20,
                    right: 20,
                    child: Container(
                        child: ElevatedButton(onPressed: (){}, child: Text("LOG IN/SIGN UP"),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),),
                      width: MediaQuery.of(context).size.width*0.5,
                      height: 45,
                    )
                )
           ] ),
          ),

          Container(
            height: 10,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
          ),



          Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: Row(children: [
              SizedBox(width: 20,),
              Icon(Icons.shopping_cart_outlined, size: 30,),
              SizedBox(width: 20,),
              Column(children: [
                SizedBox(height: 20,),
                Text("Orders", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                Text("Check your order status", style: TextStyle(fontSize: 13, color: Colors.black45))
              ],
              crossAxisAlignment: CrossAxisAlignment.start,)

            ],mainAxisAlignment: MainAxisAlignment.start),
            

          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
          ),

          Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: Row(children: [
              SizedBox(width: 20,),
              Icon(Icons.headset_mic_outlined, size: 30,),
              SizedBox(width: 20,),
              Column(children: [
                SizedBox(height: 20,),
                Text("Help Center", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                Text("Help regarding your recent purchases", style: TextStyle(fontSize: 13, color: Colors.black45))
              ],
                crossAxisAlignment: CrossAxisAlignment.start,)

            ],mainAxisAlignment: MainAxisAlignment.start),


          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
          ),

          Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: Row(children: [
              SizedBox(width: 20,),
              Icon(Icons.favorite_border_outlined, size: 30,),
              SizedBox(width: 20,),
              Column(children: [
                SizedBox(height: 20,),
                Text("Whishlist", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                Text("Your most loved styles", style: TextStyle(fontSize: 13, color: Colors.black45),)
              ],
                crossAxisAlignment: CrossAxisAlignment.start,)

            ],mainAxisAlignment: MainAxisAlignment.start),


          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
          ),


          Container(
            height: 10,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
          ),


          Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: Row(children: [
              SizedBox(width: 20,),
              Icon(Icons.qr_code, size: 30,),
              SizedBox(width: 20,),
              Column(children: [
                SizedBox(height: 25,),
                Text("Scan for coupon", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),

              ],
                crossAxisAlignment: CrossAxisAlignment.start,)

            ],mainAxisAlignment: MainAxisAlignment.start),


          ),


          Container(
            height: 10,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
          ),


          Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            child: Row(children: [
              SizedBox(width:70,),
              Column(children: [
                SizedBox(height: 25,),
                Text("FAQs", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black38),),],
                crossAxisAlignment: CrossAxisAlignment.start,)
            ],mainAxisAlignment: MainAxisAlignment.start),
          ),
          Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            child: Row(children: [
              SizedBox(width:70,),
              Column(children: [
                SizedBox(height: 25,),
                Text("ABOUT US", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black38),),],
                crossAxisAlignment: CrossAxisAlignment.start,)
            ],mainAxisAlignment: MainAxisAlignment.start),
          ),
          Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            child: Row(children: [
              SizedBox(width:70,),
              Column(children: [
                SizedBox(height: 25,),
                Text("TERMS OF USE", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black38),),],
                crossAxisAlignment: CrossAxisAlignment.start,)
            ],mainAxisAlignment: MainAxisAlignment.start),
          ),
          Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            child: Row(children: [
              SizedBox(width:70,),
              Column(children: [
                SizedBox(height: 25,),
                Text("PRIVACY POLICY", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black38),),],
                crossAxisAlignment: CrossAxisAlignment.start,)
            ],mainAxisAlignment: MainAxisAlignment.start),
          ),


          Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
            child: Center(child: Text('APP VERSION 4.2306.21', style: TextStyle(color: Colors.black45),)),
          ),

        ],)
        ,),


    ),
      debugShowCheckedModeBanner: false,
    );
  }
}
