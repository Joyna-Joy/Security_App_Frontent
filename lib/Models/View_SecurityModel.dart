// To parse this JSON data, do
//
//     final viewSecurity = viewSecurityFromJson(jsonString);

import 'dart:convert';

List<ViewSecurity> viewSecurityFromJson(String str) => List<ViewSecurity>.from(json.decode(str).map((x) => ViewSecurity.fromJson(x)));

String viewSecurityToJson(List<ViewSecurity> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ViewSecurity {
  String userName;
  String employeeId;
  String address;
  String phoneNumber;
  String emaiId;
  String password;

  ViewSecurity({
    required this.userName,
    required this.employeeId,
    required this.address,
    required this.phoneNumber,
    required this.emaiId,
    required this.password,
  });

  factory ViewSecurity.fromJson(Map<String, dynamic> json) => ViewSecurity(
    userName: json["UserName"],
    employeeId: json["EmployeeId"],
    address: json["Address"],
    phoneNumber: json["PhoneNumber"],
    phoneNumber: json["emaiId"],
    phoneNumber: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "UserName": userName,
    "EmployeeId": employeeId,
    "Address": address,
    "PhoneNumber": phoneNumber,
    "EmailId": emaiId,
    "Password": password,
  };
}
