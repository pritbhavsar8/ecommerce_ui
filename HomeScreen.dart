import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget
{
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin {
  late TabController tabController;
  bool button1Pressed = false;
  bool button2Pressed = false;
  bool button3Pressed = false;
  bool button4Pressed = false;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
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
                    height: 60.0,
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
                padding: EdgeInsets.only(top: 8.0,left: 10.0),
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
                          padding: const EdgeInsets.only(left: 39.0,top: 28.0),
                          child: Image.asset("img/iphone13.png",fit: BoxFit.cover,height: 124,width: 179,)
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
               // TAB BAR
              // TabBar(
              //     tabs: [
              //       Tab(
              //         child: ElevatedButton(
              //           style: ElevatedButton.styleFrom(
              //               shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(12.0),
              //               )
              //           ),
              //             onPressed: (){
              //               tabController.animateTo(0);
              //             }, child: Text("All")
              //         ),
              //       ),
              //       Tab(
              //         child: ElevatedButton(
              //             style: ElevatedButton.styleFrom(
              //                 shape: RoundedRectangleBorder(
              //                   borderRadius: BorderRadius.circular(12.0),
              //                 )
              //             ),
              //             onPressed: (){
              //
              //             }, child: Text("Airpods")
              //         ),
              //       ),
              //       Tab(
              //         child: ElevatedButton(
              //             style: ElevatedButton.styleFrom(
              //                 shape: RoundedRectangleBorder(
              //                   borderRadius: BorderRadius.circular(12.0),
              //                 )
              //             ),
              //             onPressed: (){
              //               tabController.animateTo(0);
              //             }, child: Text("Laptop")
              //         ),
              //       ),
              //       Tab(
              //         child: ElevatedButton(
              //             style: ElevatedButton.styleFrom(
              //                 shape: RoundedRectangleBorder(
              //                   borderRadius: BorderRadius.circular(12.0),
              //                 )
              //             ),
              //             onPressed: (){
              //               tabController.animateTo(0);
              //             }, child: Text("Headphone")
              //         ),
              //       )
              //     ],
              //   controller: tabController,
              //   indicator: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12.0),
              //     color: Colors.black
              //   ),
              //   isScrollable: true,
              //   onTap: (value) {
              //     tabController.animateTo();
              //   },
              //
              // ),
               Container(
                 height: 50.0,
                 child: SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: (button1Pressed)?Colors.black:Colors.white,
                                foregroundColor: (button1Pressed)?Colors.white:Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                )
                            ),
                            onFocusChange: (value) {
                              setState(() {
                                button1Pressed = value;
                              });
                            },
                            onPressed: (){
                              setState(() {
                                button1Pressed =!button1Pressed;
                              });
                              tabController.animateTo(0);
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
                            onFocusChange:(value) {
                              setState(() {
                                button2Pressed= value;
                              });
                            },
                            onPressed: (){
                              setState(() {
                                button2Pressed =!button2Pressed;
                              });
                              tabController.animateTo(1);
                            }, child: Text("AirPods")
                        ),
                        SizedBox(width: 8.0,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                )
                            ),
                            onFocusChange: (value) {

                            },
                            onPressed: (){
                              tabController.animateTo(2);
                            }, child: Text("Laptop")
                        ),
                        SizedBox(width: 8.0,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                )
                            ),
                            onPressed: (){
                              tabController.animateTo(3);
                            }, child: Text("HeadPhone")
                        )
                      ],
                    ),
                 ),
               ),
               SizedBox(height: 20.0,),
               Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Image.asset("img/iphone13.png"),
                                        Positioned(
                                            top: 20,
                                            left: 85,
                                            child: Container(
                                                width: 35.0,
                                                height: 35.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(8.0),
                                                    color: Color(0xffFFFFFF)

                                                ),
                                                child: Icon(Icons.favorite_outline)
                                            )
                                        )

                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Row(
                                    children: [
                                      Text("Iphone 14",style: TextStyle(color: Colors.grey.shade700),),
                                      SizedBox(width: 20.0,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                          Text("4.9"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.0),
                                  Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),),

                                ],
                              ),
                              SizedBox(width: 25.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: Colors.grey.shade300
                                    ),
                                    child:Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Image.asset("img/Laptop.png"),
                                        Positioned(
                                            top: 20,
                                            left: 85,
                                            child: Container(
                                                width: 35.0,
                                                height: 35.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(8.0),
                                                    color: Color(0xffFFFFFF)

                                                ),
                                                child: Icon(Icons.favorite_outline)
                                            )
                                        )

                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Row(
                                    children: [
                                      Text("Laptop",style: TextStyle(color: Colors.grey.shade700)),
                                      SizedBox(width: 30.0,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                          Text("4.9"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              )

                            ],
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                         Image.asset("img/iphone13.png"),
                                         Positioned(
                                           top: 20,
                                             left: 85,
                                             child: Container(
                                               width: 35.0,
                                                height: 35.0,
                                                 decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(8.0),
                                                   color: Color(0xffFFFFFF)

                                                 ),
                                                 child: Icon(Icons.favorite_outline)
                                             )
                                         )

                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      Text("Iphone 14",style: TextStyle(color: Colors.grey.shade700),),
                                      SizedBox(width: 20,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                          Text("4.9"),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              ),
                              SizedBox(width: 25.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Image.asset("img/Laptop.png"),
                                        Positioned(
                                            top: 20,
                                            left: 85,
                                            child: Container(
                                                width: 35.0,
                                                height: 35.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(8.0),
                                                    color: Color(0xffFFFFFF)

                                                ),
                                                child: Icon(Icons.favorite_outline)
                                            )
                                        )

                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      Text("Laptop",style: TextStyle(color: Colors.grey.shade700),),
                                      SizedBox(width: 30.0,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                          Text("4.9"),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Image.asset("img/iphone13.png") ,
                                  ),
                                  SizedBox(height: 10.0,),
                                  Row(
                                    children: [
                                      Text("Iphone 14",style: TextStyle(color: Colors.grey.shade700),),
                                      SizedBox(width: 20.0,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                          Text("4.9"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.0),
                                  Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),),

                                ],
                              ),
                              SizedBox(width: 25.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Image.asset("img/Laptop.png") ,
                                  ),
                                  SizedBox(height: 10.0,),
                                  Row(
                                    children: [
                                      Text("Laptop",style: TextStyle(color: Colors.grey.shade700)),
                                      SizedBox(width: 30.0,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                          Text("4.9"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              )

                            ],
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Image.asset("img/iphone13.png"),
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      Text("Iphone 14",style: TextStyle(color: Colors.grey.shade700),),
                                      SizedBox(width: 20,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                          Text("4.9"),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              ),
                              SizedBox(width: 25.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Image.asset("img/Laptop.png") ,
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      Text("Laptop",style: TextStyle(color: Colors.grey.shade700),),
                                      SizedBox(width: 30.0,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                          Text("4.9"),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Image.asset("img/iphone13.png") ,
                                  ),
                                  SizedBox(height: 10.0,),
                                  Row(
                                    children: [
                                      Text("Iphone 14",style: TextStyle(color: Colors.grey.shade700),),
                                      SizedBox(width: 20.0,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                          Text("4.9"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.0),
                                  Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),),

                                ],
                              ),
                              SizedBox(width: 25.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Image.asset("img/Laptop.png") ,
                                  ),
                                  SizedBox(height: 10.0,),
                                  Row(
                                    children: [
                                      Text("Laptop",style: TextStyle(color: Colors.grey.shade700)),
                                      SizedBox(width: 30.0,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                          Text("4.9"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              )

                            ],
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Image.asset("img/iphone13.png"),
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      Text("Iphone 14",style: TextStyle(color: Colors.grey.shade700),),
                                      SizedBox(width: 20,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                          Text("4.9"),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              ),
                              SizedBox(width: 25.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Image.asset("img/Laptop.png") ,
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      Text("Laptop",style: TextStyle(color: Colors.grey.shade700),),
                                      SizedBox(width: 30.0,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                          Text("4.9"),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Image.asset("img/iphone13.png") ,
                                  ),
                                  SizedBox(height: 10.0,),
                                  Row(
                                    children: [
                                      Text("Iphone 14",style: TextStyle(color: Colors.grey.shade700),),
                                      SizedBox(width: 20.0,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                          Text("4.9"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.0),
                                  Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),),

                                ],
                              ),
                              SizedBox(width: 25.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Image.asset("img/Laptop.png") ,
                                  ),
                                  SizedBox(height: 10.0,),
                                  Row(
                                    children: [
                                      Text("Laptop",style: TextStyle(color: Colors.grey.shade700)),
                                      SizedBox(width: 30.0,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                          Text("4.9"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              )

                            ],
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Image.asset("img/iphone13.png"),
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      Text("Iphone 14",style: TextStyle(color: Colors.grey.shade700),),
                                      SizedBox(width: 20,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                          Text("4.9"),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              ),
                              SizedBox(width: 25.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Image.asset("img/Laptop.png") ,
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      Text("Laptop",style: TextStyle(color: Colors.grey.shade700),),
                                      SizedBox(width: 30.0,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                                          Text("4.9"),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
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