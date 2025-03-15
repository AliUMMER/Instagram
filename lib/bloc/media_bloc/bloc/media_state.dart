part of 'media_bloc.dart';

@immutable
sealed class MediaState {}

final class MediaBlocInitial extends MediaState {}

final class MediaBlocLoading extends MediaState {}

final class MediaBlocLoaded extends MediaState {}

final class MediaBlocError extends MediaState {}
