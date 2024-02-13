import 'package:http/http.dart'as http;
import 'package:securty_app_frontend/Models/View_SecurityModel.dart';
import 'dart:convert';
import 'package:securty_app_frontend/Pages/view_Security.dart';
class SecurityApiServices {
  Future<dynamic> viewSecurityData(String userName, String employeeId,
      String address, String phoneNumber) async {
    var client = http.Client();
    var apiUrl = Uri.parse("");
    var response = await client.post(apiUrl,
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String, String>
        {
          "UserName": userName,
          "EmployeeId": employeeId,
          "Address": address,
          "PhoneNumber": phoneNumber,
        })
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    }
    else {
      throw Exception("failed to sent data");
    }
  }

  Future<List<ViewSecurity>> getVisitors() async {
    var client = http.Client();
    var apiUrl = Uri.parse("");
    var response = await client.get(apiUrl);

    if (response.statusCode == 200) {
      return viewSecurityFromJson(response.body);
    }
    else {
      print('Failed to get visitors. Status code: ${response.statusCode}');
      return [];
    }
  }
}