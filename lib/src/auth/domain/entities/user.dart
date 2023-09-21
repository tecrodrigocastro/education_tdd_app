// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:education_tdd_app/core/utils/typedef.dart';
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String createdAt;
  final String name;
  final String avatar;
  const User({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  const User.empty()
      : this(
          id: '1',
          createdAt: '_empty.createdAt',
          avatar: '_empty.avatar',
          name: '_empty.name',
        );

  @override
  List<Object?> get props => [id, name, avatar];

  DataMap toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'avatar': avatar,
      'name': name,
    };
  }

  factory User.fromJson(String json) =>
      User.fromMap(jsonDecode(json) as DataMap);

  factory User.fromMap(DataMap map) {
    return User(
      id: map['id'] as String,
      createdAt: map['created_at'] as String,
      name: map['name'] as String,
      avatar: map['avatar'] as String,
    );
  }
}
