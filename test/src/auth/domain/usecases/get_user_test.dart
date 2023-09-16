// What does the class depend on
// Answer -- AuthRepository
// how can we create a fake version of the dependency
// Answer -- Use Mockail
// How do we control what our dependencies do
// Answer -- Using the Mockail's APIs

import 'package:dartz/dartz.dart';
import 'package:education_tdd_app/src/auth/domain/entities/user.dart';
import 'package:education_tdd_app/src/auth/domain/repositories/auth_repository.dart';
import 'package:education_tdd_app/src/auth/domain/usecases/get_user.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'auth_repository.mock.dart';

void main() {
  late AuthRepository repository;
  late GetUsers usecase;

  setUp(() {
    repository = MockAuthRepo();
    usecase = GetUsers(repository);
  });

  const tResponse = [User.empty()];

  test(
    'should call [AuthRepo.getUsers] and return  [List<User>]',
    () async {
      // Arrage
      when(() => repository.getUser()).thenAnswer(
        (_) async => const Right(tResponse),
      );

      //Act
      final result = await usecase();

      expect(result, equals(const Right<dynamic, List<User>>(tResponse)));
      verify(() => repository.getUser()).called(1);
      verifyNoMoreInteractions(repository);
    },
  );
}
