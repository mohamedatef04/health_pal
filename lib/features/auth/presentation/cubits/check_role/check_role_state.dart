part of 'check_role_cubit.dart';

sealed class CheckRoleState {}

final class CheckRoleInitial extends CheckRoleState {}

final class CheckRoleLoading extends CheckRoleState {}

final class CheckRoleSuccess extends CheckRoleState {}

final class CheckRoleFailure extends CheckRoleState {
  final String errorMessage;
  CheckRoleFailure({required this.errorMessage});
}
