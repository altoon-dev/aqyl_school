import 'package:aqyl_school/features/sign/domain/user_dto.dart';
import 'package:aqyl_school/features/sign/repositories/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_watcher_state.dart';
part 'profile_watcher_cubit.freezed.dart';

class ProfileWatcherCubit extends Cubit<ProfileWatcherState> {
  ProfileWatcherCubit() : super(const ProfileWatcherState.initial());
  getSignedInUser()async{
    emit(const ProfileWatcherState.loading());
    try{
      final user=await AuthRepository().getSignedInUser();
      emit(ProfileWatcherState.getSignedInUserSuccess(user));
    }catch(e){
      print("error is $e");
      emit(const ProfileWatcherState.getSignedInUserFailure());
    }
  }
}
