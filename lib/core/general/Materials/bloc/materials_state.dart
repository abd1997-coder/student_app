part of 'materials_bloc.dart';

@freezed
class MaterialsState with _$MaterialsState {
  const factory MaterialsState.initial() = _Initial;
  const factory MaterialsState.loading() = _Loading;
  const factory MaterialsState.loaded(List<MaterialData> materials) = _Loaded;
  const factory MaterialsState.error(String message) = _Error;
}
