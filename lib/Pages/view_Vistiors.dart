import 'package:flutter/material.dart';
import 'package:securty_app_frontend/Models/View_VisitorsModel.dart';
import 'package:securty_app_frontend/Services/VisitorsSercvies.dart';

class View_Visitors extends StatefulWidget {
  const View_Visitors({super.key});

  @override
  State<View_Visitors> createState() => _View_VisitorsState();
}

class _View_VisitorsState extends State<View_Visitors> {
  Future<List<ViewVisitors>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=VisitorsApiServices().getVisitors();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);},
              icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
          title: Text("View Visitors",style: TextStyle(color: Colors.white),),
          backgroundColor: Color(0xFF9A2706),
        ),
        body: FutureBuilder(
            future: data,
            builder: (context,snapshot)
            {
              if(snapshot.hasData && snapshot.data!.isNotEmpty)
              {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context,index){
                      return Card(
                        child: Column(
                          children: [
                            ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.redAccent.shade100,
                                  child: Text(snapshot.data![index].vistorName[0]),
                                ),
                                title: Text("Name:"+snapshot.data![index].vistorName),
                                subtitle: Text("Phone No:"+snapshot.data![index].vistorPhone +"\n"+"Aadhar:"+snapshot.data![index].vistorAadhar +"\n"+"Palce:"+snapshot.data![index].vistorPlace +"\n"+"Purpose_Of_visit :"+snapshot.data![index].purposeOfVisit)
                            ),
                          ],
                        ),
                      );
                    });
              }
              else
              {
                return CircularProgressIndicator();
              }
            }),

      ),
    );
  }
}