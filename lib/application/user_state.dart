// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_api/clean_api.dart';
import 'package:equatable/equatable.dart';

import 'package:clean_api_and_riverpod/domain/user_list_model.dart';

class UserState extends Equatable {
  final CleanFailure failure;
  final bool loading;
  final List<UserListModel> user;
  UserState({
    required this.failure,
    required this.loading,
    required this.user,
  });

  @override
  List<Object> get props => [failure, loading, user];

  @override
  bool get stringify => true;

  UserState copyWith({
    CleanFailure? failure,
    bool? loading,
    List<UserListModel>? user,
  }) {
    return UserState(
      failure: failure ?? this.failure,
      loading: loading ?? this.loading,
      user: user ?? this.user,
    );
  }

  factory UserState.init() =>
      UserState(failure: CleanFailure.none(), loading: false, user: []);
}
