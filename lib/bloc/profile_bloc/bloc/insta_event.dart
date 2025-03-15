part of 'insta_bloc.dart';

@immutable
sealed class InstaEvent {}

class fetchInstaUser extends InstaEvent {
  final String message;
  fetchInstaUser({required this.message});
}
