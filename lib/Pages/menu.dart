import 'package:flutter/material.dart';
import 'package:securty_app_frontend/Pages/add_security.dart';
import 'package:securty_app_frontend/Pages/view_Security.dart';
import 'package:securty_app_frontend/Pages/view_Vistiors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final List<Widget> pages=[
    AddSecurity(),
    View_Secuirty(),
    ViewVisitors()
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed:() {Navigator.pop(context);},icon:Icon(Icons.arrow_back_ios),color: Colors.white),
        backgroundColor:Color(0xFF9A2706),
          title: Text("MenuPage",style: TextStyle(color: Colors.white),),
      ),
    body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            print(index);
            setState(() {
              currentIndex=index;
            });
          },
            items: [
              BottomNavigationBarItem(icon:Icon(Icons.add,color: Color(0xFF9A2706)),
              label: "Add Security"),
              BottomNavigationBarItem(icon: Icon(Icons.view_carousel_outlined,color: Color(0xFF9A2706),),
              label:"View Security"),
              BottomNavigationBarItem(icon:Icon(Icons.pageview_rounded,color: Color(0xFF9A2706),),
              label: "View Visitors")
            ]),
    ),
    );
  }
}
