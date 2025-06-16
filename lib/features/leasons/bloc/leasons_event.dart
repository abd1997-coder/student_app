part of 'leasons_bloc.dart';

@freezed
class LeasonsEvent with _$LeasonsEvent {
  const factory LeasonsEvent.fetchLeasonsByMaterialId(String materialId) =
      _FetchLeasonsByMaterialId;
}