import 'dart:convert';

import 'package:education_tdd_app/core/utils/typedef.dart';
import 'package:education_tdd_app/src/auth/data/models/user_model.dart';
import 'package:education_tdd_app/src/auth/domain/entities/user.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tModel = UserModel.empty();

  test('should be a subclass of [User] entity', () {
    //Arrange

    // Act

    // Assert
    expect(tModel, isA<User>());
  });
  final tJson = fixture('user.json');
  final tMap = jsonDecode(tJson) as DataMap;
  group('fromMap', () {
    test('should return a [UserModel] with the rigth data', () {
      //Arrange
      //Act
      final result = UserModel.fromMap(tMap);
      expect(result, equals(tModel));
      // final result = UserModel.fromMap(map);
    });
  });

  group('fromJson', () {
    test('should return a [UserModel] with the rigth data', () {
      //Arrange
      //Act
      final result = UserModel.fromJson(tJson);
      expect(result, equals(tModel));
    });
  });

  group('toMap', () {
    test('should return a [Map] with the rigth data', () {
      // Act
      final result = tModel.toMap();
      //Assert
      expect(result, equals(tMap));
    });
  });

  group('toJson', () {
    test('should return a [JSON] string with the right data', () {
      // Act
      final result = tModel.toJson();
      final tJson = jsonEncode({
        "id": "1",
        "createdAt": "_empty.createdAt",
        "avatar": "_empty.avatar",
        "name": "_empty.name"
      });

      //Assert
      expect(result, tJson);
    });
  });

  group('copyWith', () {
    test('should return a [UserModel] with different data', () {
      // Arrange

      //Act
      final result = tModel.copyWith(name: 'Rodrigo');
      expect(result.name, equals('Rodrigo'));
    });
  });
}
