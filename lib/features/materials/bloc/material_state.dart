part of 'material_bloc.dart';

@freezed
class MaterialDetailState with _$MaterialDetailState {
  const factory MaterialDetailState.initial() = _Initial;

  const factory MaterialDetailState.loadingMaterial() = _MaterialDetailLoading;
  const factory MaterialDetailState.successMaterial({
    @Default(null) MaterialResults? materialResults,
  }) = _MaterialDetailSuccess;
  const factory MaterialDetailState.failedMaterial({
    @Default(null) GeneralException? generalException,
  }) = _MaterialDetailFailed;
}
