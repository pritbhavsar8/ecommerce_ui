import 'package:flutter/material.dart';

class Mycart extends StatefulWidget {
  const Mycart({super.key});

  @override
  State<Mycart> createState() => _MycartState();
}

class _MycartState extends State<Mycart> {
  int number1 = 2;
  int number2 = 2;
  int number3 = 2;
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
                SizedBox(width: 95.0,),
                Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                SizedBox(width: 110.0,),
                Icon(Icons.notifications_outlined)
              ],
            ),
            SizedBox(width: 30.0,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Colors.red.shade100)
                      ),
                      width: MediaQuery.of(context).size.width,
                      height:140.0,
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red.shade50,
                                borderRadius: BorderRadius.circular(10.0),
                                // border: Border.all(color: Colors.pinkAccent.shade100)
                            ),
                            width: 100.0,
                            height: 100.0,
                            child: Image.asset("img/iphone_13.PNG27.png"),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Apple Airpods Pro",style: TextStyle(fontWeight: FontWeight.bold),),
                                      SizedBox(width: 30.0,),
                                      Icon(Icons.close,color: Colors.grey,)
                                    ],
                                  ),
                                  Text("Apple",style: TextStyle(color: Colors.pinkAccent.shade100),),
                                  SizedBox(height: 20.0,),
                                  Row(

                                    children: [
                                      Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                      SizedBox(width: 40.0,),
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                number1--;
                                              });

                                            },
                                            child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8.0),
                                                  border: Border.all(color: Colors.pinkAccent.shade100)
                                              ),
                                              child: Center(child: Text("-")),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Text(number1.toString()),
                                          SizedBox(width: 10,),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                number1++;
                                              });

                                            },
                                            child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8.0),
                                                  border: Border.all(color: Colors.pinkAccent.shade100)
                                              ),
                                              child: Center(child: Text("+")),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )

                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                    ),
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.red.shade100)
                      ),
                      width: MediaQuery.of(context).size.width,
                      height:140.0,
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red.shade50,
                              borderRadius: BorderRadius.circular(10.0),
                              // border: Border.all(color: Colors.pinkAccent.shade100)
                            ),
                            width: 100.0,
                            height: 100.0,
                            child: Image.asset("img/iphone_13.PNG27.png"),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Apple Airpods Pro",style: TextStyle(fontWeight: FontWeight.bold),),
                                      SizedBox(width: 30.0,),
                                      Icon(Icons.close,color: Colors.grey,)
                                    ],
                                  ),
                                  Text("Apple",style: TextStyle(color: Colors.pinkAccent.shade100),),
                                  SizedBox(height: 20.0,),
                                  Row(

                                    children: [
                                      Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                      SizedBox(width: 40.0,),
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                number2--;
                                              });
                                            },
                                            child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8.0),
                                                  border: Border.all(color: Colors.pinkAccent.shade100)
                                              ),
                                              child: Center(child: Text("-")),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Text(number2.toString()),
                                          SizedBox(width: 10,),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                number2++;
                                              });
                                            },
                                            child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8.0),
                                                  border: Border.all(color: Colors.pinkAccent.shade100)
                                              ),
                                              child: Center(child: Text("+")),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )

                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                    ),
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.red.shade100)
                      ),
                      width: MediaQuery.of(context).size.width,
                      height:140.0,
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red.shade50,
                              borderRadius: BorderRadius.circular(10.0),
                              // border: Border.all(color: Colors.pinkAccent.shade100)
                            ),
                            width: 100.0,
                            height: 100.0,
                            child: Image.asset("img/iphone_13.PNG27.png"),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Apple Airpods Pro",style: TextStyle(fontWeight: FontWeight.bold),),
                                      SizedBox(width: 30.0,),
                                      Icon(Icons.close,color: Colors.grey,)
                                    ],
                                  ),
                                  Text("Apple",style: TextStyle(color: Colors.pinkAccent.shade100),),
                                  SizedBox(height: 20.0,),
                                  Row(

                                    children: [
                                      Text("\$149.00",style: TextStyle(fontWeight: FontWeight.bold)),
                                      SizedBox(width: 40.0,),
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                number3--;
                                              });

                                            },
                                            child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8.0),
                                                  border: Border.all(color: Colors.pinkAccent.shade100)
                                              ),
                                              child: Center(child: Text("-")),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Text(number3.toString()),
                                          SizedBox(width: 10,),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                number3++;
                                              });

                                            },
                                            child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8.0),
                                                  border: Border.all(color: Colors.pinkAccent.shade100)
                                              ),
                                              child: Center(child: Text("+")),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )

                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                    ),
                    SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sub-total",style: TextStyle(color: Colors.grey),),
                        Text("\$ 5,870",style: TextStyle(fontWeight: FontWeight.bold),)
                        
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("VAT(%)",style: TextStyle(color: Colors.grey),),
                        Text("\$ 0.00",style: TextStyle(fontWeight: FontWeight.bold),)

                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shipping fee",style: TextStyle(color: Colors.grey),),
                        Text("\$ 80",style: TextStyle(fontWeight: FontWeight.bold),)

                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Divider(
                        color: Colors.grey.withOpacity(0.5)
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total",style: TextStyle(color: Colors.grey),),
                        Text("\$ 5,950",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    SizedBox(height: 40,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        color: Colors.greenAccent.shade400
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 90.0),
                        child: Row(
                          children: [
                            Text("Go To Checkout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            SizedBox(width: 10.0,),
                            Icon(Icons.arrow_forward,color: Colors.white,)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
