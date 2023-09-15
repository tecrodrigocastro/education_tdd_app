// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:education_tdd_app/core/usecase/usecase.dart';
import 'package:education_tdd_app/core/utils/typedef.dart';
import 'package:education_tdd_app/src/auth/domain/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';

class CreateUser extends UseCaseWithParams<void, CreateUserParams> {
  const CreateUser(this._repository);

  final AuthRepository _repository;

  @override
  ResultVoid call(params) async => _repository.createUser(
        createdAt: params.createdAt,
        name: params.name,
        avatar: params.avatar,
      );
}

class CreateUserParams extends Equatable {
  const CreateUserParams({
    required this.name,
    required this.avatar,
    required this.createdAt,
  });

  const CreateUserParams.empty()
      : this(
          createdAt: '_empty.createdAt',
          name: '_empty.name',
          avatar: '_empty.avatar',
        );

  final String name;
  final String avatar;
  final String createdAt;
  @override
  List<Object?> get props => [name, avatar, createdAt];
}
