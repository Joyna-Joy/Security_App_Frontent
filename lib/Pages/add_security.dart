
import 'package:flutter/material.dart';
import 'package:securty_app_frontend/Pages/login_page.dart';
import 'package:securty_app_frontend/Pages/view_Security.dart';
import 'package:securty_app_frontend/Services/ViewSercvices.dart';

class AddSecurity extends StatefulWidget {
  const AddSecurity({super.key});

  @override
  State<AddSecurity> createState() => _AddSecurityState();
}
class _AddSecurityState extends State<AddSecurity> {
  String UserName = "", EmployeeId = "", Address = "", PhoneNumber = "",EmailId="",Password="";
  TextEditingController UserName1 = TextEditingController();
  TextEditingController EmployeeId1 = TextEditingController();
  TextEditingController Address1 = TextEditingController();
  TextEditingController PhoneNumber1 = TextEditingController();
  TextEditingController EmailId1 = TextEditingController();
  TextEditingController Password1 = TextEditingController();

  void SentValuesApi() async {
    final response = await SecurityApiServices().viewSecurityData(
      UserName1.text,
      EmployeeId1.text,
      Address1.text,
      PhoneNumber1.text,
      EmailId1.text,
      Password1.text,
    );

    if (response["status"] == "success") {
      print("Successfully Added");
    } else {
      print("Failed to Add");
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          leading:IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.arrow_back_ios,color: Colors.white,)),
          backgroundColor:Color(0xFF9A2706),
          title: Text("Add Security",style: TextStyle(color: Colors.white),),),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white
            ),
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 60,),
                TextField(
                  controller:UserName1,
                  decoration: InputDecoration(
                      labelText: "User Name",
                      hintText: "Enter valid Username",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: EmployeeId1,
                  decoration: InputDecoration(
                      labelText: "Employee Id",
                      hintText: "Enter valid Employee_Id",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                SizedBox(height: 25,),
                TextField(
                  controller: Address1,
                  decoration: InputDecoration(
                      labelText: "Address",
                      hintText: "Enter address",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                SizedBox(height: 25,),
                TextField(
                  controller: PhoneNumber1,
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      hintText: "Enter Phone_Number",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  SizedBox(height: 25,),
                TextField(
                  controller: EmailId1,
                  decoration: InputDecoration(
                      labelText: "Email Id",
                      hintText: "Enter Email Id",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                  SizedBox(height: 25,),
                TextField(
                  controller: Password1,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
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
                          )),
                      onPressed:SentValuesApi, child:Text("Add")),),
              ],
            ),
          ),
        ),

      ),
    );
  }
}