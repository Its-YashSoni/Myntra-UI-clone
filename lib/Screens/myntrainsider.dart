import 'package:flutter/material.dart';

class MyntraInsider extends StatefulWidget {
  const MyntraInsider({super.key});

  @override
  State<MyntraInsider> createState() => _MyntraInsiderState();
}

class _MyntraInsiderState extends State<MyntraInsider> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      backgroundColor: Colors.black12,
      
      appBar: AppBar(
        
        title: MaterialButton(
          child: Row(children: [

            Icon(Icons.arrow_back),
            SizedBox(width: 5,),
            Text("MYNTRA INSIDER", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
          ],crossAxisAlignment: CrossAxisAlignment.start),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
      ),
      
      body: SingleChildScrollView(
        child: Column(children: [
          
          Image(image: AssetImage('assets/images/insider.jpg'), width: MediaQuery.of(context).size.width,),
          SizedBox(height: 0.3,),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0,10),
            child: Text('Become An INSIDER!', style: TextStyle(fontSize: 29, color: Colors.amber, fontWeight: FontWeight.w900),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Text('Join the insider programme and earn Supercoins with every purchase and much more. Log in now!',
              style: TextStyle(fontSize: 20, color: Colors.white38, fontWeight: FontWeight.w900),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
            child: Text('New Goal Criteria',
              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w900),),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              color: Colors.white24,
              height: 90, width: MediaQuery.of(context).size.width*0.9,
              child: Row(children: [

                SizedBox(width: MediaQuery.of(context).size.width*0.04,),
                Image(image: AssetImage('assets/images/crown.png'), width: 60,),
                SizedBox(width: MediaQuery.of(context).size.width*0.04,),
                Column(
                  children: [
                    SizedBox(height: 10,),
                    Text('₹0', style: TextStyle(fontSize: 35, color: Colors.white),),
                    Text("You've Spent", style: TextStyle(fontSize: 15, color: Colors.white54),),
                  ], mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.18,),
                Column(
                  children: [
                    SizedBox(height: 15,),
                    Text('₹7000', style: TextStyle(fontSize: 25, color: Colors.white),),
                    Text("Goal", style: TextStyle(fontSize: 15, color: Colors.white54),),
                  ], mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.end,
                ),

              ],),
            ),
          ),
          Container(width:MediaQuery.of(context).size.width*0.9 ,height: 1,color: Colors.black,),
          Center(
            child: Container(
              color: Colors.white24,
              height: 90, width: MediaQuery.of(context).size.width*0.9,
              child: Row(children: [

                SizedBox(width: MediaQuery.of(context).size.width*0.04,),
                Image(image: AssetImage('assets/images/crown.png'), width: 60,),
                SizedBox(width: MediaQuery.of(context).size.width*0.04,),
                Column(
                  children: [
                    SizedBox(height: 10,),
                    Text('₹0', style: TextStyle(fontSize: 35, color: Colors.white),),
                    Text("You've Spent", style: TextStyle(fontSize: 15, color: Colors.white54),),
                  ], mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.18,),
                Column(
                  children: [
                    SizedBox(height: 15,),
                    Text('₹7000', style: TextStyle(fontSize: 25, color: Colors.white),),
                    Text("Goal", style: TextStyle(fontSize: 15, color: Colors.white54),),
                  ], mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.end,
                ),

              ],),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 9.6, 0),
            child: Text('Note: Recent purchases will only reflect in the goal once the return window is over',
              style: TextStyle(fontSize: 12, color: Colors.white54, fontWeight: FontWeight.w900),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 0,10),
            child: Text('Benefits Of Joining The Program', style: TextStyle(fontSize: 20, color: Colors.amber, fontWeight: FontWeight.w900),),
          ),
          SizedBox(height: 25,),
          Row(children: [
            SizedBox(width: MediaQuery.of(context).size.width*0.08,),
            Image(image: AssetImage('assets/images/l1.jpg'),width: 70,),
            SizedBox(width: MediaQuery.of(context).size.width*0.05,),
            Text('Early Access to The Sales', style: TextStyle(color: Colors.white, fontSize: 19),)
          ],),
          SizedBox(height: 8,),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              color: Colors.white38,
              height: 1,
            ),
          ),
          SizedBox(height: 25,),
          Row(children: [
            SizedBox(width: MediaQuery.of(context).size.width*0.08,),
            Image(image: AssetImage('assets/images/l2.jpg'),width: 70,),
            SizedBox(width: MediaQuery.of(context).size.width*0.05,),
            SizedBox(width: MediaQuery.of(context).size.width*0.64,child: Text('Insider Exclusive Rewards & Benefits', style: TextStyle(color: Colors.white, fontSize: 18),))
          ],),
          SizedBox(height: 8,),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              color: Colors.white38,
              height: 1,
            ),
          ),
          SizedBox(height: 25,),
          Row(children: [
            SizedBox(width: MediaQuery.of(context).size.width*0.08,),
            Image(image: AssetImage('assets/images/l3.jpg'),width: 70,),
            SizedBox(width: MediaQuery.of(context).size.width*0.05,),
            Text('Priority Customer Support', style: TextStyle(color: Colors.white, fontSize: 19),)
          ],),
          SizedBox(height: 8,),
         SizedBox(height: 150,)
        ],crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start,),
      ),

      bottomSheet:  BottomSheet(onClosing: (){}, builder: (context) {
        return Container(child: Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width*0.04,),
            Column(children: [

              Container(
                child: ElevatedButton(onPressed: (){},  child: Text('LOG IN'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.pink,),),
                width: MediaQuery.of(context).size.width*0.93,
              ),
              SizedBox(height: 5,),
              Text('By enrolling you agree to', style: TextStyle(fontSize: 15, color: Colors.white60),),
              SizedBox(height: 5,),
              Text('Insider Terms & Conditions', style: TextStyle(fontSize: 20, color: Colors.pink, fontWeight: FontWeight.w900),)

            ]   ),
          ],
        ),height: 120, color: Colors.black87,);
      },)
    ),
    debugShowCheckedModeBanner: false,);
  }
}
