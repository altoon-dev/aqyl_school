import 'package:aqyl_school/features/sign/domain/user_dto.dart';
import 'package:aqyl_school/features/sign/repositories/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'parent_child_watcher_state.dart';
part 'parent_child_watcher_cubit.freezed.dart';

class ParentChildWatcherCubit extends Cubit<ParentChildWatcherState> {
  ParentChildWatcherCubit() : super(const ParentChildWatcherState.initial());
  void startWatchAll() async {
    emit(const ParentChildWatcherState.loadInProgress());
    try {
      final parent=await AuthRepository().getSignedInUser();
      List<UserDto> children=[];
      for(var childReference in parent.children!){
        children.add(UserDto.fromFirestore(await childReference.get()));
      }
      emit(ParentChildWatcherState.loadChildrenSuccess(children));
    } catch (e) {
      emit(ParentChildWatcherState.loadChildrenFail(e.toString()));
    }
  }
}
