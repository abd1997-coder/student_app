part of 'materials_bloc.dart';

@freezed
class MaterialsEvent with _$MaterialsEvent {
  const factory MaterialsEvent.fetchMaterials() = _FetchMaterials;
}