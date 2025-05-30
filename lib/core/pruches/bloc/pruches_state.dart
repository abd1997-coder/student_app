part of 'pruches_bloc.dart';

@freezed
class PruchesState with _$PruchesState {
  const factory PruchesState.initial() = _Initial;

  const factory PruchesState.buyingLoading() =
      _BuyingLoading;

  const factory PruchesState.buyingSucceed() =
      _buyingSucceed;

  const factory PruchesState.buyingFailed({
    @Default(null) GeneralException? generalException,
  }) = _buyingFailed;

  // 
}
