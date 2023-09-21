import 'package:education_tdd_app/core/utils/typedef.dart';
import 'package:education_tdd_app/src/auth/data/datasources/auth_remote_data_source.dart';
import 'package:education_tdd_app/src/auth/domain/entities/user.dart';
import 'package:education_tdd_app/src/auth/domain/repositories/auth_repository.dart';

class AuhRepositoryImplementation implements AuthRepository {
  const AuhRepositoryImplementation(this._remoteDataSource);
  final AuthRemoteDataSource _remoteDataSource;

  @override
  ResultVoid createUser({
    required String createdAt,
    required String name,
    required String avatar,
  }) async {
    // Test-Driven Development
    // call the remote data source
    // check if the method returns the proper data
    // check if when the remoteDataSource throws an exception, we return a
    // failure and if it does't throw and exception, we return the actual  expected data
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  ResultFuture<List<User>> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }
}
