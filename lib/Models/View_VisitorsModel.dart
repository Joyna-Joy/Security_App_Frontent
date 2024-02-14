// To parse this JSON data, do
//
//     final viewVisitors = viewVisitorsFromJson(jsonString);

import 'dart:convert';

List<ViewVisitors> viewVisitorsFromJson(String str) => List<ViewVisitors>.from(json.decode(str).map((x) => ViewVisitors.fromJson(x)));

String viewVisitorsToJson(List<ViewVisitors> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ViewVisitors {
  String securityId;
  String vistorName;
  String vistorPhone;
  String vistorAadhar;
  String vistorPlace;
  String purposeOfVisit;

  ViewVisitors({
    required this.securityId,
    required this.vistorName,
    required this.vistorPhone,
    required this.vistorAadhar,
    required this.vistorPlace,
    required this.purposeOfVisit,
  });

  factory ViewVisitors.fromJson(Map<String, dynamic> json) => ViewVisitors(
    securityId: json["securityId"],
    vistorName: json["vistorName"],
    vistorPhone: json["vistorPhone"],
    vistorAadhar: json["vistorAadhar"],
    vistorPlace: json["vistorPlace"],
    purposeOfVisit: json["purposeOfVisit"],
  );

  Map<String, dynamic> toJson() => {
    "securityId": securityId,
    "vistorName": vistorName,
    "vistorPhone": vistorPhone,
    "vistorAadhar": vistorAadhar,
    "vistorPlace": vistorPlace,
    "purposeOfVisit": purposeOfVisit,
  };
}
