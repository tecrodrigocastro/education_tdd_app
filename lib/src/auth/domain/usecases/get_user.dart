import 'package:education_tdd_app/core/usecase/usecase.dart';
import 'package:education_tdd_app/core/utils/typedef.dart';
import 'package:education_tdd_app/src/auth/domain/entities/user.dart';
import 'package:education_tdd_app/src/auth/domain/repositories/auth_repository.dart';

class GetUsers extends UseCaseWithoutParams<List<User>> {
  const GetUsers(this._repository);
  final AuthRepository _repository;

  @override
  ResultFuture<List<User>> call() async => _repository.getUser();
}
