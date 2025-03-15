part of 'insta_bloc.dart';

@immutable
sealed class InstaState {}

final class InstaUserInitial extends InstaState {}

final class InstaUserLoading extends InstaState {}

final class InstaUserLoaded extends InstaState {}

final class InstaUserError extends InstaState {}
