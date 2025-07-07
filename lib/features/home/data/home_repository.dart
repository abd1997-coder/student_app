import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:student_app/core/database/database_functions.dart';
import 'package:student_app/features/home/data/model/home_model.dart';

import '../../../core/core.dart';

class HomeRepository {
  HomeRepository(this._dioClient);

  final DioClient _dioClient;

  Future<HomeModel> getHomeData() async {
    // Check internet connectivity
    final ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();

    if (connectivityResult == ConnectivityResult.none) {
      // If offline, get data from local database
      final HomeModel localData = HomeModel.fromJson(
        jsonDecode(PrefData.homeData),
      );
      if (localData.results.materials != null) {
        return localData;
      }
      throw Exception('No internet connection and no local data available');
    }

    // If online, fetch from API and store locally
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.get,
      EndPoint.home,
    );

    final HomeModel homeModel = HomeModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    // Store the data locally
    PrefData.homeData = jsonEncode(homeModel.toMap());
    for (var material in homeModel.results.materials!) {
      DataBaseFunctions().insertMaterialModel(material);
    }

    return homeModel;
  }

}
