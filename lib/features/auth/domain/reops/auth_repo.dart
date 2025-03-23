import 'package:dartz/dartz.dart';
import '../../../../core/errors/feilures.dart';
import '../entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });
}