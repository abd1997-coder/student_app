import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student_app/core/common/models/unit_model.dart';
import 'package:student_app/core/common/models/video_model.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/features/home/data/model/home_model.dart';
import 'package:student_app/features/materials/data/model/material_model.dart';

part 'leasons_event.dart';
part 'leasons_state.dart';
part 'leasons_bloc.freezed.dart';

class LeasonsBloc extends Bloc<LeasonsEvent, LeasonsState> {
  LeasonsBloc() : super(const LeasonsState.initial()) {
    on<LeasonsEvent>((event, emit) {
      if (event is _FetchLeasonsByMaterialId) {
        emit(const LeasonsState.loading());

        try {
          final cachedData = PrefData.getMaterialData(event.materialId);

          if (cachedData != null) {
            // Parse local data
            final MaterialResponseModel localData =
                MaterialResponseModel.fromJson(jsonDecode(cachedData));

            // ✅ Manually initialize results and units
            final materialResponseModel = MaterialResponseModel(
              results: MaterialResults(
                units: [],
                id: '',
                name: '',
                speciality: null,
                image: '',
                price: '',
                isAvailable: false,
                videoCount: 0,
                teachers: [],
              ),
            );

            // Filter valid units
            for (Unit element in localData.results?.units ?? []) {
              if (GlobalFunctions.cleanUnit(element)) {
                materialResponseModel.results!.units!.add(element);
              } else {
                print("${element.name} not added");
              }
            }
            emit(LeasonsState.success(materialResponseModel.results));
          } else {
            emit(const LeasonsState.error("you don't purchase this material"));
          }
        } catch (e) {
          print("error: $e");
          emit(LeasonsState.error(e.toString()));
        }
      }
    });
  }
}
