import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/core/error/general_exception.dart';
import 'package:student_app/core/pruches/data/pruches_repository.dart';

part 'pruches_event.dart';
part 'pruches_state.dart';
part 'pruches_bloc.freezed.dart';

class PruchesBloc extends Bloc<PruchesEvent, PruchesState> {
  PruchesBloc(this._pruchesRepository) : super(_Initial()) {
    on<PruchesEvent>((PruchesEvent event, Emitter<PruchesState> emit) async {
      await event.map(
        buyMaterial: (_BuyObject value) => buyObject(event, emit),
      );
    });
  }

  final PruchesRepository _pruchesRepository;

  Future<void> buyObject(PruchesEvent event, Emitter<PruchesState> emit) async {
    try {
      event as _BuyObject;
      emit(const PruchesState.buyingLoading());

      await _pruchesRepository.buyObject(
        id: event.id,
        pruchesType: event.pruchesType,
      );
      emit(const PruchesState.buyingSucceed());
    } on GeneralException catch (e) {
      emit(PruchesState.buyingFailed(generalException: e));
    }
  }
}
