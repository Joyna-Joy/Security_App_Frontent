import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:securty_app_frontend/Pages/login_page.dart';
import 'package:securty_app_frontend/Pages/menu.dart';

class AdminLoginPage extends StatefulWidget {
  const AdminLoginPage({super.key});

  @override
  State<AdminLoginPage> createState() => _AdminLoginPageState();
}
class _AdminLoginPageState extends State<AdminLoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:Scaffold(
          appBar: AppBar(
            backgroundColor:Color(0xFF9A2706),
            title: Text("Admin Login",style: TextStyle(color: Colors.white),),
            actions: <Widget>[
              IconButton(onPressed: () {},icon: Icon(Icons.more_vert, color: Colors.white),),
            ],
          ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white
          ),
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              // CircleAvatar(
              //  child:Image.network("data:image/jpeg;base64,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"),
              //   radius: 60,
              // ),
              SvgPicture.asset("assets/farm.svg",height: 200,width: 200),
              SizedBox(height: 60,),
              TextField(
                decoration: InputDecoration(
                    labelText: "User Name",
                    hintText: "Enter valid Username",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter valid password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),
              ),
              SizedBox(height: 25,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF9A2706),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                          onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage()));}, child:Text("Log In")),
                    ),
                    SizedBox(width: 25,),
                    SizedBox(
                      height: 45,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF9A2706),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                          onPressed:(){}, child:Text("Register")),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    ),
    );
  }
}