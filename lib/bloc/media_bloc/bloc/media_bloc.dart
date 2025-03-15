import 'package:bloc/bloc.dart';
import 'package:insta_new/repositery/api/instamedia_api.dart';
import 'package:insta_new/repositery/model/insta_model.dart';
import 'package:meta/meta.dart';

part 'media_event.dart';
part 'media_state.dart';

class MediaBloc extends Bloc<MediaEvent, MediaState> {
  InstamediaApi instamediaApi = InstamediaApi();
  late InstaMedia instaMedia;
  MediaBloc() : super(MediaBlocInitial()) {
    on<fetchMedia>((event, emit) async {
      emit(MediaBlocLoading());
      try {
        instaMedia = await instamediaApi.getInstaMedia();
        emit(MediaBlocLoaded());
        print('BLOC LOADED');
      } catch (e) {
        print(e);
        emit(MediaBlocError());
      }
      // TODO: implement event handler
    });
  }
}
