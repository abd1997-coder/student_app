part of 'material_bloc.dart';

@freezed
class MaterialEvent with _$MaterialEvent {
    const factory MaterialEvent.getMaterialByID(String id) = _GetMaterialByID;
}