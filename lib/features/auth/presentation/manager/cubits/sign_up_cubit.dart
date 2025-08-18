import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/auth/domain/entities/user_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
    String emailAddress,
    String password,
    String name,
  ) async {
    emit(SignUpLoading());
    var result = await authRepo.createUserWithEmailAndPassword(
      emailAddress,
      password,
      name,
    );
    result.fold(
      (failure) {
        emit(SignUpFailure(message: failure.message));
      },
      (userEntity) {
        SignUpSuccess(userEntity: userEntity);
      },
    );
  }
}
