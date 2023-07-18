
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:myntra_ui_clone/Screens/myntrainsider.dart';
import 'everydaypage.dart';
import 'profilepage.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {


  int currentindex = 0;
  List<Widget> pageList = [
    HomePage(), EveryDayPage(), ProfilePage()
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(

      appBar: AppBar(
        actions: [
              // SizedBox(width: MediaQuery.of(context).size.width*0.05,),
              Icon(Icons.search, size: 30, color: Colors.black),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Icon(Icons.notifications_none_outlined, size: 30, color: Colors.black,),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Icon(Icons.favorite_border_outlined,size: 30, color: Colors.black,),
              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
              Icon(Icons.shopping_bag_outlined, size: 30, color: Colors.black,),
              SizedBox(width: MediaQuery.of(context).size.width*0.05,),
            ], backgroundColor: Colors.white,
        leading: MaterialButton(
          child: Row(
            children: [
              Image(image: AssetImage('assets/images/logo.png'),),
              Text("BECOME\nINSDER >", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black),),
            ],
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> MyntraInsider()));
          },
        ),

        leadingWidth: MediaQuery.of(context).size.width*0.5,


      ),



      body: SingleChildScrollView(child:

        Column(children: [

          SizedBox(height: MediaQuery.of(context).size.height*0.015,),

          Row(children: [

            SizedBox(width: MediaQuery.of(context).size.width*0.03,),
            Container(
              child: FloatingActionButton.extended(
                label: Text("Fashion"), // <-- Text
                backgroundColor: Colors.black,
                icon: Image(image: AssetImage('assets/images/fashion.jpg'), width: 50),
                onPressed: () {},hoverColor: Colors.black,
              ),
              width: MediaQuery.of(context).size.width*0.45,
              decoration: BoxDecoration(border: Border.all(width: 2),borderRadius: BorderRadius.circular(50)),

            ),

            SizedBox(width: MediaQuery.of(context).size.width*0.04,),

            Container(
              child: FloatingActionButton.extended(
                label: Text("Beauty", style: TextStyle(color: Colors.black),), // <-- Text
                backgroundColor: Colors.white70,
                icon: Image(image: AssetImage('assets/images/beauty.png'), width: 50),
                onPressed: () {},
              ),
              width: MediaQuery.of(context).size.width*0.45,
              decoration: BoxDecoration(border: Border.all(width: 2),borderRadius: BorderRadius.circular(50)),
            ),

          ],),

          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            height: 80,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(child: Column(children: [

                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.height*0.07,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/category.png'),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),

                  Text("CATEGORY")
                ],),
                  width: 100
                  ,),

                Container(child: Column(children: [

                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.height*0.07,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/men.jpg'),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),

                  Text("MEN")
                ],),
                  width: 100,
                  ),

                Container(child: Column(children: [

                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.height*0.07,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/women.png'),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),

                  Text("WOMEN")
                ],),
                  width: 100,
                  ),

                Container(child: Column(children: [

                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.height*0.07,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/kids.png'),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),

                  Text("KIDS")
                ],),
                  width: 100,
                  ),



                Container(child: Column(children: [

                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.height*0.07,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/footwear.jpg'),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),

                  Text("FOOTWEAR")
                ],),
                  width: 100,
                  ),



              ],
            ),
          width: MediaQuery.of(context).size.width,),

          Center(child:
          Container(child:
          ElevatedButton(onPressed: (){}, child: Text("Sign Up For Exciting Deals! "), style: ElevatedButton.styleFrom(
            primary: Colors.black,foregroundColor: Colors.white70))
          , width: MediaQuery.of(context).size.width*0.96,
          height: MediaQuery.of(context).size.height*0.03,)
          ),

          SizedBox(height: 4,),

          Container(child:
          Image(image: AssetImage('assets/images/offer.jpg'))
          ,width: MediaQuery.of(context).size.width,),

          SizedBox(
          height: 200,
          width: double.infinity,
          child: AnotherCarousel(images: const [
            AssetImage('assets/images/slider1.jpg'),
            AssetImage('assets/images/slider2.png'),
            AssetImage('assets/images/slider3.jpg')
          ], dotSize: 6,dotColor: Colors.grey,dotBgColor: Colors.transparent,
              dotIncreasedColor: Colors.teal),),

          SizedBox(height: 8,),

          Container(
            child: Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                ElevatedButton(onPressed: (){}, child: Row(
                  children: [
                    Icon(Icons.verified_outlined),
                    Text("100% Original\nProducts", style: TextStyle(fontSize: 9),),
                  ],
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, ),),
                SizedBox(width: MediaQuery.of(context).size.width*0.02,),

                ElevatedButton(onPressed: (){}, child: Row(
                  children: [
                    Icon(Icons.local_shipping_outlined),
                    Text("Free Shipping\non 1st Order", style: TextStyle(fontSize: 8),),
                  ],
                ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, ),),
                SizedBox(width: MediaQuery.of(context).size.width*0.02,),

                ElevatedButton(onPressed: (){}, child: Row(
                  children: [
                    Icon(Icons.verified_outlined),
                    Text("100% Original\nProducts", style: TextStyle(fontSize: 8),),
                  ],
                ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, ),),



                ],
            ),
            width: MediaQuery.of(context).size.width,

          ),
           
          
          Container(child: Column(children: [

            SizedBox(height: 30,),
            Text("ALL-TIME FAVOURITES", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),),

            SizedBox(height: 30,),
            Row(children: [

              SizedBox(width: MediaQuery.of(context).size.width*0.025,),
              //creating card
              Container(child: 
                Column(children: [
                  SizedBox(height: 120, width: MediaQuery.of(context).size.width*0.46,
                      child: Image(image: AssetImage('assets/images/fav1.png'),),),


                  Text("Under 1099", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),)

                ],),
                decoration: BoxDecoration(border: Border.fromBorderSide(BorderSide(width: 0.02)))
                ,),

              SizedBox(width: MediaQuery.of(context).size.width*0.02,),

              Container(child:
              Column(children: [
                SizedBox(height: 120, width: MediaQuery.of(context).size.width*0.46,
                    child: Image(image: AssetImage('assets/images/fav2.png'))
                ),

                Text("Under 1099", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),)

              ],) ,
                decoration: BoxDecoration(border: Border.fromBorderSide(BorderSide(width: 0.02)))
                ,)
              
            ],),
            SizedBox(height: 20,),
            Row(children: [

              SizedBox(width: MediaQuery.of(context).size.width*0.025,),
              //creating card
              Container(child:
              Column(children: [
                SizedBox(height: 120, width: MediaQuery.of(context).size.width*0.46,
                  child: Image(image: AssetImage('assets/images/fav3.png'),),),


                Text("Under 1099", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),)

              ],),
                decoration: BoxDecoration(border: Border.fromBorderSide(BorderSide(width: 0.02)))
                ,),

              SizedBox(width: MediaQuery.of(context).size.width*0.02,),

              Container(child:
              Column(children: [
                SizedBox(height: 120, width: MediaQuery.of(context).size.width*0.46,
                    child: Image(image: AssetImage('assets/images/fav4.png'))
                ),

                Text("Under 1099", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),)

              ],) ,
                decoration: BoxDecoration(border: Border.fromBorderSide(BorderSide(width: 0.02)))
                ,)

            ],),
            SizedBox(height: 20,),
            Row(children: [

              SizedBox(width: MediaQuery.of(context).size.width*0.025,),
              //creating card
              Container(child:
              Column(children: [
                SizedBox(height: 120, width: MediaQuery.of(context).size.width*0.46,
                  child: Image(image: AssetImage('assets/images/fav5.png'),),),


                Text("Under 1099", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),)

              ],),
                decoration: BoxDecoration(border: Border.fromBorderSide(BorderSide(width: 0.02)))
                ,),

              SizedBox(width: MediaQuery.of(context).size.width*0.02,),

              Container(child:
              Column(children: [
                SizedBox(height: 120, width: MediaQuery.of(context).size.width*0.46,
                    child: Image(image: AssetImage('assets/images/fav6.png'))
                ),

                Text("Under 1099", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),)

              ],) ,
                decoration: BoxDecoration(border: Border.fromBorderSide(BorderSide(width: 0.02)))
                ,)

            ],),
            
          ],),),

          SizedBox(height: 50,),


        ],
        )
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



      floatingActionButton: Container(
        child: FloatingActionButton(onPressed: (){},
            child: Image.asset('assets/images/bottomlogo.png', width: 30,) ,foregroundColor: Colors.black, elevation: double.maxFinite,
          backgroundColor: Colors.white70, ),

        width: 45,
        height: 45,
        decoration: BoxDecoration(border: Border.all(width: 5),
            borderRadius: BorderRadius.circular(50),),
      ),
    ), debugShowCheckedModeBanner: false);
  }
}








