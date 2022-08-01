// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class CreateUserModel extends Equatable {
  final String name;
  final String job;
  final String id;
  final String createdAt;

  const CreateUserModel({
    required this.name,
    required this.job,
    required this.id,
    required this.createdAt,
  });

  CreateUserModel copyWith({
    String? name,
    String? job,
    String? id,
    String? createdAt,
  }) {
    return CreateUserModel(
      name: name ?? this.name,
      job: job ?? this.job,
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'job': job,
      'id': id,
      'createdAt': createdAt,
    };
  }

  factory CreateUserModel.fromMap(Map<String, dynamic> map) {
    return CreateUserModel(
      name: map['name'] as String,
      job: map['job'] as String,
      id: map['id'] as String,
      createdAt: map['createdAt'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CreateUserModel.fromJson(String source) =>
      CreateUserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [name, job, id, createdAt];

  factory CreateUserModel.init() => const CreateUserModel(name: '', job: '', createdAt: '', id: '');
}
