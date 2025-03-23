import 'package:bloc/bloc.dart';
import 'package:fruit_hub/features/auth/domain/reops/auth_repo.dart';
import '../../../domain/entites/user_entity.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());

  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    emit(SignupLoading());
    final result = await authRepo.createUserWithEmailAndPassword(
      email: email,
      password: password,
      name: name,
    );
    result.fold(
      (failure) => emit(SignupFailure(message: failure.message,),),
      (userEntity) => emit(SignupSuccess(user: userEntity,),),
    );
  }
}