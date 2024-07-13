import 'package:flutter/material.dart';

class Saveitem extends StatefulWidget {
  const Saveitem({super.key});

  @override
  State<Saveitem> createState() => _SaveitemState();
}

class _SaveitemState extends State<Saveitem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
         children: [
           SizedBox(height: 30.0,),
           Row(
             children: [
               SizedBox(width: 20.0,),
               Icon(Icons.arrow_back_outlined),
               SizedBox(width: 70.0,),
               Text("Saved Items",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
               SizedBox(width: 70.0,),
               Icon(Icons.notifications_outlined)
             ],
           ),
           SizedBox(height: 30.0,),
           Expanded(
             child: Padding(
               padding: const EdgeInsets.all(20.0),
               child: ListView(
                 children: [
                   Row(
                     children: [
                       Column(
                         children: [
                           Container(
                             height: 150.0,
                             width: 150.0,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(12.0),
                                 color: Colors.red.shade50
                             ),
                             child: Image.asset("img/iphone_13.PNG27.png") ,
                           ),
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(right: 38.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text("Airpode"),
                                     Text("\$149",style: TextStyle(fontWeight: FontWeight.bold),)
                                   ],
                                 ),
                               ),
                               Row(
                                 children: [
                                   Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                   Text("4.9"),
                                 ],
                               )
                             ],
                           )
                         ],
                       ),
                       SizedBox(width: 20.0,),
                       Column(
                         children: [
                           Container(
                             height: 150.0,
                             width: 150.0,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(12.0),
                                 color: Colors.red.shade50
                             ),
                             child: Image.asset("img/iphone_13.PNG27.png") ,
                           ),
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(right: 38.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text("Airpode"),
                                     Text("\$149",style: TextStyle(fontWeight: FontWeight.bold),)
                                   ],
                                 ),
                               ),
                               Row(
                                 children: [
                                   Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                   Text("4.9"),
                                 ],
                               )
                             ],
                           )
                         ],
                       ),

                     ],
                   ),
                   SizedBox(height: 20.0,),
                   Row(
                     children: [
                       Column(
                         children: [
                           Container(
                             height: 150.0,
                             width: 150.0,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(12.0),
                                 color: Colors.red.shade50
                             ),
                             child: Image.asset("img/iphone_13.PNG27.png") ,
                           ),
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(right: 38.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text("Airpode"),
                                     Text("\$149",style: TextStyle(fontWeight: FontWeight.bold),)
                                   ],
                                 ),
                               ),
                               Row(
                                 children: [
                                   Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                   Text("4.9"),
                                 ],
                               )
                             ],
                           )
                         ],
                       ),
                       SizedBox(width: 20.0,),
                       Column(
                         children: [
                           Container(
                             height: 150.0,
                             width: 150.0,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(12.0),
                                 color: Colors.red.shade50
                             ),
                             child: Image.asset("img/iphone_13.PNG27.png") ,
                           ),
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(right: 38.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text("Airpode"),
                                     Text("\$149",style: TextStyle(fontWeight: FontWeight.bold),)
                                   ],
                                 ),
                               ),
                               Row(
                                 children: [
                                   Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                   Text("4.9"),
                                 ],
                               )
                             ],
                           )
                         ],
                       ),

                     ],
                   ),
                   SizedBox(height: 20,),
                   Row(
                     children: [
                       Column(
                         children: [
                           Container(
                             height: 150.0,
                             width: 150.0,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(12.0),
                                 color: Colors.red.shade50
                             ),
                             child: Image.asset("img/iphone_13.PNG27.png") ,
                           ),
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(right: 38.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text("Airpode"),
                                     Text("\$149",style: TextStyle(fontWeight: FontWeight.bold),)
                                   ],
                                 ),
                               ),
                               Row(
                                 children: [
                                   Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                   Text("4.9"),
                                 ],
                               )
                             ],
                           )
                         ],
                       ),
                       SizedBox(width: 20.0,),
                       Column(
                         children: [
                           Container(
                             height: 150.0,
                             width: 150.0,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(12.0),
                                 color: Colors.red.shade50
                             ),
                             child: Image.asset("img/iphone_13.PNG27.png") ,
                           ),
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(right: 38.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text("Airpode"),
                                     Text("\$149",style: TextStyle(fontWeight: FontWeight.bold),)
                                   ],
                                 ),
                               ),
                               Row(
                                 children: [
                                   Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                   Text("4.9"),
                                 ],
                               )
                             ],
                           )
                         ],
                       ),

                     ],
                   ),

                 ],
               ),
             ),
           ),
         ],
        ),
      )
    );
  }
}
