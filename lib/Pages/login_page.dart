import 'package:flutter/material.dart';
import 'package:securty_app_frontend/Pages/add_security.dart';
import 'package:securty_app_frontend/Pages/view_Security.dart';
import 'package:securty_app_frontend/Pages/view_Vistiors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading:IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.arrow_back_ios,color: Colors.white,)),
          backgroundColor:Color(0xFF9A2706),
          title: Text("Menu Page",style: TextStyle(color: Colors.white),),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 45,
                width: 250,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF9A2706),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))
                    ),
                    onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) =>AddSecurity()));}, child:Text("Add Security")),
              ),
              SizedBox(height: 25,),
              SizedBox(
                height: 45,
                width: 250,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF9A2706),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) => View_Secuirty()));}, child:Text("View All Security")),
              ),
              SizedBox(height: 25,),
              SizedBox(
                height: 45,
                width: 250,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF9A2706),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) => View_Visitors()));}, child:Text("View All Vistors")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
