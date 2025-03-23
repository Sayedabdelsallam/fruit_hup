import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/core/errors/exception.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException('The account already exists for that email.');
      } else {
        // Handle other FirebaseAuthException errors
        throw CustomException('Firebase Auth Error: ${e.message}');
      }
    } catch (e) {
      // Handle generic errors
      throw CustomException('An error occurred while creating the user: $e');
    }
  }
}