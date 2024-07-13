import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = -1;

  // void _onButtonPressed(int index) {
  //   setState(() {
  //     if (_selectedIndex == index) {
  //       _selectedIndex = -1;
  //     } else {
  //       _selectedIndex = index;
  //     }
  //   });
  // }
  bool button1Pressed = false;
  bool button2Pressed = false;
  bool button3Pressed = false;
  bool button4Pressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discover",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                  Icon(Icons.notifications_outlined),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 270.0,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade50,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          prefixIcon: Icon(Icons.search_rounded,color: Colors.grey,),
                          hintText: "Search For mobile...",
                          hintStyle: TextStyle(
                            color: Colors.grey
                          ),
                          suffixIcon: Icon(Icons.mic_outlined,color: Colors.grey,)
                      ),
                    ),
                  ),
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.green.shade300
                    ),
                    child: Icon(Icons.equalizer,color: Colors.white,),
                  )
                ],
              ),
              SizedBox(height: 10.0,),
              Container(
                padding: EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width,
                height: 160.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.green.shade300
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Clearance",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold),),
                            Text("Sales",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold),),
                            SizedBox(height: 20.0,),
                            Container(
                              // padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: Colors.white
                              ),
                              width: 100.0,
                              height:40.0,
                              child: Center(child: Text("Up to 50%",style: TextStyle(color: Colors.green,fontSize: 12.0),)),
                            )
                          ],
                        ),
                       Padding(
                         padding: const EdgeInsets.only(left: 33.0,top: 21.0),
                         child: Container(
                           width: 179.0,
                           height: 123.0,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               fit: BoxFit.cover,
                                 image: AssetImage("img/iphone_13.PNG27.png")
                             )
                           ),
                         ),
                       )
                        // Image.asset("img/iphone_13.PNG27.png",width: 233.0,height: 130.0,fit: BoxFit.cover,)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Catagories",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("See all",style: TextStyle(color: Colors.green),)
                ],
              ),
              SizedBox(height: 20.0,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: (button1Pressed)?Colors.black:Colors.white,
                        foregroundColor: (button1Pressed)?Colors.white:Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        )
                      ),
                        onPressed: (){
                        setState(() {
                          button1Pressed =!button1Pressed;
                        });
                        }, child: Text("All")
                    ),
                    SizedBox(width: 8.0,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: (button2Pressed)?Colors.black:Colors.white,
                            foregroundColor: (button2Pressed)?Colors.white:Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            )
                        ),
                        onPressed: (){
                          setState(() {
                            button2Pressed =!button2Pressed;
                          });
                        }, child: Text("AirPods")
                    ),
                    SizedBox(width: 8.0,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: (button3Pressed)?Colors.black:Colors.white,
                            foregroundColor: (button3Pressed)?Colors.white:Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            )
                        ),
                        onPressed: (){
                          setState(() {
                            button3Pressed =!button3Pressed;
                          });
                        }, child: Text("Laptop")
                    ),
                    SizedBox(width: 8.0,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: (button4Pressed)?Colors.black:Colors.white,
                            foregroundColor: (button4Pressed)?Colors.white:Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            )
                        ),
                        onPressed: (){
                          setState(() {
                            button4Pressed =!button4Pressed;
                          });
                        }, child: Text("HeadPhone")
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Expanded(
                child: Column(
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
                            SizedBox(height: 10.0,),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Iphone 14",style: TextStyle(color: Colors.grey.shade500),),
                                      SizedBox(height: 5.0,),
                                      Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),)
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
                        SizedBox(width: 25.0,),
                        Column(
                          children: [
                            Container(
                              height: 150.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.red.shade50
                              ),
                              child: Image.asset("img/airpods.png") ,
                            ),
                            SizedBox(height: 10.0,),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Airpode",style: TextStyle(color: Colors.grey.shade500)),
                                      SizedBox(height: 5.0,),
                                      Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),)
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
                        )
          
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
                              child: Image.asset("img/iphone_13.PNG27.png"),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Iphone 14",style: TextStyle(color: Colors.grey.shade500),),
                                      SizedBox(height: 5.0,),
                                      Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),)
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
                        SizedBox(width: 25.0,),
                        Column(
                          children: [
                            Container(
                              height: 150.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.red.shade50
                              ),
                              child: Image.asset("img/airpods.png") ,
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Airpode",style: TextStyle(color: Colors.grey.shade500),),
                                      SizedBox(height: 5.0,),
                                      Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),)
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
                        )
          
                      ],
                    )
                  ],
                ),
              )
          
            ],
          ),
        ),
      ),
    );
  }
}
