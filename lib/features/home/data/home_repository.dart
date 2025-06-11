import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:student_app/core/database/database_helper.dart';
import 'package:student_app/features/home/data/model/home_model.dart';

import '../../../core/core.dart';

class HomeRepository {
  HomeRepository(this._dioClient);

  final DioClient _dioClient;
  final HomeLocalDataSource _localDataSource = HomeLocalDataSource();

  Future<HomeModel> getHomeData() async {
    try {
      // Check internet connectivity
      final ConnectivityResult connectivityResult =
          await Connectivity().checkConnectivity();

      if (connectivityResult == ConnectivityResult.none) {
        // If offline, get data from local database
        final HomeModel? localData = await _localDataSource.getHomeData();
        if (localData != null) {
          return localData;
        }
        throw Exception('No internet connection and no local data available');
      }

      // If online, fetch from API and store locally
      final Response<dynamic> response = await _dioClient.sendRequest(
        RequestType.get,
        EndPoint
            .home, // Make sure this endpoint is defined in your EndPoint class
      );

      final HomeModel homeModel = HomeModel.fromJson(
        response.data as Map<String, dynamic>,
      );

      // Store the data locally
      await _localDataSource.storeHomeData(homeModel);

      return homeModel;
    } catch (e) {
      // If API call fails, try to get data from local database
      final HomeModel? localData = await _localDataSource.getHomeData();
      if (localData != null) {
        return localData;
      }
      rethrow;
    }
  }
}
