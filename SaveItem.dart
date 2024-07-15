
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

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0,right: 20.0,top: 20.0),
                  child: ListView(
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
                                            child: Icon(Icons.favorite,color: Colors.red,)
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
                          SizedBox(width: 20.0,),
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
                                child:  Stack(
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
                                            child: Icon(Icons.favorite,color: Colors.red,)
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
                                child:  Stack(
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
                                            child: Icon(Icons.favorite,color: Colors.red,)
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
                          SizedBox(width: 20.0,),
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
                                child:  Stack(
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
                                            child: Icon(Icons.favorite,color: Colors.red,)
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

                        ],
                      ),
                      SizedBox(height: 20,),
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
                                child:  Stack(
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
                                            child: Icon(Icons.favorite,color: Colors.red,)
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
                          SizedBox(width: 20.0,),
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
                                child:  Stack(
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
                                            child: Icon(Icons.favorite,color: Colors.red,)
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
