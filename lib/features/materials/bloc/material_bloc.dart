import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student_app/core/error/general_exception.dart';
import 'package:student_app/features/materials/data/materials_repository.dart';
import 'package:student_app/features/materials/data/model/material_model.dart';

part 'material_event.dart';
part 'material_state.dart';
part 'material_bloc.freezed.dart';

class MaterialDetailBloc extends Bloc<MaterialEvent, MaterialDetailState> {
  MaterialRepository _materialRepository;

  MaterialDetailBloc(this._materialRepository) : super(const MaterialDetailState.initial()) {
    on<MaterialEvent>((MaterialEvent event, Emitter<MaterialDetailState> emit) async {
      await event.map(
        getMaterialByID:
            (_GetMaterialByID value) => getMaterialById(event, emit),
      );
    });
  }

  Future<void> getMaterialById(
    MaterialEvent event,
    Emitter<MaterialDetailState> emit,
  ) async {
    // try {
      event as _GetMaterialByID;
      emit(const MaterialDetailState.loadingMaterial());
      MaterialResponseModel materialResults = await _materialRepository
          .getMaterialDetail(event.id);
      emit(
        MaterialDetailState.successMaterial(materialResults: materialResults.results),
      );
    // } catch (e) {
    //   emit(const MaterialDetailState.failedMaterial());
    // }
  }
}
