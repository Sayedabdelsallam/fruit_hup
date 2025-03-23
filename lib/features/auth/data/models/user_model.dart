import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/features/auth/domain/entites/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(
      {required super.email,
      required super.name,
      required super.uId});

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      email: user.email ?? '', // Assuming you want to use the UID as the password
      name: user.displayName ?? '',
      uId: user.uid,
    );
  }
}
