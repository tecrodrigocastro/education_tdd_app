import 'package:dartz/dartz.dart';
import 'package:education_tdd_app/core/errors/failure.dart';
import 'package:education_tdd_app/src/auth/domain/entities/user.dart';

abstract class AuthRepository {
  const AuthRepository();

  Future<Either<Failure, void>> createUser({
    required String createdAt,
    required String name,
    required String avatar,
  });

  Future<Either<Failure, List<User>>> getUser();
}
