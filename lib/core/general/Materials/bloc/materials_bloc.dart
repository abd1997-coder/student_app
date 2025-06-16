import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student_app/core/general/Materials/data/materials_repository.dart';
import 'package:student_app/features/home/data/model/home_model.dart';

part 'materials_event.dart';
part 'materials_state.dart';
part 'materials_bloc.freezed.dart';

class MaterialsBloc extends Bloc<MaterialsEvent, MaterialsState> {
  MaterialsBloc(this._materialsRepository) : super(const _Initial()) {
    on<MaterialsEvent>((MaterialsEvent event, Emitter<MaterialsState> emit) async {
      await event.map(fetchMaterials: (_FetchMaterials value) => fetchMaterials(event, emit));
    });
  }

  final MaterialsRepository _materialsRepository;

  Future<void> fetchMaterials(MaterialsEvent event, Emitter<MaterialsState> emit) async {
    try {
      event as _$FetchMaterialsImpl;
      emit(const MaterialsState.loading());
      final materials = await _materialsRepository.getMaterials();
      print("materials: ${materials.length}");
      emit(MaterialsState.loaded(materials));
    } catch (e) {
        emit(MaterialsState.error(e.toString()));
    }
  }
}
