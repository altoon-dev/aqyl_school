part of 'parent_child_watcher_cubit.dart';


@freezed
class ParentChildWatcherState with _$ParentChildWatcherState {
  const factory ParentChildWatcherState.initial() = _Initial;
  const factory ParentChildWatcherState.loadInProgress() = _LoadInProgress;
  const factory ParentChildWatcherState.loadChildrenSuccess(List<UserDto> children) = _LoadChildrenSuccess;
  const factory ParentChildWatcherState.loadChildrenFail(String failure) = _LoadChildrenFail;
}
