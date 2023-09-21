import 'dart:convert';

import 'package:education_tdd_app/core/utils/typedef.dart';
import 'package:education_tdd_app/src/auth/domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required super.id,
    required super.createdAt,
    required super.name,
    required super.avatar,
  });

  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json) as DataMap);

  const UserModel.empty()
      : this(
          id: '1',
          createdAt: '_empty.createdAt',
          avatar: '_empty.avatar',
          name: '_empty.name',
        );

  UserModel.fromMap(DataMap map)
      : this(
          id: map['id'] as String,
          createdAt: map['createdAt'] as String,
          avatar: map['avatar'] as String,
          name: map['name'] as String,
        );

  UserModel copyWith({
    String? avatar,
    String? name,
    String? createdAt,
    String? id,
  }) {
    return UserModel(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      avatar: avatar ?? this.avatar,
      name: name ?? this.name,
    );
  }

  @override
  DataMap toMap() => {
        'id': id,
        'createdAt': createdAt,
        'avatar': avatar,
        'name': name,
      };

  String toJson() => jsonEncode(toMap());
}
