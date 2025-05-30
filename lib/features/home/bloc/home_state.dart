part of 'home_bloc.dart';


@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loadingHome() = _LoadingHome;
  const factory HomeState.successHome({
    @Default(null) HomeResults? homeResults,
  }) = _SuccessHome;
  const factory HomeState.failedHome({
    @Default(null) GeneralException? generalException,
  }) = _FailedHome;
}
