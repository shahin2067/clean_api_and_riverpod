import 'package:clean_api/clean_api.dart';
import 'package:clean_api_and_riverpod/domain/post/create_user_model.dart';
import 'package:clean_api_and_riverpod/domain/user_list_model.dart';

abstract class IRepo {
  Future<Either<CleanFailure, List<UserListModel>>> userList();

  // Future<Either<CleanFailure, CreateUserModel>> createUser({required String name, required String job});
}
