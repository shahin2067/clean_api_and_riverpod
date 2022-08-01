// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_api/clean_api.dart';
import 'package:equatable/equatable.dart';

import 'package:clean_api_and_riverpod/domain/post/create_user_model.dart';

class CreateUserState extends Equatable {
  final CleanFailure failure;
  final bool loading;
  final CreateUserModel createUserModel;
  const CreateUserState({
    required this.failure,
    required this.loading,
    required this.createUserModel,
  });

  @override
  List<Object> get props => [failure, loading, createUserModel];

  @override
  bool get stringify => true;

  CreateUserState copyWith({
    CleanFailure? failure,
    bool? loading,
    CreateUserModel? createUserModel,
  }) {
    return CreateUserState(
      failure: failure ?? this.failure,
      loading: loading ?? this.loading,
      createUserModel: createUserModel ?? this.createUserModel,
    );
  }

  factory CreateUserState.init() => CreateUserState(
      failure: CleanFailure.none(),
      loading: false,
      createUserModel: CreateUserModel.init());
}
