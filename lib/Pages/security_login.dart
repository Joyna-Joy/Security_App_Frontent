
import 'package:flutter/material.dart';
import 'package:securty_app_frontend/Pages/Add_Visitors.dart';
import 'package:securty_app_frontend/Pages/admin_login_page.dart';
import 'package:securty_app_frontend/Pages/login_page.dart';

class SecurityLoginPage extends StatefulWidget {
  const SecurityLoginPage({super.key});

  @override
  State<SecurityLoginPage> createState() => _SecurityLoginPageState();
}
class _SecurityLoginPageState extends State<SecurityLoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xFF9A2706),
          title: Text("Security Login",style: TextStyle(color: Colors.white),),
          actions: <Widget>[
            IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>AdminLoginPage()));},icon: Icon(Icons.logout, color: Colors.white),),
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
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child:Image.network("https://th.bing.com/th?id=OIP.WyqJx0kJkToKMtFbzeVbmQHaIX&w=235&h=265&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"),
                  radius: 60,
                ),
                SizedBox(height: 60,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Email Id",
                      hintText: "Enter valid Email",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter valid password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                SizedBox(height: 25,),
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
                            onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) =>AddVisistors()));}, child:Text("Log In")),
                      ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}