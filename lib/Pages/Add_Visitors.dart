import 'package:flutter/material.dart';
import 'package:securty_app_frontend/Services/VisitorsSercvies.dart';

class AddVisistors extends StatefulWidget {
  const AddVisistors({super.key});

  @override
  State<AddVisistors> createState() => _AddVisistorsState();
}

class _AddVisistorsState extends State<AddVisistors> {
  String Name="", Phone="",Aadhar="",Place="",purpose_of_visit="";
  TextEditingController name1=new TextEditingController();
  TextEditingController phone1=new TextEditingController();
  TextEditingController aadhar1=new TextEditingController();
  TextEditingController place1=new TextEditingController();
  TextEditingController purpose1=new TextEditingController();
  void SentDataApi() async{
    final response=await VisitorsApiServices().viewVisitorsData(
        name1.text,
        phone1.text,
        aadhar1.text,
        place1.text,
        purpose1.text);
    if(response["status"]=="success")
    {
      print("Successfully Added");
    }
    else
    {
      print("Falied to Add");
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.arrow_back,color: Colors.white,)),
          backgroundColor:Color(0xFF9A2706),
          title: Text("ADD VISITORS",
              style: TextStyle(color: Colors.white)),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: name1,
                decoration: InputDecoration(
                    labelText: "vistor Name",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),),
              SizedBox(height: 20),
              TextField(
                controller: phone1,
                decoration: InputDecoration(
                    labelText: "vistor Phone",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),),
              SizedBox(height: 20),
              TextField(
                controller: aadhar1,
                decoration: InputDecoration(
                    labelText: "vistor Aadhar",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),),
              SizedBox(height: 20),
              TextField(
                controller: place1,
                decoration: InputDecoration(
                    labelText: "vistor Place",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),),
              SizedBox(height: 20),
              TextField(
                controller: purpose1,
                decoration: InputDecoration(
                    labelText: "Purpose Of Visit",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),),
              SizedBox(height: 20),
              SizedBox(
                height: 45,
                width: 150,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF9A2706),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        )),
                    onPressed:SentDataApi, child:Text("Add")),),
            ],
          ),
        ),
      ),
    );
  }
}
