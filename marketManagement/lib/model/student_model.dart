import 'package:json_annotation/json_annotation.dart';

//part 'student_model.g.dart';

@JsonSerializable(nullable: false)
class Student{
  String studentId;
  String studentName;
  int studentScores;

  Student({
    this.studentId,
    this.studentName,
    this.studentScores
});

  Student.fromJson(jsonResponse);

/*
    factory Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);
  Map<String, dynamic> toJson() => _$StudentToJson(this);*/
}