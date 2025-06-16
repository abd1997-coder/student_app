import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/core/database/database_functions.dart';
import 'package:student_app/features/profile/data/model/profile_model.dart';

class ProfileRepository {
  ProfileRepository(this._dioClient);

  final DioClient _dioClient;
  final DataBaseFunctions _localDataSource = DataBaseFunctions();

  Future<ProfileResults> getProfile() async {
    try {
      // Check internet connectivity
      final ConnectivityResult connectivityResult =
          await Connectivity().checkConnectivity();

      if (connectivityResult == ConnectivityResult.none) {
        // If offline, get data from local database
        final ProfileResults? localData =
            await _localDataSource.getProfileData();
        if (localData != null) {
          return localData;
        }
        throw Exception('No internet connection and no local data available');
      }

      // If online, fetch from API and store locally
      final Response<dynamic> response = await _dioClient.sendRequest(
        RequestType.get,
        EndPoint.profile,
      );

      final ProfileResults profileResponseModel = ProfileResults.fromJson(
        response.data as Map<String, dynamic>,
      );

      // Store the data locally
      await _localDataSource.storeProfileData(profileResponseModel);

      return profileResponseModel;
    } catch (e) {
      // If API call fails, try to get data from local database
      final ProfileResults? localData = await _localDataSource.getProfileData();
      if (localData != null) {
        return localData;
      }
      rethrow;
    }
  }
}
