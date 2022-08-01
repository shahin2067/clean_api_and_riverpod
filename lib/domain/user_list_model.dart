// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class UserListModel extends Equatable {
  final int id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;

  const UserListModel({
    required this.id,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.avatar,
  });

  UserListModel copyWith({
    int? id,
    String? email,
    String? first_name,
    String? last_name,
    String? avatar,
  }) {
    return UserListModel(
      id: id ?? this.id,
      email: email ?? this.email,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      avatar: avatar ?? this.avatar,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'email': email,
      'first_name': first_name,
      'last_name': last_name,
      'avatar': avatar,
    };
  }

  factory UserListModel.fromMap(Map<String, dynamic> map) {
    return UserListModel(
      id: map['id'] as int,
      email: map['email'] as String,
      first_name: map['first_name'] as String,
      last_name: map['last_name'] as String,
      avatar: map['avatar'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserListModel.fromJson(String source) =>
      UserListModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      email,
      first_name,
      last_name,
      avatar,
    ];
  }

  factory UserListModel.init() => const UserListModel(
      id: 0, email: '', first_name: '', last_name: '', avatar: '');
}
