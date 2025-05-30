import 'package:student_app/core/core.dart';
import 'package:student_app/features/home/data/model/home_model.dart';

class HomeRepository {
  HomeRepository(this._dioClient);

  final DioClient _dioClient;

  Future<HomeModel> getHome() async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.get,
      EndPoint.home,
    );
    final HomeModel homeSuccessResponseModel = HomeModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    return homeSuccessResponseModel;
  }
}
