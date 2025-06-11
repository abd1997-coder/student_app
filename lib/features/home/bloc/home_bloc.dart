import 'package:student_app/core/core.dart';
import 'package:student_app/features/home/data/model/home_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/home_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._homeRepository) : super(const _Initial()) {
    on<HomeEvent>((HomeEvent event, Emitter<HomeState> emit) async {
      await event.map(getHome: (_GetHome value) => getHome(event, emit));
    });
  }

  final HomeRepository _homeRepository;

  Future<void> getHome(HomeEvent event, Emitter<HomeState> emit) async {
    try {
      event as _$GetHomeImpl;
      emit(const HomeState.loadingHome());
      HomeModel homeModel = await _homeRepository.getHomeData();
      emit(HomeState.successHome(homeResults: homeModel.results));
    } catch (e) {
      emit(const HomeState.failedHome());
    }
  }
}
