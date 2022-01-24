import 'package:flutter/foundation.dart';

class Student {
  final int? id;
  final String name;

  Student({
    this.id,
    required this.name,
  });

  factory Student.fromMap(Map<String, dynamic> json) =>
      Student(name: json['name'], id: json['id']);

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
      };
}
