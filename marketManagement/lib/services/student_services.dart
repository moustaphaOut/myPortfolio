import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import '../model/student_model.dart';


Future<String> _loadAStudentAsset() async {
  return await rootBundle.loadString('assets/student.json');
}


Future loadStudent() async {
  String jsonString = await _loadAStudentAsset();
  ///print(jsonString);
  final jsonResponse = json.decode(jsonString);
  ///print(jsonResponse);
  Student student = new Student.fromJson(jsonResponse);
  print(student.studentName);
}