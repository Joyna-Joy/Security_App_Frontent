import 'package:flutter/material.dart';
import 'package:securty_app_frontend/Models/View_SecurityModel.dart';
import 'package:securty_app_frontend/Pages/add_security.dart';
import 'package:securty_app_frontend/Services/SecurtiySercvices.dart';

class View_Secuirty extends StatefulWidget {
  const View_Secuirty({super.key});

  @override
  State<View_Secuirty> createState() => _View_SecuirtyState();
}

class _View_SecuirtyState extends State<View_Secuirty> {
  Future<List<ViewSecurity>>? data;
  @override
  void initState() {
    super.initState();
    data = SecurityApiServices().getSecurity();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);},
              icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
          title: Text("View Security",style: TextStyle(color: Colors.white),),
          actions: [
            IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AddSecurity()));},
                icon: Icon(Icons.add_circle_sharp,color: Colors.white,size: 35,)),
            SizedBox(width: 25,)
          ],
          backgroundColor: Color(0xFF9A2706),
        ),
          body: FutureBuilder(
            future: data, // This is the future that the builder will wait for
            builder: (context, snapshot) {
              if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                // If data is available and not empty
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Color(0xFFF1CAD5),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor:Colors.redAccent.shade100,
                              child: Text(snapshot.data![index].userName[0].toString()),
                            ),
                            title: Text("User Name"+snapshot.data![index].userName.toString()+"\n"+"Email Id"+snapshot.data![index].emailId.toString()),
                            subtitle: Text("Employee_Id"+snapshot.data![index].employeeId + "\n" +
                                "Address"+snapshot.data![index].address + "\n" +
                                "Phone_Number"+snapshot.data![index].phoneNumber.toString()),
                          ),
                        ],
                      ),
                    );
                  },
                );
              } else {
                // If data is not available or empty, show a progress indicator
                return CircularProgressIndicator();
              }
            },
          )


      ),
    );
  }
}