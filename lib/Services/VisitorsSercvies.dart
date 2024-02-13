import 'package:http/http.dart'as http;
import 'dart:convert';
import 'package:securty_app_frontend/Models/View_VisitorsModel.dart';

class VisitorsApiServices{
  Future<dynamic> viewVisitorsData(
      String vistorName,String vistorPhone,String vistorAadhar, String  vistorPlace,String purposeOfVisit) async{
    var client=http.Client();
    var apiUrl=Uri.parse("");
    var response=await client.post(apiUrl,
        headers: <String,String>{
          "Content-Type":"application/json; charset=UTF-8"
        },
        body: jsonEncode(<String,String>
        {
          "vistorName": vistorName,
          "vistorPhone": vistorPhone,
          "vistorAadhar": vistorAadhar,
          "vistorPlace": vistorPlace,
          "purposeOfVisit": purposeOfVisit,
        })
    );
    if(response.statusCode==200)
    {
      return json.decode(response.body);
    }
    else
    {
      throw Exception("failed to sent data");
    }

  }

  Future<List<ViewVisitors>> getVisitors() async{
    var client=http.Client();
    var apiUrl=Uri.parse("");
    var response=await client.get(apiUrl);

    if(response.statusCode==200)
    {
      return viewVisitorsFromJson(response.body);
    }
    else
    {
      print('Failed to get visitors. Status code: ${response.statusCode}');
      return [];
    }
  }
}