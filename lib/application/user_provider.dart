import 'package:clean_api_and_riverpod/application/user_state.dart';
import 'package:clean_api_and_riverpod/domain/i_repo.dart';
import 'package:clean_api_and_riverpod/domain/user_list_model.dart';
import 'package:clean_api_and_riverpod/infrastucture/repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
//   return AuthNotifier(AuthRepo());
// });

final userProvider = StateNotifierProvider<UserNotifier, UserState>((ref) {
  return UserNotifier(Repo());
});

class UserNotifier extends StateNotifier<UserState> {
  final IRepo userRepo;

  UserNotifier(this.userRepo) : super(UserState.init());

  // registration(RegistrationModel registrationModel) async {
  //   state = state.copyWith(loading: true);
  //   final data = await authRepo.registration(registrationModel);
  //   state = data.fold(
  //     (l) => state.copyWith(loading: false, failure: l),
  //     (r) => state.copyWith(loading: false),
  //   );
  // }

  usermodel() async {
    state = state.copyWith(loading: true);
    final data = await userRepo.userList();
    state = data.fold(
      (l) => state.copyWith(loading: false, failure: l),
      (r) => state.copyWith(loading: false, user: r),
    );
  }
  
}
