import 'package:ecommerce_ui/View/HomeScreen.dart';
import 'package:ecommerce_ui/View/MyCart.dart';
import 'package:ecommerce_ui/View/SaveItem.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int index = 0;
  List<Widget> Screen = [
    Homescreen(),
    Saveitem(),
    Mycart(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),label: "Like"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp),label: "Account"),
        ],
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        selectedItemColor: Colors.green,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
      ),
      // appBar: AppBar(
      //   title: Text("Saved Item"),
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      //   actions: [
      //     Icon(Icons.notifications)
      //   ],
      // ),
      body: Screen[index]
    );
  }
}
