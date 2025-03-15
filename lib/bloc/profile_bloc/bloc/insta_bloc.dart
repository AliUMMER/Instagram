import 'package:bloc/bloc.dart';
import 'package:insta_new/repositery/api/insta_api.dart';
import 'package:insta_new/repositery/model/insta_profile.dart';
import 'package:meta/meta.dart';

part 'insta_event.dart';
part 'insta_state.dart';

class InstaBloc extends Bloc<InstaEvent, InstaState> {
  InstaApi instaapi = InstaApi();
  late InstaUser instaUser;
  InstaBloc() : super(InstaUserInitial()) {
    on<fetchInstaUser>((event, emit) async {
      emit(InstaUserLoading());
      try {
        instaUser = await instaapi.getInstaUser();
        emit(InstaUserLoaded());
      } catch (e) {
        print(e);
        emit(InstaUserError());
      }
      // TODO: implement event handler
    });
  }
}
