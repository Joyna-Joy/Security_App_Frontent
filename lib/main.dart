import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:securty_app_frontend/Pages/admin_login_page.dart';

void main(){
  runApp(MainPage());
}
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AdminLoginPage(),
    );
  }
}
