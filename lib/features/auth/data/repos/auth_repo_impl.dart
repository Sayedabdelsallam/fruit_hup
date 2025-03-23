import 'package:dartz/dartz.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import '../../../../core/errors/exception.dart'; // Import CustomException
import '../../../../core/errors/feilures.dart';
import '../../../../core/services/firebase_auth_service.dart';
import '../../domain/entites/user_entity.dart';
import '../../domain/reops/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      // Call Firebase service to create a user
      final user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Convert Firebase User to UserModel (which implements UserEntity)
      final userModel = UserModel.fromFirebaseUser(user);

      // Return the user as a Right (success)
      return Right(userModel);
    } on CustomException catch (e) {
      // Handle CustomException and return a Left (failure)
      return Left(ServerFailure(e.toString()));
    } catch (e) {
      // Handle other exceptions and return a Left (failure)
      return Left(ServerFailure('An unexpected error occurred while creating the user'));
    }
  }
}