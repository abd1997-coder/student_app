part of 'leasons_bloc.dart';

@freezed
class LeasonsState with _$LeasonsState {
  const factory LeasonsState.initial() = _Initial;
  const factory LeasonsState.loading() = _Loading;
  const factory LeasonsState.success(MaterialResults? materialResults) =
      _Success;
  const factory LeasonsState.error(String message) = _Error;
}
