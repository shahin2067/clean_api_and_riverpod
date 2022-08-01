import 'dart:convert';

import 'package:clean_api/clean_api.dart';
import 'package:clean_api_and_riverpod/domain/i_repo.dart';
import 'package:clean_api_and_riverpod/domain/post/create_user_model.dart';
import 'package:clean_api_and_riverpod/domain/user_list_model.dart';

class Repo extends IRepo {
  final cleanApi = CleanApi.instance;

//await cleanApi.get(fromJson: ((json) => List<StoryModel>.from(json['payload'].map((e) => StoryModel.fromMap(e)))),

  @override
  Future<Either<CleanFailure, List<UserListModel>>> userList() async {
    return await cleanApi.get(
        fromJson: ((json) => List<UserListModel>.from(
            json['data'].map((e) => UserListModel.fromMap(e)))),
        //return List<UserListModel>.from(json['data'].map(e)=>UserListModel);

        endPoint: 'users');
  }

  // @override
  // Future<Either<CleanFailure, UserModel>> logIn(
  //     {required String email, required String password}) async {
  //   final response = await cleanApi.post(
  //       fromJson: (json) {
  //         Logger.i(json);
  //         try {
  //           return json['token'] as String;
  //         } catch (e) {
  //           if (json['errors'] != null && (json['errors'] as List).isNotEmpty) {
  //             final error = (json['errors'] as List).first;
  //             throw error['message'];
  //           } else {
  //             rethrow;
  //           }
  //         }
  //       },
  //       body: {"email": email, "password": password},
  //       endPoint: 'user/login');
  //   return await response.fold((l) => left(l), (r) async {
  //     final prefs = await SharedPreferences.getInstance();
  //     prefs.setString('token', r);
  //     cleanApi.setToken({"Authorization": "Bearer $r"});
  //     return await getUserInfo();
  //   });
  // }
  // @override
  // Future<Either<CleanFailure, CreateUserModel>> createUser(
  //     {required String name, required String job}) async {
  //   final response = await cleanApi.post(
  //       fromJson: (json) {
  //         Logger.i(json);
  //       },
  //       body: {name: name, job: job},
  //       endPoint: 'users');
  //   return ;
  // }

  // getUserInfo() async {
  //   return cleanApi.get(
  //       fromJson: (json) {
  //         return UserModel.fromMap(json['data']);
  //       },
  //       endPoint: 'user/logged-in-user-data');
  // }
}
