import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/_http/_html/_file_decoder_html.dart';

import 'homepage.dart';
import 'profilepage.dart';



class EveryDayPage extends StatefulWidget {
  const EveryDayPage({super.key});

  @override
  State<EveryDayPage> createState() => _EveryDayPageState();
}

class _EveryDayPageState extends State<EveryDayPage> {

  int currentindex = 1 ;
  List<Widget> pageList = [
    HomePage(), EveryDayPage(), ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text("Myntra Everyday", style: TextStyle(color: Colors.black),),
        actions: [
          // SizedBox(width: MediaQuery.of(context).size.width*0.05,),
          Icon(Icons.search, size: 30, color: Colors.black),
          SizedBox(width: MediaQuery.of(context).size.width*0.03,),
          Icon(Icons.favorite_border_outlined,size: 30, color: Colors.black,),
          SizedBox(width: MediaQuery.of(context).size.width*0.03,),
          Icon(Icons.shopping_bag_outlined, size: 30, color: Colors.black,),
          SizedBox(width: MediaQuery.of(context).size.width*0.05,),
        ], backgroundColor: Colors.white,



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
      
      
      body: SingleChildScrollView(
        child: Column(children: [
          
          SizedBox(
            width: MediaQuery.of(context).size.width,
              child: Image(image: AssetImage('assets/images/1.jpg'))),

          Container(child: Padding(
            padding: const EdgeInsets.fromLTRB(10,0,0,0),
            child: Column(children: [

              SizedBox(height: 25,),
              Text('CATEGORIES ON THE RISE', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 8,),
              Text("Get, Set, Restock!", style: TextStyle(fontSize: 17)),

              SizedBox(height: 18,),
               Image(image: AssetImage('assets/images/c5.jpg',),
                width: MediaQuery.of(context).size.width,)

            ],crossAxisAlignment: CrossAxisAlignment.start,),
          ) ,),

         SizedBox(height: 15,),
         SizedBox(
           height: 400,
           width: MediaQuery.of(context).size.width,
         child: Container(
           color: Colors.teal,
           child: Column(
             children: [

               SizedBox(height: 10,),
               Image(image: AssetImage('assets/images/deals.png'),
                 width: MediaQuery.of(context).size.width*.5,),

                SizedBox(height: 10,),

             Container(
               margin: const EdgeInsets.symmetric(vertical: 15),
               height: 230,
               child: ListView(
                 // This next line does the trick.
                 scrollDirection: Axis.horizontal,
                 children: <Widget>[
                   Container(child: Row(children: [

                     SizedBox(width: 40,),
                     Container(
                       height: 220,
                       width: 180,
                       child: Stack(
                         children: [
                           Image(image: AssetImage('assets/images/cart1.jpg')),
                           Positioned(
                             bottom: 15,
                               left: 30,
                               child: Text('Under 899', style: TextStyle(fontSize: 20,
                                   fontWeight: FontWeight.w900, color: Colors.white,
                                   backgroundColor: Colors.black54,),))
                         ],),),
                     Container(
                       height: 220,
                       width: 180,
                       child: Stack(
                         children: [
                           Image(image: AssetImage('assets/images/cart1.jpg')),
                           Positioned(
                               bottom: 15,
                               left: 30,
                               child: Text('Under 899', style: TextStyle(fontSize: 20,
                                 fontWeight: FontWeight.w900, color: Colors.white,
                                 backgroundColor: Colors.black54,),))
                         ],),),
                     Container(
                       height: 220,
                       width: 180,
                       child: Stack(
                         children: [
                           Image(image: AssetImage('assets/images/cart1.jpg')),
                           Positioned(
                               bottom: 15,
                               left: 30,
                               child: Text('Under 899', style: TextStyle(fontSize: 20,
                                 fontWeight: FontWeight.w900, color: Colors.white,
                                 backgroundColor: Colors.black54,),))
                         ],),),
                     Container(
                       height: 220,
                       width: 180,
                       child: Stack(
                         children: [
                           Image(image: AssetImage('assets/images/cart1.jpg')),
                           Positioned(
                               bottom: 15,
                               left: 30,
                               child: Text('Under 899', style: TextStyle(fontSize: 20,
                                 fontWeight: FontWeight.w900, color: Colors.white,
                                 backgroundColor: Colors.black54,),))
                         ],),)

                   ]),)],),)]),),),

            SizedBox(height: 100,),

    ]),)),
      debugShowCheckedModeBanner: false,
    );
  }
}
