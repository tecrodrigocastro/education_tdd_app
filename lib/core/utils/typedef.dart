import 'package:dartz/dartz.dart';
import 'package:education_tdd_app/core/errors/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
